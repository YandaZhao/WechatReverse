// See http://iphonedevwiki.net/index.php/Logos

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

%hook MMTableViewInfo

- (long long)numberOfSectionsInTableView:(UITableView *)tableView {
    
    // 定位到NewSettingViewController
    if ([tableView.nextResponder.nextResponder isKindOfClass: %c(NewSettingViewController)]) {
        NSLog(@"NewSettingViewController: %lld", %orig);
        return %orig + 1;
    }
    
    
    return %orig;
}

- (long long)tableView:(UITableView *)tableView numberOfRowsInSection:(long long)section {
    
    // 定位到NewSettingViewController 的最后一section
    if ([tableView.nextResponder.nextResponder isKindOfClass: %c(NewSettingViewController)] && section == [self numberOfSectionsInTableView:tableView] - 1) {
        
        return 3;
    }
    
    
    return %orig;
}

- (id)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // 定位到NewSettingViewController 的最后一section
    if ([tableView.nextResponder.nextResponder isKindOfClass: %c(NewSettingViewController)] && indexPath.section == [self numberOfSectionsInTableView:tableView] - 1) {
        
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
    
    return %orig;
}

- (double)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if ([tableView.nextResponder.nextResponder isKindOfClass: %c(NewSettingViewController)] && indexPath.section == [self numberOfSectionsInTableView:tableView] - 1) {
        
        return 44;
    }
    return %orig;
}

%new
- (void)switchValueChanged:(UISwitch *)sender {
    
    
}

%end


#pragma Mark - 红包消息拦截

%hook CMessageMgr

- (void)onNewSyncAddMessage:(CMessageWrap *)arg1 {
    NSLog(@"消息来了\n%@", arg1);
    
    if (MSHookIvar<int>(arg1, "m_uiMessageType") == 49) {
        NSLog(@"红包来了\n%@", arg1);

    }
    
    %orig;
}

%end

#pragma Mark - 抢红包逻辑

%hook WCRedEnvelopesReceiveHomeView

- (void)OnOpenRedEnvelopes {
    
    %orig;
//    NSDictionary *dicBaseInfo = MSHookIvar<NSDictionary *>(self, "m_dicBaseInfo");
//
//    NSLog(@"OnOpenRedEnvelopes");
//    for(NSString *key in dicBaseInfo.allKeys)  {
//        NSLog(@"-- %@ : %@", key, dicBaseInfo[key]);
//    }
//
//
//    WCRedEnvelopesReceiveControlLogic *delegate = MSHookIvar<WCRedEnvelopesReceiveControlLogic *>(self, "m_delegate");
//
//    [delegate WCRedEnvelopesReceiveHomeViewOpenList];
//
}

%end


%hook WCRedEnvelopesReceiveControlLogic

- (void)WCRedEnvelopesReceiveHomeViewOpenRedEnvelopes {
    
    

    WCRedEnvelopesControlData *m_data = MSHookIvar<WCRedEnvelopesControlData *>(self, "m_data");
    CMessageWrap *m_oSelectedMessageWrap = [m_data m_oSelectedMessageWrap];
    
    WCPayInfoItem *m_oWCPayInfoItem = [m_oSelectedMessageWrap m_oWCPayInfoItem];


    NSString *m_c2cNativeUrl = [m_oWCPayInfoItem m_c2cNativeUrl];

    NSInteger length = [@"wxpay://c2cbizmessagehandler/hongbao/receivehongbao?" length];
//
    NSString *url = [m_c2cNativeUrl substringFromIndex: length];
//
//
    NSDictionary * componets = [%c(WCBizUtil) dictionaryWithDecodedComponets: url separator: @"&"];

    NSMutableDictionary *dictM = [NSMutableDictionary dictionary];

    dictM[@"msgType"] = @"1";


    dictM[@"sendId"] = componets[@"sendid"];



    dictM[@"channelId"] = componets[@"channelid"];


    MMServiceCenter *serviceCenter = [%c(MMServiceCenter) defaultCenter];

    CContactMgr *service = [serviceCenter getService:[%c(CContactMgr) class]];


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

//
    MMMsgLogicManager *msgLogicManager = [serviceCenter getService: [%c(MMMsgLogicManager) class]];
//
//
    WeixinContentLogicController *currentLogicController = [msgLogicManager GetCurrentLogicController];
//
//
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

    WCPayLogicMgr *payLogicService = [serviceCenter getService: [%c(WCPayLogicMgr) class]];


    [payLogicService setRealnameReportScene:1003];



    WCPayLogicMgr *payLogicService2 = [serviceCenter getService: [%c(WCPayLogicMgr) class]];

    NSDictionary *redEnvelopesBaseInfo = [m_data m_structDicRedEnvelopesBaseInfo];

    id agreeDuty = [redEnvelopesBaseInfo objectForKeyedSubscript: @"agree_duty"];

    [payLogicService2 checkHongbaoOpenLicense:agreeDuty acceptCallback:^() {

        MMServiceCenter *serviceCenter = [%c(MMServiceCenter) defaultCenter];

        WCRedEnvelopesLogicMgr *logic = [serviceCenter getService: [%c(WCRedEnvelopesLogicMgr) class]];

        [logic OpenRedEnvelopesRequest: dictM];

    } denyCallback: ^() {

    }];

}


%end


















