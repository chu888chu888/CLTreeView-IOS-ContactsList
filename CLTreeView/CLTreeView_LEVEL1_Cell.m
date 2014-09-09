//
//  CLTreeView_LEVEL1_Cell.m
//  CLTreeView
//
//  Created by 钟由 on 14-9-9.
//  Copyright (c) 2014年 flywarrior24@163.com. All rights reserved.
//

#import "CLTreeView_LEVEL1_Cell.h"

@implementation CLTreeView_LEVEL1_Cell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
//重新描绘cell
- (void)drawRect:(CGRect)rect
{
    int addX = _node.nodeLevel*25; //根据节点所在的层次计算平移距离
    CGRect imgFrame = _arrowView.frame;
    imgFrame.origin.x = 14 + addX;
    _arrowView.frame = imgFrame;
    
    CGRect nameFrame = _name.frame;
    nameFrame.origin.x = 40 + addX;
    _name.frame = nameFrame;
}

@end
