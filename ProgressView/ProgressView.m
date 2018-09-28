//
//  ProgressView.m
//  ProgressView
//
//  Created by chhu02 on 2018/9/28.
//  Copyright © 2018 chase. All rights reserved.
//

#import "ProgressView.h"

@implementation ProgressView

-(void)setProgressValue:(CGFloat)progressValue {
    _progressValue = progressValue;
    
    //重绘(系统自动帮你调用drawRect:)
    [self setNeedsDisplay];
    
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    // 方式一
    //    //画弧
    //    //1.获取上下文
    //    CGContextRef ctx = UIGraphicsGetCurrentContext();
    //
    //    CGContextSetLineWidth(ctx, 20);
    //    [[UIColor redColor] set];
    //
    //    //2.描述路径
    //    CGPoint center = CGPointMake(rect.size.width * 0.5, rect.size.height * 0.5);
    //    CGFloat radius = rect.size.width * 0.5 - 10;
    //    CGFloat startA = -M_PI_2;
    //    CGFloat angle =  self.progressValue *  M_PI * 2;
    //    CGFloat endA = startA + angle;
    //    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:startA endAngle:endA clockwise:YES];
    //    //3.把路径添加到上下文当中
    //    CGContextAddPath(ctx, path.CGPath);
    //    //4.把上下文的内容渲染到View的layer上.
    //    CGContextStrokePath(ctx);
    
    
    // 方式二
    //画弧
    
    CGPoint center = CGPointMake(rect.size.width * 0.5, rect.size.height * 0.5);
    CGFloat radius = rect.size.width * 0.5 - 10;
    CGFloat startA = -M_PI_2;
    CGFloat angle =  self.progressValue *  M_PI * 2;
    CGFloat endA = startA + angle;
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:startA endAngle:endA clockwise:YES];
    
    path.lineWidth = 20;
    [[UIColor redColor] set];
    [path stroke];
    
}


@end
