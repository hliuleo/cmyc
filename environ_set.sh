export PATH=$PATH:$cmyc/code

DATA=$cmyc'/data'
CodeHOME=$cmyc'/code'
SYS_SETUP=$cmyc'/system_prep/SYS'

TrjHOME=$cmyc'/data/traj/'
c36mTrj=$TrjHOME/'C36m'
rsff2Trj=$TrjHOME/'RSFF2'

StructHOME=$cmyc'/data/struct/'
c36mProt=$StructHOME/'prot_c36m.pdb'
rsff2Prot=$StructHOME/'prot_rsff2.pdb'

set_parms(){
if [ $condition == 'c36m' ]
then
TrjDIR=$c36mTrj
struct=$c36mProt
fi

if [ $condition == 'rsff2' ]
then
TrjDIR=$rsff2Trj
struct=$rsff2Prot
fi
}
