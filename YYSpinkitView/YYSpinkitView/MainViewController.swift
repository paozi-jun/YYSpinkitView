

import UIKit

class MainViewController: UIViewController {

    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }

    var scrollView:UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.scrollView = UIScrollView(frame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height))
        self.scrollView.pagingEnabled = true
        self.scrollView.alwaysBounceVertical = false
        self.scrollView.alwaysBounceHorizontal = true
        self.scrollView.backgroundColor = UIColor.darkGrayColor()
        self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width*5, self.view.frame.size.height)
        self.view.addSubview(self.scrollView)
        
        
        self.insertSpinner(YYSpinkitView(style:YYSpinKitViewStyle.Plane,color:UIColor.whiteColor()),
            atIndex:0,backgroundColor:UIColor(red:0.827,green:0.329,blue:0,alpha:1.0))
        
        self.insertSpinner(YYSpinkitView(style:YYSpinKitViewStyle.Bounce,color:UIColor.whiteColor()),
            atIndex:1,backgroundColor:UIColor(red:0.173,green:0.243,blue:0.314,alpha:1.0))
        
        self.insertSpinner(YYSpinkitView(style:YYSpinKitViewStyle.Wave,color:UIColor.whiteColor()),
            atIndex:2,backgroundColor:UIColor(red:0.102,green:0.737,blue:0.612,alpha:1.0))
        
        self.insertSpinner(YYSpinkitView(style:YYSpinKitViewStyle.WanderingCubes,color:UIColor.whiteColor()),
            atIndex:3,backgroundColor:UIColor(red:0.161,green:0.502,blue:0.725,alpha:1.0))
        
        self.insertSpinner(YYSpinkitView(style:YYSpinKitViewStyle.Pulse,color:UIColor.whiteColor()),
            atIndex:4,backgroundColor:UIColor(red:0.498,green:0.549,blue:0.553,alpha:1.0))
    }

    
    func insertSpinner(spinner:YYSpinkitView,atIndex index:Int,backgroundColor color:UIColor){
        var screenBounds = UIScreen.mainScreen().bounds
        var screenWidth = CGRectGetWidth(screenBounds)
        
        var panel = UIView(frame:CGRectOffset(screenBounds, screenWidth * Float(index), 0.0))
        panel.backgroundColor = color
        
        spinner.center = CGPointMake(CGRectGetMidX(screenBounds), CGRectGetMidY(screenBounds))
        panel.addSubview(spinner)
        scrollView.addSubview(panel)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
