//
//  ViewController.m
//  teste
//
//  Created by Rav Tecnologia on 06/04/17.
//  Copyright © 2017 Rav Tecnologia. All rights reserved.
//

#import "ViewController.h"
#import "BadgeButton.h"
#import "IconicButton.h"
#import "NSString+RavFont.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet BadgeButton *btn;
@property (weak, nonatomic) IBOutlet IconicButton *btnIconic;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [_btn setValorEtiqueta:@"2"];
    [_btn setTitle:[NSString fontAwesomeIconStringForEnum:FABellO] forState:UIControlStateNormal];
    [_btnIconic preencherBotao:@"Botão abrir modal com icone" icone:FAuserTimes];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
