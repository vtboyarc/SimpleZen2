//
//  ViewController.swift
//  SimpleZen
//
//  Created by Adam Carter on 3/16/17.
//  Copyright © 2017 Adam Carter. All rights reserved.
//

import UIKit
import GoogleMobileAds

let KEY_FAVORITE = "FAVORITEQUOTES"
let KEY_TITLE_FAVORITE = "Favorite"
let KEY_TITLE_FAVORITED = "Favorited"

class ViewController: UIViewController {
    
    // MARK:- IBOutlets
    @IBOutlet weak var menuButton:UIBarButtonItem!
    
    //    @IBOutlet var bannerView: GADBannerView!
    @objc var bannerView: GADBannerView!
    
    //var bannerView: GADBannerView!
    // Use this in debugging environment
    private var testADUnitID = "ca-app-pub-3940256099942544/2934735716"
    
    // Use this in live environment
    private var liveADUnitID = "ca-app-pub-5536113347846727/9763360529"
    
    //right click on label in IB and drag Reference Outlet
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var newQuoteButton: UIButton!
    
    @IBOutlet private weak var btnFavorite: UIButton!
    @IBOutlet private weak var btnShare: UIButton!
    @IBOutlet private weak var btnSave: UIButton!
    @IBOutlet private weak var btnPrevious: UIButton!
    @IBOutlet private weak var btnNext: UIButton!
    
    private var arrRandomQuotes = [String]()
    private var currentIndex = 0
    private var arrFavorites = [String]()
    
    //creating a constant to access the quotes in the QuoteProvider struct
    let quoteProvider = QuoteProvider()
    
    //ColorModel is the name of the struct
    let colorModel = ColorModel()
    
    // MARK:- View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        //        bannerView.adUnitID = "ca-app-pub-5536113347846727/9763360529"
        //        bannerView.rootViewController = self
        //        bannerView.load(GADRequest())
        
        //quotes is the name of the array in the QuoteProvider struct.
        
        arrRandomQuotes = quoteProvider.quotes.shuffled()
        setupUI()
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        self.revealViewController().rearViewRevealWidth = 3*self.view.frame.size.width/4;
        
        
        
        //quoteLabel.text = quoteProvider.randomQuote()
        
        initADBanner()
    }
    
    func adViewDidReceiveAd(_ bannerView: GADBannerView) {
        bannerView.alpha = 0
        UIView.animate(withDuration: 1, animations: {
            bannerView.alpha = 1
        })
    }
    
    
    func initADBanner() {
        bannerView = GADBannerView(adSize: kGADAdSizeSmartBannerPortrait)
       addBannerViewToView(bannerView)
        
        // change this to the liveADUnitID before building for app store!
        bannerView.adUnitID = liveADUnitID
        bannerView.rootViewController = self
        
        let theRequest = GADRequest()
        theRequest.testDevices = [kGADSimulatorID]
        bannerView.load(theRequest)
        
        //        bannerView.delegate = self as GADBannerViewDelegate
    }
    
    func addBannerViewToView(_ bannerView: GADBannerView) {
        bannerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bannerView)
        view.addConstraints(
            [NSLayoutConstraint(item: bannerView,
                                attribute: .bottom,
                                relatedBy: .equal,
                                toItem: bottomLayoutGuide,
                                attribute: .top,
                                multiplier: 1,
                                constant: 0)
            ])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK:- UI Methods
    private func setupUI() {
        btnPrevious.isEnabled = false
        currentIndex = 0
        arrFavorites = retrieveFavoritesArray()
        quoteLabel.text = arrRandomQuotes[currentIndex]
    }
    
    private func setTintColorForAllTheButtons() {
        let randomColor = colorModel.randomColor()
        
        view.backgroundColor  = randomColor
        btnFavorite.tintColor = randomColor
        btnShare.tintColor    = randomColor
        btnSave.tintColor     = randomColor
        btnPrevious.tintColor = randomColor
        btnNext.tintColor     = randomColor
    }
    
    private func setTheTextAndRandomColor() {
        quoteLabel.text = arrRandomQuotes[currentIndex]
        setTintColorForAllTheButtons()
        updateTheTextAsQuoteFavoriteStatus()
    }
    
    // MARK:- IBAction Methods
    //control + click and drag from button in IB and drop here, choose action
    @IBAction func newQuote() {
        quoteLabel.text = quoteProvider.randomQuote()
        let randomColor = colorModel.randomColor()
        view.backgroundColor = randomColor
        newQuoteButton.tintColor = randomColor
    }
    
    @IBAction private func onBtnFavorite(_ sender: Any) {
        if btnFavorite.titleLabel?.text == KEY_TITLE_FAVORITE {
            addAsFavorite()
        } else {
            removeAsFavorite()
        }
    }
    
    @IBAction private func onBtnShare(_ sender: Any) {
        shareQuoteImage()
    }
    
    @IBAction private func onBtnSave(_ sender: Any) {
        UIImageWriteToSavedPhotosAlbum(renderLabelAsImage(), self, #selector(image(_:didFinishSavingWithError:contextInfo:)), nil)
    }
    
    
    
    @IBAction private func onBtnPrevious(_ sender: Any) {
        currentIndex = (currentIndex - 1)
        
        btnNext.isEnabled = true
        
        if currentIndex < 0 {
            currentIndex = 0
            btnPrevious.isEnabled = false
        }
        
        setTheTextAndRandomColor()
    }
    
    @IBAction private func onBtnNext(_ sender: Any) {
        currentIndex = (currentIndex + 1)
        
        btnPrevious.isEnabled = true
        
        if currentIndex >= arrRandomQuotes.count {
            currentIndex = (arrRandomQuotes.count - 1)
            btnNext.isEnabled = false
        }
        
        setTheTextAndRandomColor()
    }
    
    // MARK:- Other Methods
    private func renderLabelAsImage() -> UIImage {
        let theLabel = UILabel(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height))
        theLabel.backgroundColor = self.view.backgroundColor
        theLabel.textAlignment   = .center
        theLabel.textColor       = UIColor.white
        theLabel.text            = quoteLabel.text
        theLabel.numberOfLines = 0
        
        UIGraphicsBeginImageContextWithOptions(theLabel.bounds.size, false, 0);
        //imgImage.layer.renderInContext(UIGraphicsGetCurrentContext()!)
        theLabel.layer.render(in: UIGraphicsGetCurrentContext()!)
        let imageWithLabel = UIGraphicsGetImageFromCurrentImageContext() // here is final image
        UIGraphicsEndImageContext()
        
        return imageWithLabel!
    }
    
    
    @objc func image(_ image: UIImage, didFinishSavingWithError error: NSError?, contextInfo: UnsafeRawPointer) {
        if let error = error {
            // we got back an error!
            let ac = UIAlertController(title: "Save error", message: error.localizedDescription, preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default))
            present(ac, animated: true)
        } else {
            let ac = UIAlertController(title: "Saved!", message: "The quote has been saved to your photos.", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default))
            present(ac, animated: true)
        }
    }
    
    private func shareQuoteText() {
        // text to share
        let text = quoteLabel.text
        
        // set up activity view controller
        let textToShare = [ text ]
        let activityViewController = UIActivityViewController(activityItems: ([textToShare as Any] ), applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view // so that iPads won't crash
        
        // exclude some activity types from the list (optional)
        activityViewController.excludedActivityTypes = [ UIActivityType.airDrop ]
        
        // present the view controller
        self.present(activityViewController, animated: true, completion: nil)
    }
    
    private func shareQuoteImage() {
        // image to share
        let image = self.renderLabelAsImage()
        
        // set up activity view controller
        let imageToShare = [ image ]
        let activityViewController = UIActivityViewController(activityItems: imageToShare, applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view // so that iPads won't crash
        
        // exclude some activity types from the list (optional)
        activityViewController.excludedActivityTypes = [ UIActivityType.airDrop ]
        
        // present the view controller
        self.present(activityViewController, animated: true, completion: nil)
    }
    
    private func addAsFavorite() {
        arrFavorites.append(quoteLabel.text ?? "")
        saveFavoritesArray()
        
        btnFavorite.setTitle(KEY_TITLE_FAVORITED, for: .normal)
    }
    
    private func removeAsFavorite() {
        let theIndex = arrFavorites.index(of: quoteLabel.text ?? "")
        
        if theIndex != nil {
            arrFavorites.remove(at: theIndex!)
            saveFavoritesArray()
        }
        
        btnFavorite.setTitle(KEY_TITLE_FAVORITE, for: .normal)
    }
    
    private func saveFavoritesArray() {
        UserDefaults.standard.set(arrFavorites, forKey: KEY_FAVORITE)
        UserDefaults.standard.synchronize()
    }
    
    private func retrieveFavoritesArray() -> [String] {
        let arrFavorites = UserDefaults.standard.value(forKey: KEY_FAVORITE)
        
        if ((arrFavorites as? [String]) != nil) {
            return arrFavorites as! [String]
        } else {
            return [String]()
        }
    }
    
    private func updateTheTextAsQuoteFavoriteStatus() {
        btnFavorite.setTitle(KEY_TITLE_FAVORITE, for: .normal)
        
        if arrFavorites.count > 0 {
            if arrFavorites.contains(quoteLabel.text ?? "") {
                btnFavorite.setTitle(KEY_TITLE_FAVORITED, for: .normal)
            }
        }
    }
}


//extension ViewController: GADBannerViewDelegate {
//    // Tells the delegate an ad request loaded an ad.
//    func adViewDidReceiveAd(_ bannerView: GADBannerView) {
//        print("adViewDidReceiveAd")
//    }
//
//    /// Tells the delegate an ad request failed.
//    func adView(_ bannerView: GADBannerView,
//                didFailToReceiveAdWithError error: GADRequestError) {
//        print("adView:didFailToReceiveAdWithError: \(error.localizedDescription)")
//    }
//
//    /// Tells the delegate that a full-screen view will be presented in response
//    /// to the user clicking on an ad.
//    func adViewWillPresentScreen(_ bannerView: GADBannerView) {
//        print("adViewWillPresentScreen")
//    }
//
//    /// Tells the delegate that the full-screen view will be dismissed.
//    func adViewWillDismissScreen(_ bannerView: GADBannerView) {
//        print("adViewWillDismissScreen")
//    }
//
//    /// Tells the delegate that the full-screen view has been dismissed.
//    func adViewDidDismissScreen(_ bannerView: GADBannerView) {
//        print("adViewDidDismissScreen")
//    }
//
//    /// Tells the delegate that a user click will open another app (such as
//    /// the App Store), backgrounding the current app.
//    func adViewWillLeaveApplication(_ bannerView: GADBannerView) {
//        print("adViewWillLeaveApplication")
//    }
//}

