%--------------------------------------------------------------------------
%                             蒙特卡洛方法
%--------------------------------------------------------------------------

%********************有趣的蒙提霍尔问题example4.14**************************
p = SheepAndCar([10,100,1000,10000,100000,1000000])  % 求选中汽车的概率的模拟值向量

%******************抽球问题的蒙特卡洛模拟example4.15*************************
[p0,p] = probmont(20,50,10)  % 模拟10次
[p0,p] = probmont(20,50,1000)  % 模拟1000次
[p0,p] = probmont(20,50,10000)  % 模拟10000次

%*******************用随机投点法求圆周率example4.16*************************
p = PiMonteCarlo([1000:5000:50000])'  % 返回圆周率pi的模拟值向量
PiMonteCarlo([100:50:20000])  % 绘制模拟值与投点个数的散点图

%*******************蒲丰（Buffon）投针问题example4.17***********************
% 求理论概率p0，模拟概率pm，圆周率的模拟值pival
[p0,pm,pival] = BuffonMonteCarlo(10,8,[10,100,1000,10000,100000,1000000])

%*******************用蒙特卡洛方法求定积分example4.18***********************
% 计算定积分的蒙特卡洛模拟值
[v0,vm] = quad1mont([10, 100, 1000,10000,100000, 1000000])

%*******************用蒙特卡洛方法求二重积分example4.19**********************
% 计算二重积分的蒙特卡洛模拟值
[V0,Vm] = quad2mont([10, 100, 1000,10000,100000, 1000000])

%*************************街头骗局揭秘example4.20****************************
[Em,E0] = GameMont1(100000)  % 模拟100000次

% 针对不同的模拟次数，调用arrayfun函数计算模拟值
arrayfun(@GameMont1,[10 100 1000 10000 100000])

% 针对不同的模拟次数，调用GameMont2函数计算模拟值
[E0,Em] = GameMont2([10, 100, 1000,10000,100000, 1000000])