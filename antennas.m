%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Project:      �Գ����ӷ��棨1��
% Author:       EdenHU, ���Ʋ� SC21023107
% Description:  ̽�����ڶԳ��������ߣ���l/�˱仯ʱ�����巽��ͼ�ı仯
%               ��Matlab R2019a ���п���
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
%���ñ���
theta = 0:0.01:pi;
phai  = 0:0.01:2*pi;
[Theta,Phai] = meshgrid(theta,phai);
%����l/�˵�ֵ
l_lamda = [0.125,0.25,0.4,0.5,0.6,0.75,0.8,1];

for num = 1:8
    %����ͼ
    F = (cos(2.*pi.*l_lamda(num).*cos(Theta))-cos(2.*pi.*l_lamda(num)))./sin(Theta);
    subplot(2,4,num);
    %��ͼ
    s = surf(F.*cos(Phai).*sin(Theta),F.*sin(Phai).*sin(Theta),F.*cos(Theta),abs(F));
    str = strcat('l/lamda =  ',num2str(l_lamda(num)));
    title(str);
    xlim([-2,2]);
    ylim([-2,2]);
    zlim([-2,2]);
    s.EdgeColor = 'none';
end
suptitle('�Գ��������߷���ͼ��l/�˵Ĺ�ϵ');
%  eoc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%