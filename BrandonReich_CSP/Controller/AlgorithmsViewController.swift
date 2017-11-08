//
//  AlgorithmsViewController.swift
//  BrandonReich_CSP
//
//  Created by Reich, Brandon on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class AlgorithmsViewController: UIViewController
{
    // MARK: Data members
    @IBOutlet weak var algorithmText: UILabel!
    
    private func setupAlgorithm() -> Void
    {
        var algorithmSteps : [String] = []
        
        //TODO: Deine alogorithm and all steps
        let algorithm :String = "These are the instructions to create a project in Java using Eclipse and GitHub \n"
        let stepOne :String = "First, open Eclipse IED and select your workspace."
        let stepTwo :String = "Second, Select File  New > Java Project on the menu bar, name the project, and click 'Finish'. Then create packages and Classes and enter the start methods into the Runner and Controller classes."
        let stepThree :String =  "Next, open GitHub Desktop."
        let stepFour :String = "Select File > New Repository on the menu bar"
        let stepFive :String = "Type in your Java Project name EXACTLY into the repository name and click 'Create Repository'."
        let stepSix :String = "Undo the intial commit and then select Repository > Repository Settings on the menu bar."
        let stepSeven: String = "Edit the Ignored Files and enter 'bin', '*.class', and '.DS_Store' then click 'Save'. "
        let stepEight :String = "Commit what you just did and click 'Commit to Master'."
        let stepNine :String = "Click 'Publish Repository' and make sure the 'Keep this code private' check box is UNchecked."
        let stepTen :String = "Click 'Publish Repository'."
        
        algorithmSteps = [stepOne, stepTwo, stepThree, stepFour, stepFive, stepSix, stepSeven, stepEight, stepNine, stepTen]
        
        let attributesDictionary = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: algorithm, attributes: attributesDictionary)
        
        for step in algorithmSteps
        {
            let bullet :String = "🃏"
            let formattedStep :String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string : formattedStep)
            let paragraphStyle = createParagraphStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : paragraphStyle], range:
                NSMakeRange (0, attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        
        algorithmText.attributedText = fullAttributedString
    }
    
    private func createParagraphStyle() -> NSParagraphStyle
    {
        let paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        paragraphStyle.defaultTabInterval = 15
        paragraphStyle.firstLineHeadIndent = 20
        paragraphStyle.headIndent = 35
        
        return paragraphStyle
    }
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setupAlgorithm()

        // Do any additional setup after loading the view.
    }

    override public func didReceiveMemoryWarning()
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
