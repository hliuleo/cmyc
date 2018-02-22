export PATH=$PATH:$cmyc/code

DATA=$cmyc'/data'
CodeHOME=$cmyc'/code'
SYS_SETUP=$cmyc'/system_prep/SYS'

TrjHOME=$cmyc'/data/traj/'
c36mProtTrj=$TrjHOME/'prot/c36m'
rsff2ProtTrj=$TrjHOME/'prot/RSFF2'
c36mYCTrj=$TrjHOME/'prot_YC1205/c36m'
rsff2YCTrj=$TrjHOME/'prot_YC1205/RSFF2'


StructHOME=$cmyc'/data/struct/'
c36mProt=$StructHOME/'prot_c36m.pdb'
rsff2Prot=$StructHOME/'prot_rsff2.pdb'
c36mProtYC=$StructHOME/'prot_c36m_YC1205.pdb'
rsff2ProtYC=$StructHOME/'prot_rsff2_YC1205.pdb'




set_parms(){

if [ $condition == 'c36mProt' ]
then
TrjDIR=$c36mProtTrj
struct=$c36mProt
fi

if [ $condition == 'rsff2Prot' ]
then
TrjDIR=$rsff2ProtTrj
struct=$rsff2Prot
fi

if [ $condition == 'c36mYC' ]
then
TrjDIR=$c36mYCTrj
struct=$c36mProtYC
fi

if [ $condition == 'rsff2YC' ]
then
TrjDIR=$rsff2YCTrj
struct=$rsff2ProtYC
fi


}
