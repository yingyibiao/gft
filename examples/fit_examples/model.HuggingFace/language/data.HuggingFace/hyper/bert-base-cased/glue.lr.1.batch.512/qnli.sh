#!/bin/sh

echo hostname = `hostname`
. $params

gft_fit --model H:$model \
    --data H:glue,qnli \
    --metric H:glue,qnli \
    --output_dir $1 \
    --eqn 'classify: label ~ question + sentence' \
    --learning_rate $lr \
    --per_device_eval_batch_size $bs \
    --num_train_epochs 10
