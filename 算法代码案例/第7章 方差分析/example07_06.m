%--------------------------------------------------------------------------
%               调用kruskalwallis函数作单因素非参数方差分析
%--------------------------------------------------------------------------

% 第1种配料方案的灯泡的寿命
A1 = [1600, 1610, 1650, 1680, 1700, 1720, 1800]';
g1 = repmat({'A1'},size(A1));  % 定义配料方案的第1种水平
% 第2种配料方案的灯泡的寿命
A2 = [1580, 1640, 1600, 1650, 1660]';
g2 = repmat({'A2'},size(A2));  % 定义配料方案的第2种水平
% 第3种配料方案的灯泡的寿命
A3 = [1460, 1550, 1600, 1620, 1640, 1610, 1540, 1620]';
g3 = repmat({'A3'},size(A3));  % 定义配料方案的第3种水平
% 第4种配料方案的灯泡的寿命
A4 = [1510, 1520, 1530, 1570, 1600, 1680]';
g4 = repmat({'A4'},size(A4));  % 定义配料方案的第4种水平
% 将4种配料方案的灯泡寿命放在一起构成一个向量
life = [A1;A2;A3;A4];
% 将配料方案的4种水平放在一起构成一个长的元胞数组
group = [g1;g2;g3;g4];
% 调用kruskalwallis函数作Kruskal-Wallis检验
[p,table,stats] = kruskalwallis(life,group)

% 调用anova1函数作单因素一元方差分析
[p,table] = anova1(life,group)

% 将第1种配料方案的灯泡寿命数据的最后一个值由1800改为2800
A1 = [1600, 1610, 1650, 1680, 1700, 1720, 2800]';
% 将4种配料方案的灯泡寿命放在一起构成一个向量
life = [A1;A2;A3;A4];
% 调用kruskalwallis函数作Kruskal-Wallis检验
[p,table] = kruskalwallis(life,group)

% 调用anova1函数作单因素一元方差分析
[p,table] = anova1(life,group)

% 调用multcompare对不同配料方案下灯泡的寿命进行多重比较
[c,m,h,gnames] = multcompare(stats);
c  % 查看多重比较的结果矩阵c
[gnames,num2cell(m)]  % 把m矩阵转为元胞数组，与gnames放在一起显示
