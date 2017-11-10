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
    @IBOutlet weak var NeedToAddress: UILabel!
    @IBOutlet weak var DataPlan: UILabel!
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
        DataPlan.text = ""
    }
    
    private func fillNeedToAddressLabel() -> Void
    {
        NeedToAddress.text = ""
    }
    
    private func fillPersonalConnectionLabel() -> Void
    {
        PersonalConnection.text = ""
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
