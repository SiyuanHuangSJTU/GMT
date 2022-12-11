read -p "Gpu:" gpu
echo "Input seed:"
read -a array
for i in ${array[@]}
do
    python main.py  --type classification_TU \
                    --data PROTEINS \
                    --model GMT \
                    --model-string GMPool_G-SelfAtt-GMPool_I \
                    --gpu ${gpu} \
                    --seed ${i} \
                    --experiment-number ${i} \
                    --batch-size 128 \
                    --num-hidden 128 \
                    --num-heads 2 \
                    --lr-schedule \
                    --cluster \
                    --rerun_under_asap_setting

done 
