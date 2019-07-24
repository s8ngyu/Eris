//헤더 부분
@interface SBHUDView : UIView
@end

UIView *volumeBox;

//SBHUDView 클래스 후킹
%hook SBHUDView
-(void)layoutSubviews {
    self.frame = [[UIScreen mainScreen] bounds];
    self.alpha = 1.0f;
    self.backgroundColor = [UIColor clearColor];
    self.layer.cornerRadius = 0;
    self.userInteractionEnabled = YES;

    //Volume Box
	volumeBox = [[UIView alloc] initWithFrame:CGRectMake(20, 40, 70, 150)];
	volumeBox.backgroundColor = [UIColor blackColor];
	volumeBox.userInteractionEnabled = YES;
	volumeBox.alpha = 0.94f;
	[self addSubview:volumeBox];
}

-(void)addSubview:(id)view {
    if (view == volumeBox) {
        %orig;
    }
    /*
    해당 메소드에 아무런 동작을 하지 않음으로
    SBHUDView클래스에서 addSubview를 하더라도
    subview가 추가되지 않음.
    */
}

-(void)insertSubview:(id)subview atIndex:(int)num {
    /*
    해당 메소드에 아무런 동작을 하지 않음으로
    SBHUDView클래스에서 insertSubview 하더라도
    subview가 추가되지 않음.
    */
}
%end