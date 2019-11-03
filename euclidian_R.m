%membaca data project yang akan ditentukan green atau red
A=xlsread('cluster_data.xls','A2:N265');
%membaca data nilai centroid cluster green and red
C=xlsread('centroid1_R.xls','B2:O3');
%membaca ukuran data
[baris, kolom]=size(A);
%proses menghitung euclidian distance setiap baris data dengan nilai
%centroid cluster 1 dan 2
for i=1:baris
   red=sqrt(((C(1,2)-A(i,2))^2)+((C(1,3)-A(i,3))^2)+((C(1,4)-A(i,4))^2)+((C(1,5)-A(i,5))^2)+((C(1,6)-A(i,6))^2)+((C(1,7)-A(i,7))^2)+((C(1,8)-A(i,8))^2)+((C(1,9)-A(i,9))^2)+((C(1,10)-A(i,10))^2)+((C(1,11)-A(i,11))^2)+((C(1,12)-A(i,12))^2)+((C(1,13)-A(i,13))^2));
   green=sqrt(((C(2,2)-A(i,2))^2)+((C(2,3)-A(i,3))^2)+((C(2,4)-A(i,4))^2)+((C(2,5)-A(i,5))^2)+((C(2,6)-A(i,6))^2)+((C(2,7)-A(i,7))^2)+((C(2,8)-A(i,8))^2)+((C(2,9)-A(i,9))^2)+((C(2,10)-A(i,10))^2)+((C(2,11)-A(i,11))^2)+((C(2,12)-A(i,12))^2)+((C(2,13)-A(i,13))^2));
   if(red>green)
     H(i)="Green";
        else
     H(i)="Red";
   end
end
H=H';
xlswrite('Hasil.xls',H);