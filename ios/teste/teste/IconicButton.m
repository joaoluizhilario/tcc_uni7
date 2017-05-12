//
//  IconicButton.m
//  teste
//
//  Created by Rav Tecnologia on 06/04/17.
//  Copyright © 2017 Rav Tecnologia. All rights reserved.
//

#import "IconicButton.h"
#import <UIKit/UIKit.h>
#import "NSString+RavFont.h"

@interface IconicButton ()

@property UILabel* Icone;
@property UILabel* Descricao;
@property double tamanho;
@property NSLayoutConstraint* leading;
@property NSLayoutConstraint* trailing;
@property NSLayoutConstraint* centerY;

@end

@implementation IconicButton

-(void)awakeFromNib
{
    [super awakeFromNib];
    self.Icone = self.titleLabel;
    self.Descricao = [[UILabel alloc]init];
    self.Descricao.translatesAutoresizingMaskIntoConstraints = false;
    
    self.leading = [NSLayoutConstraint constraintWithItem:self.Descricao attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.titleLabel attribute:NSLayoutAttributeLeading multiplier:1 constant:30];
    
    [self addConstraint:self.leading];
    self.centerY = [NSLayoutConstraint constraintWithItem:self.Descricao attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.titleLabel attribute:NSLayoutAttributeCenterY multiplier:1 constant:0];
    
    [self addConstraint:self.centerY];
    self.trailing = [NSLayoutConstraint constraintWithItem:self.Descricao attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTrailing multiplier:0.98f constant:0];
    
    [self addConstraint:self.trailing];
    [self.Descricao setContentHuggingPriority:UILayoutPriorityDefaultLow forAxis:UILayoutConstraintAxisHorizontal];
    [self.Descricao setContentCompressionResistancePriority:UILayoutPriorityDefaultLow forAxis:UILayoutConstraintAxisHorizontal];
    
    self.Descricao.textColor = [UIColor whiteColor];
    self.tamanho = [UIScreen mainScreen].bounds.size.width/25;
    
    self.Descricao.font = [UIFont boldSystemFontOfSize:self.tamanho];
    self.Descricao.lineBreakMode = NSLineBreakByWordWrapping;
    self.Descricao.numberOfLines = 2;
    [self.viewForLastBaselineLayout addSubview:self.Descricao];
    self.layer.cornerRadius = 5.0f;
    [self.viewForLastBaselineLayout layoutIfNeeded];
}

-(void)preencherBotao:(NSString*)texto icone:(NSInteger)icone
{
    self.Descricao.text = texto;
    [self setTitle:[NSString fontAwesomeIconStringForEnum:icone] forState:UIControlStateNormal];
}

@end
