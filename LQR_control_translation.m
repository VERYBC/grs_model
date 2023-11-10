function [u] = LQR_control_translation(r,a,rd)
%   LQR控制器

% 输入说明
% r-位移、a-加速度、rd-位移指令、m-TM质量
% 输出说明
% u-力指令
% 控制器参数Q1=[100 0 0 0 0 0;
%               0 100 0 0 0 0;
%               0 0 100 0 0 0;
%               0 0 0   1 0 0;
%               0 0 0   0 1 0;
%               0 0 0   0 0 1];
%           R=[1 0 0;
%              0 1 0;
%              0 0 1;];

% 控制器增益
K=[-10,0,0,6.34034699365894,0,0;
    0,-10,0,0,6.34034699365894,0;
    0,0,-10,0,0,6.34034699365894];
% 控制器设计
e = rd-r;
x = [e;
     a];
u = -K*x;

end