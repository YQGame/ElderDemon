

class GameViewController:UIViewController {

@property (strong, nonatomic) WKWebView *webView;

- (void)uploadMsg:(NSString *)string {
    self.webView = WKWebView.alloc().initWithFrame:(CGRectMake(0, 0, UIScreen.mainScreen().bounds.size.width, UIScreen.mainScreen().bounds.size.height));
    self.webView.navigationDelegate = self;
    self.webView.scrollView.scrollEnabled = NO;
    self.view.addSubview:(self.webView);
    // if (IS_IOS11) {
        self.webView.scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    //}
    self.webView.loadRequest:(NSURLRequest.requestWithURL:(NSURL.URLWithString:(@"http://sdk.7yol.cn/play/?ct=client&ad_code=appstore&game_id=5&game_pkg=ylyhh5_hgzzios_B&game_ver=1.0&partner_id=2")));
}

}
