//
//  ViewController.m
//  mihoutao
//
//  Created by qp on 2021/3/15.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
self.view.isFlipped
    // Do any additional setup after loading the view.
    self.textField = [[NSTextField alloc] initWithFrame:NSMakeRect(0, 0, 100, 44)];
    self.textField.placeholderString = @"搜索";
    self.textField.delegate = self;
    [self.textField setTarget:self];
    [self.textField setAction:@selector(doSearch:)];
    [self.view addSubview:self.textField];
    
    //设置文本框背景颜色
        _textField.backgroundColor = [NSColor greenColor];
        //设置是否绘制背景
        _textField.drawsBackground = YES;
        //设置文字颜色
        _textField.textColor = [NSColor blueColor];
        //设置是否显示边框
        _textField.bordered = NO;
        //设置是否绘制贝塞尔风格的边框
        _textField.bezeled = YES;
        //设置是否可以编辑
        _textField.editable = YES;
        //设置文本框是否可以选中
        _textField.selectable = YES;
        //设置贝塞尔风格
        _textField.bezelStyle = NSTextFieldSquareBezel;
        //设置倾向布局宽度
        _textField.preferredMaxLayoutWidth = 100;
        //设置最大行数
        _textField.maximumNumberOfLines = 5;
}

- (void)doSearch:(NSTextField *)textField {
    NSLog(@"%@", textField.stringValue);
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
