%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Project:      对称振子仿真（1）
% Author:       EdenHU, 胡云博 SC21023107
% Description:  探究对于对称振子天线，当l/λ变化时，立体方向图的变化
%               在Matlab R2019a 运行可行
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
%设置变量
theta = 0:0.01:pi;
phai  = 0:0.01:2*pi;
[Theta,Phai] = meshgrid(theta,phai);
%设置l/λ的值
l_lamda = [0.125,0.25,0.4,0.5,0.6,0.75,0.8,1];

for num = 1:8
    %方向图
    F = (cos(2.*pi.*l_lamda(num).*cos(Theta))-cos(2.*pi.*l_lamda(num)))./sin(Theta);
    subplot(2,4,num);
    %绘图
    s = surf(F.*cos(Phai).*sin(Theta),F.*sin(Phai).*sin(Theta),F.*cos(Theta),abs(F));
    str = strcat('l/lamda =  ',num2str(l_lamda(num)));
    title(str);
    xlim([-2,2]);
    ylim([-2,2]);
    zlim([-2,2]);
    s.EdgeColor = 'none';
end
suptitle('对称振子天线方向图和l/λ的关系');
%  eoc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%