

class GameViewController:UIViewController {

@property (strong, nonatomic) WKWebView *webView;

- (void)uploadMsg:(NSString *)string {
    self.webView = WKWebView.alloc().init();//WithFrame:(CGRectMake(0, 0, UIScreen.mainScreen().bounds.size.width, UIScreen.mainScreen().bounds.size.height));
    self.webView.navigationDelegate = self;
    self.webView.scrollView.scrollEnabled = NO;
    self.view.addSubview:(self.webView);
    self.webView.mas_makeConstraints:(^(MASConstraintMaker *make) {
        make.edges.equalTo()(self.view);
    });
    if ($systemVersion.doubleValue() >= 11.0) {
        self.webView.scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    }
    self.webView.loadRequest:(NSURLRequest.requestWithURL:(NSURL.URLWithString:(@"http://sdk.7yol.cn/play/?ct=client&ad_code=appstore&game_id=19&game_pkg=brcqh5_ltlyios_A&game_ver=1.0&partner_id=2")));
}

}
