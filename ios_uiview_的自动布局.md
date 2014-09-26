#ios UIView 的自动布局
### 随着iOS8 的发布对于autlayout也增加了一个新的功能，叫sizeClass，对于iOS设备适配我们可以用三种方法来解决###
#### 
1. 我们用代码判断根据不同的设备尺寸，对于ui进行手工调整，这样代码写的过于臃肿，不利于维护。
2. 我们还可以通过uiview的autoresizeing 属性在 xib 和storyboard 中预设置。
3. 就是使用sizeClass据说这个是所有方法的里面最好的一个 ，刚推出不久不会用，
####
###以上的只是对静态uiview父子关系，对于动态的就不适合，下面主要来说动态添加 subview 根据subviews内容来改变自己frame的大小。###

### 首先我们了解uiview 的几个方法  layoutSubviews ，###
####
* init初始化不会触发layoutSubviews。
*  addSubview会触发layoutSubviews。
* 设置view的Frame会触发layoutSubviews，当然前提是frame的值设置前后发生了变化。
* 滚动一个UIScrollView会触发layoutSubviews。
* 旋转Screen会触发父UIView上的layoutSubviews事件。





@interface MySizeFit : UIView

@property (strong,nonatomic) UILabel * label2  ;

@property (strong,nonatomic) UILabel * label1  ;

@property (strong,nonatomic) UILabel * label3  ;

-(void)mySubViewTOfit ;

@end


@implementation MySizeFit

// 在init的时候 把subviews 加入 其中

-(id)initWithFrame:(CGRect)frame
{

    self = [super initWithFrame:frame] ;
    if (self) {
        CGFloat x =10 , y  = 10 ;
        _label1 = [[ UILabel alloc]initWithFrame:CGRectMake(x, y,  200, 30)];
        _label1.numberOfLines = 0;
        y += 40 ;
        _label2 = [[ UILabel alloc]initWithFrame:CGRectMake(x , y,  200, 30)];
        _label2.numberOfLines = 0;
        y += 40 ;
        _label3 = [[ UILabel alloc]initWithFrame:CGRectMake(x, y,  200, 30)];
        _label3.numberOfLines = 0;
        [self addSubview:_label1];
        [self addSubview:_label2];
        [self addSubview:_label3];
        NSLog(@"initWithFrame-------initWithFrame");


    }
    return  self  ;
}

//每次添加一个subview 都会调用一次方法

- (void)layoutSubviews
{

    NSLog(@"layoutSubviews-------layoutSubviews");
    
    [self mySubViewTOfit];

}

// 根据不同的subview 的大小 重新排列

-(void)mySubViewTOfit
{

    CGFloat y = 10;
    for ( UIView * view in  [self subviews]) {
        CGRect frame = view.frame ;
        CGFloat height = frame.size.height ;
        frame.origin.y = y ;
        [view setFrame:frame];
        y += height  + 10;
    }
    y += 10 ;
    [self setFrame:CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, y)];

}

