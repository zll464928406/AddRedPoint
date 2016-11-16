# AddRedPoint



>**简介**

- 在视图中添加一个显示提示信息条数的红色圆点
- 能够控制小红点的大小、位置和显示的数量

>**如何添加**

- 1、首先需要把分类文件拖入项目中
    - UIView+RedPoint的.h和.m文件
- 2、在需要添加小红点的视图中导入头文件
    - #import "UIView+RedPoint.h"
- 3、在需要天机小红点的UIView的子类中调用下面方法即可

    ```
    //Num为需要显示的条数，frame为小红点显示在视图的位置
    [self.view addRedPointWithNum:12 frame:CGRectMake(100, 100, 20, 20)];
    ```


