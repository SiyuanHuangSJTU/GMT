read -p "Gpu:" gpu
echo "Input seed:"
read -a array
for i in ${array[@]}
do
    python main.py  --type classification_TU \
                    --data DD \
                    --model GMT \
                    --model-string GMPool_G-SelfAtt-GMPool_I \
                    --gpu ${gpu} \
                    --seed ${i} \
                    --experiment-number ${i} \
                    --batch-size 10 \
                    --num-hidden 32 \
                    --num-heads 4 \
                    --lr-schedule \
                    --cluster \
                    --rerun_under_asap_setting

done 
