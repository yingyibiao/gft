#!/bin/sh

echo hostname = `hostname`
. $params

gft_fit --model P:$model \
    --data P:glue,qnli \
    --metric H:glue,qnli \
    --output_dir $1 \
    --eqn 'classify: labels ~ sentence1 + sentence2' \
    --learning_rate $lr \
    --per_device_eval_batch_size $bs \
    --num_train_epochs 10

