# Grid search over hyperparameters for experiments with new inhibition schemes.

num_train=30000
reduced_dataset="False"
inhib_scheme="strengthen"
conv_features=625

for random_seed in 1 2 3
do
	for strengthen_const in 0.0 0.01 0.1 0.15 0.25 0.5
	do
		sbatch csnn_pc_growing_inhibition_job.sh none 28 0 $conv_features 4 10 $num_train $reduced_dataset 1000 8 $inhib_scheme $inhib_const $strengthen_const False 0.0 $random_seed
	done
done

exit
