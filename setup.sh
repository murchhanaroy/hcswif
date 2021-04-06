#!/usr/bin/bash

# -----------------------------------------------------------------------------
#  Change these if this if not where hallc_replay and hcana live
export hcana_dir=/u/group/c-polhe3/software/opt/hallac_container_1.8
export hcana_setup=/u/group/c-polhe3/software
export hallc_replay_dir=/group/c-polhe3/Users/$USER/hallc_replay
# -----------------------------------------------------------------------------
#  Change if this gives you the wrong version of root, evio, etc
source /site/12gev_phys/softenv.sh 2.1
source /group/c-polhe3/software/setup.sh
# -----------------------------------------------------------------------------
# Source setup scripts
curdir=`pwd`
cd $hcana_setup
source setup.sh
export PATH=$hcana_dir/bin:$PATH
echo Sourced $hcana_setup/setup.sh

#cd $hallc_replay_dir
#source setup.sh
#echo Sourced $hallc_replay_dir/setup.sh

echo cd back to $curdir
cd $curdir
