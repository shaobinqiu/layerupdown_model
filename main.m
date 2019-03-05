clear
poscar=import_poscar('CONTCAR');
%%%%%%%%%%%extend cell
pos=poscar.coords(1:poscar.atomcount(1, 1)+poscar.atomcount(2, 1)/5, :);%position of Si and first Ag
pos_extend=[];
for ii=-1:1
    for jj=-1:1
        pos_extend=[pos_extend; pos+repmat([ii , jj, 0], size(pos,1), 1)];
    end
end
pos_extend=pos_extend*poscar.lattice;
%%%%%%%%%%% ergodic
up_atom=zeros(2^poscar.atomcount(1,1),poscar.atomcount(1,1));
 e=num2str(dec2bin(0:2^poscar.atomcount(1,1)-1));
 %%%%%%%%%
 for ii=1:size(e,1)
     for jj=1:size(e,2)
         up_atom(ii,jj)= str2num(e(ii,jj));
     end
 end
 
