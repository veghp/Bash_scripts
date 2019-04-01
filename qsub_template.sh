#!/bin/bash
#$ -cwd
#$ -V
#$ -pe smp 10
#$ -l h_vmem=10G


## Any line starting with '#$' is interpreted by qsub as an options flag:
## -cwd    execute the job from the current working directory
## -V      declares that all environment variables in the qsub commands environment are to be exported to the batch job
## -pe     parallel programming environment (PE) to instantiate: smp = parallel threads
## -l h_vmem=10G    launch the job in a Sun Grid Engine queue meeting the given resource request list: h_vmem = memory
##
## qsub -cwd -V -pe smp 5 -l h_vmem=10G name_of_file
