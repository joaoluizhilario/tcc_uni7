//
//  BadgeButton.m
//  teste
//
//  Created by Rav Tecnologia on 06/04/17.
//  Copyright © 2017 Rav Tecnologia. All rights reserved.
//

#import "BadgeButton.h"

@interface BadgeButton ()

@property (strong, nonatomic) UILabel *etiqueta;

@end

@implementation BadgeButton

- (void)awakeFromNib
{
    [super awakeFromNib];
    // Drawing code
    int size = 20; // tamanho do badge
    _etiqueta = [[UILabel alloc] initWithFrame:CGRectMake(self.frame.size.width-(size), -size, size, size)];
    _etiqueta.textColor = [UIColor whiteColor];
    _etiqueta.font = [UIFont fontWithName:@"Avenir-Heavy" size:16];
    _etiqueta.textAlignment = NSTextAlignmentCenter;
    _etiqueta.layer.masksToBounds = YES;
    _etiqueta.layer.cornerRadius = size/2;
    _etiqueta.backgroundColor = [UIColor redColor];
    _etiqueta.hidden = YES;
    [self.viewForLastBaselineLayout addSubview:_etiqueta];
}

- (void)setValorEtiqueta:(NSString *)valorEtiqueta
{
    if ([valorEtiqueta isEqualToString:@""] || [valorEtiqueta isEqualToString:@"0"] || valorEtiqueta == nil) {
        _etiqueta.hidden = YES;
        _etiqueta.text = @"0";
    } else {
        _etiqueta.hidden = NO;
        _etiqueta.text = valorEtiqueta;
    }
}

@end
