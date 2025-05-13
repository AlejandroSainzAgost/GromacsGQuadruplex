gmx grompp -f md_0.mdp -c npt.gro -r npt.gro -p topol.top -o topol.tpr -maxwarn 10

gmx_mpi grompp -f 1/md_1.mdp -c npt.gro -r npt.gro -p topol.top -o 1/topol.tpr -maxwarn 10
gmx_mpi grompp -f 2/md_2.mdp -c npt.gro -r npt.gro -p topol.top -o 2/topol.tpr -maxwarn 10
gmx_mpi grompp -f 3/md_3.mdp -c npt.gro -r npt.gro -p topol.top -o 3/topol.tpr -maxwarn 10
gmx_mpi grompp -f 4/md_4.mdp -c npt.gro -r npt.gro -p topol.top -o 4/topol.tpr -maxwarn 10
gmx_mpi grompp -f 5/md_5.mdp -c npt.gro -r npt.gro -p topol.top -o 5/topol.tpr -maxwarn 10
gmx_mpi grompp -f 6/md_6.mdp -c npt.gro -r npt.gro -p topol.top -o 6/topol.tpr -maxwarn 10
gmx_mpi grompp -f 7/md_7.mdp -c npt.gro -r npt.gro -p topol.top -o 7/topol.tpr -maxwarn 10
gmx_mpi grompp -f 0/md_0.mdp -c npt.gro -r npt.gro -p topol.top -o 0/topol.tpr -maxwarn 10

mpirun -np 8 gmx_mpi mdrun -multidir 0 1 2 3 4 5 6 7 -replex 100000000