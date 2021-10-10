%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Project:      ȫ���Գ��������з���
% Author:       EdenHU, ���Ʋ� SC21023107
% Description:  ̽��ȫ���Գ��������еķ���ͼ
%               
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
array_column = 20;
array_raw = 20; 
%���ñ���
theta = 0:0.01:pi;
phai  = 0:0.01:2*pi;
[Theta,Phai] = meshgrid(theta,phai);
F = 0;
%���ü��ֵ��lamda�ı�ֵ
dc = 0.25;
dr = 0.25;
F_b = ( cos(2.*pi.*0.5.*cos(Theta)) - cos(2.*pi.*0.5) )./sin(Theta);
%����  ��������λ�仯
beta  = -2*pi/100*1;
%����ˮƽ������λ�仯
alpha = -2*pi/10*0;

%����
for i1 = 1:array_column
    for i2 = 1:array_raw
        del1ta_z = (i1-1)*dc; 
        delta_y = (i2-1)*dr;
        F = F + F_b .* exp(1i.*2.*pi.* ( delta_y.*sin(Theta).*sin(Phai) + delta_z.*cos(Theta) ) + 1i.* beta*(i1-1) + 1i.*alpha*(i2-1));
    end
end
F = real(F);
% subplot(4,4,1);
% subplot(1,2,1);
s = surf(F.*cos(Phai).*sin(Theta),F.*sin(Phai).*sin(Theta),F.*cos(Theta),abs(F));
xlabel('x');
ylabel('y');
zlabel('z');
colorbar();
Fm = max(abs(F),[],'all');
xlim([-Fm,Fm]);
ylim([-Fm,Fm]);
zlim([-Fm,Fm]);
s.EdgeColor = 'none';
% subplot(1,2,2);
% eoc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%