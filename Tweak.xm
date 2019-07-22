//헤더 부분
@interface SBHUDView : UIView
@end


//SBHUDView 클래스 후킹
%hook SBHUDView
-(void)addSubview:(id)view {
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