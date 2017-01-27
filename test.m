disp('testing')
load ('featureout.mat');
p=featureout;


net.inputs{1}.processFcns = {'removeconstantrows','mapminmax'};
load net.mat;
load net;

y5=sim(net,p);

disp(y5);
[C I]=max(y5);
disp(I)
disp(C)
 
  
fid = fopen('output.txt','a');

  
if (I==1)
    fwrite(fid, unicode2native(char(hex2dec('0D85')),'UTF-8'));
fclose(fid);
elseif (I==2)
    fwrite(fid, unicode2native(char(hex2dec('0DB6')),'UTF-8'));
fclose(fid);     
elseif (I==3)
    fwrite(fid, unicode2native(char(hex2dec('0DB0')),'UTF-8'));
fclose(fid);     
elseif (I==4)
    fwrite(fid, unicode2native(char(hex2dec('0DAF')),'UTF-8'));
fclose(fid);     
elseif (I==5)
    fwrite(fid, unicode2native(char(hex2dec('0D91')),'UTF-8'));
fclose(fid);     
elseif (I==6)
    fwrite(fid, unicode2native(char(hex2dec('0DC6')),'UTF-8'));
fclose(fid);     
elseif (I==7)
    fwrite(fid, unicode2native(char(hex2dec('0D9C')),'UTF-8'));
fclose(fid);     
elseif (I==8)
    fwrite(fid, unicode2native(char(hex2dec('0DC4')),'UTF-8'));
fclose(fid);     
elseif (I==9)
    fwrite(fid, unicode2native(char(hex2dec('0D89')),'UTF-8'));
fclose(fid);     
elseif (I==10)
    fwrite(fid, unicode2native(char(hex2dec('0DA2')),'UTF-8'));
fclose(fid);     
elseif (I==11)
   fwrite(fid, unicode2native(char(hex2dec('0DC5')),'UTF-8'));
fclose(fid);     
elseif (I==12)
    fwrite(fid, unicode2native(char(hex2dec('0DBD')),'UTF-8'));
fclose(fid);     
elseif (I==13)
    fwrite(fid, unicode2native(char(hex2dec('0DB8')),'UTF-8'));
fclose(fid);     
elseif (I==14)
    fwrite(fid, unicode2native(char(hex2dec('0DC2')),'UTF-8'));
fclose(fid);     
elseif (I==15)
    fprintf(fid,'O');
fclose(fid);     
elseif (I==16)
     fwrite(fid, unicode2native(char(hex2dec('0DB4')),'UTF-8'));
fclose(fid);     
elseif (I==17)
    fwrite(fid, unicode2native(char(hex2dec('0DA7')),'UTF-8'));
fclose(fid);     
elseif (I==18)
    fwrite(fid, unicode2native(char(hex2dec('0DBB')),'UTF-8'));
fclose(fid);     
elseif (I==19)
    fwrite(fid, unicode2native(char(hex2dec('0DC3')),'UTF-8'));
fclose(fid);     
elseif (I==20)
    fwrite(fid, unicode2native(char(hex2dec('0DAD')),'UTF-8'));
fclose(fid);     
elseif (I==21)
    fwrite(fid, unicode2native(char(hex2dec('0D8B')),'UTF-8'));
fclose(fid);     
elseif (I==22)
     fwrite(fid, unicode2native(char(hex2dec('0DC0')),'UTF-8'));
fclose(fid);     
elseif (I==23)
   fwrite(fid, unicode2native(char(hex2dec('0DD9')),'UTF-8'));
fclose(fid);     
elseif (I==24)
    fwrite(fid, unicode2native(char(hex2dec('0D9A')),'UTF-8'));
fclose(fid);
elseif (I==25)
    fwrite(fid, unicode2native(char(hex2dec('0DBA')),'UTF-8'));
fclose(fid);     
elseif (I==26)
    fwrite(fid, unicode2native(char(hex2dec('0DAB')),'UTF-8'));
fclose(fid); 
elseif (I==27)
    fwrite(fid, unicode2native(char(hex2dec('0D9D')),'UTF-8'));
fclose(fid); 
elseif (I==28)
    fwrite(fid, unicode2native(char(hex2dec('0DB7')),'UTF-8'));
fclose(fid); 
elseif (I==29)
    fprintf(fid,'3');
fclose(fid); 
elseif (I==30)
    fprintf(fid,'4');
fclose(fid); 
elseif (I==31)
    fprintf(fid,'5');
fclose(fid); 
elseif (I==32)
   fwrite(fid, unicode2native(char(hex2dec('0DB1')),'UTF-8'));
fclose(fid); 
elseif (I==33)
    fwrite(fid, unicode2native(char(hex2dec('0DC1')),'UTF-8'));
fclose(fid); 
elseif (I==34)
    fwrite(fid, unicode2native(char(hex2dec('0DA9')),'UTF-8'));
fclose(fid); 
% elseif (I==27)
%     fprintf(fid,'A');
% fclose(fid); 
 else
     disp(' not Found');
     
   clear
end
 
 
 