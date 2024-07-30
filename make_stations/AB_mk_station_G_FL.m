clear all

dx=60.0/3600.0; % 60 times 
id_count=0;
icount=0;

% FL PM and BR
x1=-81.50;
x2=-79.50;
y1=25.00;
y2=31.00;

x=[x1:dx:x2];  % 
y=[y1:dx:y2];  %


id_count=id_count+1;
% east
for j=1:length(y)
icount=icount+1;
sta(icount,1)=y(j);
sta(icount,2)=x(end);
sta(icount,3)=id_count;
end

id_count=id_count+1;
% west
for j=1:length(y)
icount=icount+1;
sta(icount,1)=y(j);
sta(icount,2)=x(1);
sta(icount,3)=id_count;
end

id_count=id_count+1;
% south
for i=1:length(x)
icount=icount+1;
sta(icount,1)=y(1);
sta(icount,2)=x(i);
sta(icount,3)=id_count;
end

id_count=id_count+1;
% north
for i=1:length(x)
icount=icount+1;
sta(icount,1)=y(end);
sta(icount,2)=x(i);
sta(icount,3)=id_count;
end

disp(['icount= ' num2str(icount) '?=' num2str(2*length(x)+2*length(y))]);

figure(1)
clf
plot(sta(:,2),sta(:,1));
txt=['x-dir: ' num2str(length(x)) ' y-dir: ' num2str(length(y)), ' total: ', num2str(2*length(x)+2*length(y))];
title(txt)

print('-djpeg100','plots/NestFL_VO.jpg')

icount_last=icount;


fid = fopen('station_G_to_FL.txt', 'wt');
  fprintf(fid, ['%f %f %d', '\n'], sta');
fclose(fid);





