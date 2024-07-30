clear all

dx=6.0/3600.0; % 60 times 
id_count=0;
icount=0;

% FL BR
x1=-80.90;
x2=-80.35;
y1=27.75;
y2=29.00;

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

print('-djpeg100','plots/NestBC_FL_BR.jpg')

icount_last=icount;

clear x y
% PM  -------

x1=-80.20;
x2=-80.00;
y1=26.25;
y2=27.00; % 

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

disp(['icount= ' num2str(icount-icount_last) '?=' num2str(2*length(x)+2*length(y))]);
disp(['total= ' num2str(icount)]);

figure(2)
clf
plot(sta(icount_last+1:icount,2),sta(icount_last+1:icount,1));
txt=['x-dir: ' num2str(length(x)) ' y-dir: ' num2str(length(y)), ' total for block1+block2: ', num2str(icount)];
title(txt)

print('-djpeg100','plots/NestBC_FL_PM.jpg')

fid = fopen('station_FL_BR_PM.txt', 'wt');
  fprintf(fid, ['%f %f %d', '\n'], sta');
fclose(fid);





