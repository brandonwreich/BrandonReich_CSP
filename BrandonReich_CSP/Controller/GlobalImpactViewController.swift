//
//  GlobalImpactViewController.swift
//  BrandonReich_CSP
//
//  Created by Reich, Brandon on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class GlobalImpactViewController: UIViewController
{
    private var imageCounter : Int = 0
    
    @IBOutlet weak var UIImagePlans: UIImageView!
    @IBOutlet weak var PersonalConnection: UILabel!
    @IBOutlet weak var DataPlan: UILabel!
    @IBOutlet weak var NeedToAddress: UILabel!
    @IBOutlet weak var pictureButton: UIButton!

    @IBAction func changePicture(_ sender: UIButton)
    {
        switchImage()
        
    }
    
    private func placeImage() -> Void
    {
        UIImagePlans.image = UIImage(named: "Plans")
    }
    
    private func switchImage() -> Void
    {
        if (imageCounter > 1)
        {
            imageCounter = 0
        }
        
        if (imageCounter == 0)
        {
            UIImagePlans.image = UIImage(named: "Survey")
        }
        else
        {
            UIImagePlans.image = UIImage(named: "Plans")
        }
        
        imageCounter+=1
    }
    
    private func fillDataPlanLabel() -> Void
    {
        NeedToAddress.text = "AIDS is a huge problem in today’s society. In 2015, it was reported that 36.7 million people are infected, 1.1 million people suffered AIDS related deaths, and in the past 15 years there have been 8 million AIDS related deaths. There was 2.1 million new infections from 2014 to 2015."
    }
    
    private func fillNeedToAddressLabel() -> Void
    {
        DataPlan.text = "This app will allow doctors to prioritize the patients based off of their need of help. The app will allow the doctors to learn more information about their patients. It will allow local organizations to more effectively distribute Regional antiretroviral therapy and other types of therapy. It will collect data through a survey the patient takes and then the doctor can access that during the check up."
    }
    
    private func fillPersonalConnectionLabel() -> Void
    {
        PersonalConnection.text = "This is important to me, because it is a growing problem and could potentially grow so big that I will begin to affect the ones I love and care about. The more we work against AIDS, the better protection we give to our family and friends."
    }
    
    
   public override func viewDidLoad()
    {
        super.viewDidLoad()
        placeImage()
        fillDataPlanLabel()
        fillNeedToAddressLabel()
        fillPersonalConnectionLabel()
        
        
        // Do any additional setup after loading the view.
    }

   public override func didReceiveMemoryWarning()
    {
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

}
