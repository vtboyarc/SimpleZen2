//
//  FavouriteController.swift
//  SimpleZen
//
//  Created by Agstya Technologies on 12/01/18.
//  Copyright © 2018 Adam Carter. All rights reserved.
//

import UIKit
import GoogleMobileAds

class FavouriteController: UIViewController {
    
    
    var bannerView: GADBannerView!
    
    //var bannerView: GADBannerView!
    // Use this in debugging environment
    private var testADUnitID = "ca-app-pub-3940256099942544/2934735716"
    
    // Use this in live environment
    private var liveADUnitID = "ca-app-pub-5536113347846727/9763360529"
    
    // MARK:- IBOutlets
    @IBOutlet weak var menuButton:UIBarButtonItem!
    
    @IBOutlet private weak var btnUnfavorite: UIButton!
    @IBOutlet private weak var btnPrevious: UIButton!
    @IBOutlet private weak var btnNext: UIButton!
    @IBOutlet private weak var lblQuotes: UILabel!
    
    // MARK:- Variables | Properties
    private var currentIndex = 0
    private var arrFavorites = [String]()
    
    //ColorModel is the name of the struct
    let colorModel = ColorModel()
    
    // MARK:- View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupUI()
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK:- UI Methods
    private func setupUI() {
        currentIndex = 0
        btnPrevious.isEnabled = false
        arrFavorites = retrieveFavoritesArray()
        
        if arrFavorites.count > 0 {
            btnPrevious.isHidden = false
            btnNext.isHidden     = false
            btnUnfavorite.isHidden = false
        }
        
        setTheTextAndRandomColor()
    }
    
    private func setTheTextAndRandomColor() {
        if arrFavorites.count == 0 {
            btnPrevious.isHidden = true
            btnNext.isHidden     = true
            btnUnfavorite.isHidden = true
            lblQuotes.text = "No Favorites Found"
        } else {
            lblQuotes.text = arrFavorites[currentIndex]
            setTintColorForAllTheButtons()
        }
    }
    
    private func setTintColorForAllTheButtons() {
        let randomColor = colorModel.randomColor()
        
        view.backgroundColor    = randomColor
        btnUnfavorite.tintColor = randomColor
        btnPrevious.tintColor   = randomColor
        btnNext.tintColor     = randomColor
    }
    
    // MARK:- IBAction Methods
    @IBAction private func onBtnUnfavorite(_ sender: Any) {
        removeAsFavorite()
        onBtnPrevious("")
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
        
        if currentIndex >= arrFavorites.count {
            currentIndex = (arrFavorites.count - 1)
            btnNext.isEnabled = false
        }
        
        setTheTextAndRandomColor()
    }
    
    // MARK:- Other Methods
    private func removeAsFavorite() {
        let theIndex = arrFavorites.index(of: lblQuotes.text ?? "")
        
        if theIndex != nil {
            arrFavorites.remove(at: theIndex!)
            saveFavoritesArray()
        }
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
}
