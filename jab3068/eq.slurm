#!/bin/bash
#SBATCH -J equilibrate
#SBATCH -N 1
#SBATCH --ntasks-per-node=64
#SBATCH --cpus-per-task=1
#SBATCH -p gpu_count

module purge
module load compiler/intel/2017.5.239
module load mpi/hpcx/2.4.1/intel-2017.5.239 
module load apps/NAMD/2.13/hpcx-2.4.1-intel2017

mpirun `which namd2` cmps_wb_eq.conf > equilibrate.log
