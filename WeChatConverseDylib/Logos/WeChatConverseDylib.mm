#line 1 "/Users/yanda/Desktop/MyDemo/逆向/WechatReverse/WeChatConverseDylib/Logos/WeChatConverseDylib.xm"


#import <UIKit/UIKit.h>
#import "LogosHeader.h"
#import <objc/message.h>

#pragma Mark - 设置界面注入

@interface MMTableViewInfo
{
    UITableView *_tableView;
}

- (long long)tableView:(UITableView *)tableView numberOfRowsInSection:(long long)section;

- (long long)numberOfSectionsInTableView:(UITableView *)tableView;

- (void)switchValueChanged:(UISwitch *)sender;
@end


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class WCPayLogicMgr; @class MMServiceCenter; @class WCRedEnvelopesLogicMgr; @class MMMsgLogicManager; @class WCRedEnvelopesReceiveHomeView; @class NewSettingViewController; @class WCBizUtil; @class CMessageMgr; @class CContactMgr; @class MMTableViewInfo; @class WCRedEnvelopesReceiveControlLogic; 
static long long (*_logos_orig$_ungrouped$MMTableViewInfo$numberOfSectionsInTableView$)(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, UITableView *); static long long _logos_method$_ungrouped$MMTableViewInfo$numberOfSectionsInTableView$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, UITableView *); static long long (*_logos_orig$_ungrouped$MMTableViewInfo$tableView$numberOfRowsInSection$)(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, UITableView *, long long); static long long _logos_method$_ungrouped$MMTableViewInfo$tableView$numberOfRowsInSection$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, UITableView *, long long); static id (*_logos_orig$_ungrouped$MMTableViewInfo$tableView$cellForRowAtIndexPath$)(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static id _logos_method$_ungrouped$MMTableViewInfo$tableView$cellForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static double (*_logos_orig$_ungrouped$MMTableViewInfo$tableView$heightForRowAtIndexPath$)(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static double _logos_method$_ungrouped$MMTableViewInfo$tableView$heightForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static void _logos_method$_ungrouped$MMTableViewInfo$switchValueChanged$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, UISwitch *); static void (*_logos_orig$_ungrouped$CMessageMgr$onNewSyncAddMessage$)(_LOGOS_SELF_TYPE_NORMAL CMessageMgr* _LOGOS_SELF_CONST, SEL, CMessageWrap *); static void _logos_method$_ungrouped$CMessageMgr$onNewSyncAddMessage$(_LOGOS_SELF_TYPE_NORMAL CMessageMgr* _LOGOS_SELF_CONST, SEL, CMessageWrap *); static void (*_logos_orig$_ungrouped$WCRedEnvelopesReceiveHomeView$OnOpenRedEnvelopes)(_LOGOS_SELF_TYPE_NORMAL WCRedEnvelopesReceiveHomeView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$WCRedEnvelopesReceiveHomeView$OnOpenRedEnvelopes(_LOGOS_SELF_TYPE_NORMAL WCRedEnvelopesReceiveHomeView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$WCRedEnvelopesReceiveControlLogic$WCRedEnvelopesReceiveHomeViewOpenRedEnvelopes)(_LOGOS_SELF_TYPE_NORMAL WCRedEnvelopesReceiveControlLogic* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$WCRedEnvelopesReceiveControlLogic$WCRedEnvelopesReceiveHomeViewOpenRedEnvelopes(_LOGOS_SELF_TYPE_NORMAL WCRedEnvelopesReceiveControlLogic* _LOGOS_SELF_CONST, SEL); 
static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$WCPayLogicMgr(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("WCPayLogicMgr"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$NewSettingViewController(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("NewSettingViewController"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$WCRedEnvelopesLogicMgr(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("WCRedEnvelopesLogicMgr"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$MMServiceCenter(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("MMServiceCenter"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$WCBizUtil(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("WCBizUtil"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$CContactMgr(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("CContactMgr"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$MMMsgLogicManager(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("MMMsgLogicManager"); } return _klass; }
#line 21 "/Users/yanda/Desktop/MyDemo/逆向/WechatReverse/WeChatConverseDylib/Logos/WeChatConverseDylib.xm"


static long long _logos_method$_ungrouped$MMTableViewInfo$numberOfSectionsInTableView$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView) {
    
    
    if ([tableView.nextResponder.nextResponder isKindOfClass: _logos_static_class_lookup$NewSettingViewController()]) {
        NSLog(@"NewSettingViewController: %lld", _logos_orig$_ungrouped$MMTableViewInfo$numberOfSectionsInTableView$(self, _cmd, tableView));
        return _logos_orig$_ungrouped$MMTableViewInfo$numberOfSectionsInTableView$(self, _cmd, tableView) + 1;
    }
    
    
    return _logos_orig$_ungrouped$MMTableViewInfo$numberOfSectionsInTableView$(self, _cmd, tableView);
}

static long long _logos_method$_ungrouped$MMTableViewInfo$tableView$numberOfRowsInSection$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, long long section) {
    
    
    if ([tableView.nextResponder.nextResponder isKindOfClass: _logos_static_class_lookup$NewSettingViewController()] && section == [self numberOfSectionsInTableView:tableView] - 1) {
        
        return 3;
    }
    
    
    return _logos_orig$_ungrouped$MMTableViewInfo$tableView$numberOfRowsInSection$(self, _cmd, tableView, section);
}

static id _logos_method$_ungrouped$MMTableViewInfo$tableView$cellForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSIndexPath * indexPath) {
    
    
    if ([tableView.nextResponder.nextResponder isKindOfClass: _logos_static_class_lookup$NewSettingViewController()] && indexPath.section == [self numberOfSectionsInTableView:tableView] - 1) {
        
        UITableViewCell *cell = [[UITableViewCell alloc] init];
        cell.backgroundColor = [UIColor whiteColor];
        
        switch (indexPath.row) {
            case 0: {
                
                UISwitch *swi = [[UISwitch alloc] init];
                [swi addTarget:self action:@selector(switchValueChanged:) forControlEvents:(UIControlEventValueChanged)];
                cell.textLabel.text = @"开启自动抢红包";
                cell.accessoryView = swi;
                
                break;
                
            }
            case 1: {
                
                UISwitch *swi = [[UISwitch alloc] init];
                [swi addTarget:self action:@selector(switchValueChanged:) forControlEvents:(UIControlEventValueChanged)];
                cell.textLabel.text = @"随机延迟";
                cell.accessoryView = swi;
                
                break;
            }
            case 2: {
                UITextField *tf = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 200, 30)];
                tf.borderStyle = UITextBorderStyleRoundedRect;
                tf.placeholder = @"请输入延迟时间(毫秒)";
                cell.textLabel.text = @"抢红包延迟";
                cell.accessoryView = tf;
                break;
            }
                
            default:
                break;
        }
        
        return cell;
    }
    
    return _logos_orig$_ungrouped$MMTableViewInfo$tableView$cellForRowAtIndexPath$(self, _cmd, tableView, indexPath);
}

static double _logos_method$_ungrouped$MMTableViewInfo$tableView$heightForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSIndexPath * indexPath) {
    if ([tableView.nextResponder.nextResponder isKindOfClass: _logos_static_class_lookup$NewSettingViewController()] && indexPath.section == [self numberOfSectionsInTableView:tableView] - 1) {
        
        return 44;
    }
    return _logos_orig$_ungrouped$MMTableViewInfo$tableView$heightForRowAtIndexPath$(self, _cmd, tableView, indexPath);
}


static void _logos_method$_ungrouped$MMTableViewInfo$switchValueChanged$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UISwitch * sender) {
    
    
}




#pragma Mark - 红包消息拦截



static void _logos_method$_ungrouped$CMessageMgr$onNewSyncAddMessage$(_LOGOS_SELF_TYPE_NORMAL CMessageMgr* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, CMessageWrap * arg1) {
    NSLog(@"消息来了\n%@", arg1);
    
    if (MSHookIvar<int>(arg1, "m_uiMessageType") == 49) {
        NSLog(@"红包来了\n%@", arg1);

    }
    
    _logos_orig$_ungrouped$CMessageMgr$onNewSyncAddMessage$(self, _cmd, arg1);
}



#pragma Mark - 抢红包逻辑



static void _logos_method$_ungrouped$WCRedEnvelopesReceiveHomeView$OnOpenRedEnvelopes(_LOGOS_SELF_TYPE_NORMAL WCRedEnvelopesReceiveHomeView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    _logos_orig$_ungrouped$WCRedEnvelopesReceiveHomeView$OnOpenRedEnvelopes(self, _cmd);












}






static void _logos_method$_ungrouped$WCRedEnvelopesReceiveControlLogic$WCRedEnvelopesReceiveHomeViewOpenRedEnvelopes(_LOGOS_SELF_TYPE_NORMAL WCRedEnvelopesReceiveControlLogic* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    

    WCRedEnvelopesControlData *m_data = MSHookIvar<WCRedEnvelopesControlData *>(self, "m_data");
    CMessageWrap *m_oSelectedMessageWrap = [m_data m_oSelectedMessageWrap];
    
    WCPayInfoItem *m_oWCPayInfoItem = [m_oSelectedMessageWrap m_oWCPayInfoItem];


    NSString *m_c2cNativeUrl = [m_oWCPayInfoItem m_c2cNativeUrl];

    NSInteger length = [@"wxpay://c2cbizmessagehandler/hongbao/receivehongbao?" length];

    NSString *url = [m_c2cNativeUrl substringFromIndex: length];


    NSDictionary * componets = [_logos_static_class_lookup$WCBizUtil() dictionaryWithDecodedComponets: url separator: @"&"];

    NSMutableDictionary *dictM = [NSMutableDictionary dictionary];

    dictM[@"msgType"] = @"1";


    dictM[@"sendId"] = componets[@"sendid"];



    dictM[@"channelId"] = componets[@"channelid"];


    MMServiceCenter *serviceCenter = [_logos_static_class_lookup$MMServiceCenter() defaultCenter];

    CContactMgr *service = [serviceCenter getService:[_logos_static_class_lookup$CContactMgr() class]];


    CContact *contact = [service getSelfContact];

    NSString *displayName = [contact getContactDisplayName];

    dictM[@"nickName"] = displayName;


    NSString *headImgUrl = [contact m_nsHeadImgUrl];

    dictM[@"headImg"] = headImgUrl;

    CMessageWrap *selectedMessageWrap = [m_data m_oSelectedMessageWrap];



    if (selectedMessageWrap) {



        CMessageWrap *selectedMessageWrap = [m_data m_oSelectedMessageWrap];


        WCPayInfoItem *m_oWCPayInfoItem = [selectedMessageWrap m_oWCPayInfoItem];

        NSString *m_c2cNativeUrl = [m_oWCPayInfoItem m_c2cNativeUrl];



        dictM[@"nativeUrl"] = m_c2cNativeUrl;

    }


    MMMsgLogicManager *msgLogicManager = [serviceCenter getService: [_logos_static_class_lookup$MMMsgLogicManager() class]];


    WeixinContentLogicController *currentLogicController = [msgLogicManager GetCurrentLogicController];


    if (currentLogicController ) {



        CBaseContact *m_contact = [currentLogicController m_contact];

        if (m_contact) {


            NSString *m_nsUsrName = [m_contact m_nsUsrName];

            if (m_nsUsrName) {


                dictM[@"sessionUserName"] = m_nsUsrName;

            }
        }
    }

    NSDictionary *m_structDicRedEnvelopesBaseInfo = [m_data m_structDicRedEnvelopesBaseInfo];

    NSString *timingIdentifier = m_structDicRedEnvelopesBaseInfo[@"timingIdentifier"];


    if (timingIdentifier.length)
    {


        dictM[@"timingIdentifier"] = timingIdentifier;
    }

    WCPayLogicMgr *payLogicService = [serviceCenter getService: [_logos_static_class_lookup$WCPayLogicMgr() class]];


    [payLogicService setRealnameReportScene:1003];



    WCPayLogicMgr *payLogicService2 = [serviceCenter getService: [_logos_static_class_lookup$WCPayLogicMgr() class]];

    NSDictionary *redEnvelopesBaseInfo = [m_data m_structDicRedEnvelopesBaseInfo];

    id agreeDuty = [redEnvelopesBaseInfo objectForKeyedSubscript: @"agree_duty"];

    [payLogicService2 checkHongbaoOpenLicense:agreeDuty acceptCallback:^() {

        MMServiceCenter *serviceCenter = [_logos_static_class_lookup$MMServiceCenter() defaultCenter];

        WCRedEnvelopesLogicMgr *logic = [serviceCenter getService: [_logos_static_class_lookup$WCRedEnvelopesLogicMgr() class]];

        [logic OpenRedEnvelopesRequest: dictM];

    } denyCallback: ^() {

    }];

}





















static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$MMTableViewInfo = objc_getClass("MMTableViewInfo"); MSHookMessageEx(_logos_class$_ungrouped$MMTableViewInfo, @selector(numberOfSectionsInTableView:), (IMP)&_logos_method$_ungrouped$MMTableViewInfo$numberOfSectionsInTableView$, (IMP*)&_logos_orig$_ungrouped$MMTableViewInfo$numberOfSectionsInTableView$);MSHookMessageEx(_logos_class$_ungrouped$MMTableViewInfo, @selector(tableView:numberOfRowsInSection:), (IMP)&_logos_method$_ungrouped$MMTableViewInfo$tableView$numberOfRowsInSection$, (IMP*)&_logos_orig$_ungrouped$MMTableViewInfo$tableView$numberOfRowsInSection$);MSHookMessageEx(_logos_class$_ungrouped$MMTableViewInfo, @selector(tableView:cellForRowAtIndexPath:), (IMP)&_logos_method$_ungrouped$MMTableViewInfo$tableView$cellForRowAtIndexPath$, (IMP*)&_logos_orig$_ungrouped$MMTableViewInfo$tableView$cellForRowAtIndexPath$);MSHookMessageEx(_logos_class$_ungrouped$MMTableViewInfo, @selector(tableView:heightForRowAtIndexPath:), (IMP)&_logos_method$_ungrouped$MMTableViewInfo$tableView$heightForRowAtIndexPath$, (IMP*)&_logos_orig$_ungrouped$MMTableViewInfo$tableView$heightForRowAtIndexPath$);{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UISwitch *), strlen(@encode(UISwitch *))); i += strlen(@encode(UISwitch *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$MMTableViewInfo, @selector(switchValueChanged:), (IMP)&_logos_method$_ungrouped$MMTableViewInfo$switchValueChanged$, _typeEncoding); }Class _logos_class$_ungrouped$CMessageMgr = objc_getClass("CMessageMgr"); MSHookMessageEx(_logos_class$_ungrouped$CMessageMgr, @selector(onNewSyncAddMessage:), (IMP)&_logos_method$_ungrouped$CMessageMgr$onNewSyncAddMessage$, (IMP*)&_logos_orig$_ungrouped$CMessageMgr$onNewSyncAddMessage$);Class _logos_class$_ungrouped$WCRedEnvelopesReceiveHomeView = objc_getClass("WCRedEnvelopesReceiveHomeView"); MSHookMessageEx(_logos_class$_ungrouped$WCRedEnvelopesReceiveHomeView, @selector(OnOpenRedEnvelopes), (IMP)&_logos_method$_ungrouped$WCRedEnvelopesReceiveHomeView$OnOpenRedEnvelopes, (IMP*)&_logos_orig$_ungrouped$WCRedEnvelopesReceiveHomeView$OnOpenRedEnvelopes);Class _logos_class$_ungrouped$WCRedEnvelopesReceiveControlLogic = objc_getClass("WCRedEnvelopesReceiveControlLogic"); MSHookMessageEx(_logos_class$_ungrouped$WCRedEnvelopesReceiveControlLogic, @selector(WCRedEnvelopesReceiveHomeViewOpenRedEnvelopes), (IMP)&_logos_method$_ungrouped$WCRedEnvelopesReceiveControlLogic$WCRedEnvelopesReceiveHomeViewOpenRedEnvelopes, (IMP*)&_logos_orig$_ungrouped$WCRedEnvelopesReceiveControlLogic$WCRedEnvelopesReceiveHomeViewOpenRedEnvelopes);} }
#line 308 "/Users/yanda/Desktop/MyDemo/逆向/WechatReverse/WeChatConverseDylib/Logos/WeChatConverseDylib.xm"
