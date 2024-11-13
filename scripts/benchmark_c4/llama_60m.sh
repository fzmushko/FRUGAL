

torchrun --standalone --nproc_per_node 1 torchrun_main.py \
    --model_config configs/llama_60m.json \
    --save_dir_prefix 60m \
    --optimizer frugal \
    --dtype fp32 \
    --amp \
    --total_batch_size 512 \
    --batch_size 256 \
    --scheduler cosine \
    --scheduler_cycle_length 10000 \
    --weight_decay 0.00 \
    --lr 0.001 \
    --proj_params_lr_scale 1.0 \
    --update_gap 200 \
    --density 0.25 \
    --reset_statistics \
    --inactive_update_rule sign_sgd \
    --inactive_lr_scale 1.0 \
    --block_order descending \
    --seed 0 \
    --eps 1e-8 \
    --beta1 0.9 \
    --beta2 0.999 \
    --eval_batch_size 256 \
    --warmup_steps 1000 \
    --eval_every 2000 \
    --save_every 1000 \
    --num_training_steps 200000 \
    --single_gpu \
