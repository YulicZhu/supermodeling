%--------------------------------------------------------------------------
%                         创建一个日历控件
%--------------------------------------------------------------------------

% 新建一个图形窗口，指定图形窗口大小，返回图形窗口句柄f
f = figure('position', [360  278  535  410]); 
% 在新建的图形窗口中创建一个日历控件，并设置控件的大小
cal = actxcontrol('mscal.calendar', [0 0 535 410], f); 


