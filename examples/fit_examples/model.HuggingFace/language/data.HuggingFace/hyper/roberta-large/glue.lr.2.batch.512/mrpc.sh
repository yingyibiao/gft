#!/bin/sh

echo hostname = `hostname`
. $params

gft_fit --model H:$model \
    --data H:glue,mrpc \
    --metric H:glue,mrpc \
    --output_dir $1 \
    --eqn 'classify: label ~ sentence1 + sentence2' \
    --learning_rate $lr \
    --per_device_eval_batch_size $bs \
    --num_train_epochs 10

