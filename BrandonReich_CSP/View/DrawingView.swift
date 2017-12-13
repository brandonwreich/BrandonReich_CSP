//
//  DrawingView.swift
//  BrandonReich_CSP
//
//  Created by Reich, Brandon on 12/5/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class DrawingView: UIView
{
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    
    override func draw(_ rect: CGRect)
    {
        // Drawing code
        //        drawStickFigure().stroke()
        //        drawTurtle()
        //        drawHappyTree()
        drawSnowMan()
    }
    
    private func drawStickFigure() -> UIBezierPath
    {
        let stickFigure = UIBezierPath()
        
        UIColor.green.setStroke()
        stickFigure.lineWidth = 3.0
        
        stickFigure.addArc(withCenter: CGPoint(x: 200, y: 200),
                           radius:CGFloat(20),
                           startAngle: CGFloat(0),
                           endAngle: CGFloat(2) * CGFloat.pi,
                           clockwise: true)
        stickFigure.move(to: CGPoint(x: 200, y: 220))
        stickFigure.addLine(to:CGPoint(x: 200, y: 270))
        stickFigure.move(to: CGPoint( x: 180, y: 240))
        stickFigure.addLine(to: CGPoint(x: 220, y: 240))
        stickFigure.move(to: CGPoint(x: 200, y: 270))
        stickFigure.addLine(to: CGPoint(x: 180, y: 300))
        stickFigure.move(to: CGPoint (x: 200, y: 270))
        stickFigure.addLine(to: CGPoint(x: 220, y:300))
        
        return stickFigure
    }
    
    public func drawHappyTree() -> Void
    {
        let bobRoss = UIBezierPath()
        
        bobRoss.move(to: CGPoint(x: 80, y: 50))
        bobRoss.addLine(to: CGPoint(x:120, y:150))
        bobRoss.addLine(to:CGPoint (x: 40, y: 150))
        bobRoss.close()
        UIColor(patternImage: UIImage(named: "cute")!).setFill()
        UIColor.brown.setStroke()
        bobRoss.lineWidth = 2.0
        bobRoss.stroke()
        
        let happyTree = UIBezierPath()
        
        UIColor.green.setFill()
        happyTree.move(to: CGPoint (x: 110, y: 150))
        happyTree.addLine(to: CGPoint(x: 150, y: 200))
        happyTree.addLine(to: CGPoint(x: 10, y: 200))
        happyTree.addLine(to: CGPoint(x: 50, y: 150))
        happyTree.close()
        happyTree.stroke()
        happyTree.fill()
        happyTree.move(to: CGPoint (x: 80, y: 200))
        happyTree.addLine(to: CGPoint ( x:80, y: 250))
        happyTree.lineWidth = 6.0
        happyTree.stroke()
    }
    
    private func drawTurtle() -> Void
    {
        let logo = UIBezierPath()
        UIColor.white.setFill()
        logo.move(to: CGPoint(x: 50, y: 250))
        logo.addLine(to: CGPoint(x: 100, y:300))
        logo.addLine(to: CGPoint(x: 50, y: 350))
        logo.close()
        logo.fill()
    }
    
    private func drawSnowMan () -> Void
    {
       let background = UIBezierPath()
        UIColor(patternImage: UIImage(named: "snowflake")!).setFill()
        
        background.move(to: CGPoint (x: 0, y: 0))
        background.addLine(to: CGPoint (x: 0, y: 400))
        background.addLine(to: CGPoint (x: 400, y: 400))
        background.addLine(to: CGPoint (x: 400, y: 0))
        background.addLine(to: CGPoint (x: 0, y: 0))
        
        background.fill()
        background.stroke()
        
        
        let body = UIBezierPath()
        UIColor.white.setFill()
        UIColor.white.setStroke()
        
        //Bottom
        body.addArc(withCenter: CGPoint (x: 167, y: 300),
                    radius: CGFloat(70),
                    startAngle: CGFloat(0),
                    endAngle: CGFloat(2) * CGFloat.pi,
                    clockwise: true)
        body.close()
        
        //Middle
        body.move(to: CGPoint (x: 167, y: 200))
        body.addArc(withCenter: CGPoint (x: 167, y: 200),
                    radius: CGFloat(50),
                    startAngle: CGFloat(0),
                    endAngle: CGFloat(2) * CGFloat.pi,
                    clockwise: true)
        body.close()
        
        //Top
        body.move(to: CGPoint (x: 167, y: 100))
        body.addArc(withCenter: CGPoint (x: 167, y: 130),
                    radius: CGFloat(30),
                    startAngle: CGFloat(0),
                    endAngle: CGFloat(2) * CGFloat.pi,
                    clockwise: true)
        body.close()
        
        body.fill()
        body.stroke()
        
    //EYES
        let eyes = UIBezierPath()
        UIColor.black.setFill()
        UIColor.black.setStroke()
        
        //Left eye
        eyes.addArc(withCenter: CGPoint(x: 160, y: 120),
                    radius: CGFloat(5),
                    startAngle: CGFloat(0),
                    endAngle: CGFloat(2) * CGFloat.pi,
                    clockwise: true)
        eyes.close()
        
        //Right eye
        eyes.move(to: CGPoint(x: 180, y: 120))
        eyes.addArc(withCenter: CGPoint(x: 180, y: 120),
                    radius: CGFloat(5),
                    startAngle: CGFloat(0),
                    endAngle: CGFloat(2) * CGFloat.pi,
                    clockwise: true)
        eyes.close()
        
        eyes.fill()
        eyes.stroke()
        
    //NOSE
        let nose = UIBezierPath()
        UIColor.orange.setFill()
        UIColor.orange.setStroke()
        
        //Nose
        nose.move(to: CGPoint (x: 170, y: 127))
        nose.addLine(to: CGPoint (x: 170, y: 137))
        nose.addLine(to: CGPoint (x: 150, y: 132))
        nose.addLine(to: CGPoint (x: 170, y: 127))
        
        nose.fill()
        nose.stroke()
        
    //MOUTH
        let mouth = UIBezierPath()
        UIColor.black.setFill()
        UIColor.black.setStroke()
        
        //Dot number is counting from the left dot to the right dot
        //Dot 1
        mouth.addArc(withCenter: CGPoint (x: 150, y: 140),
                     radius: CGFloat(3),
                     startAngle: CGFloat(0),
                     endAngle: CGFloat(2) * CGFloat.pi,
                     clockwise: true)
        mouth.close()
        
        //Dot 2
        mouth.move(to: CGPoint (x: 156, y: 146))
        mouth.addArc(withCenter: CGPoint (x: 156, y: 146),
                     radius: CGFloat(3),
                     startAngle: (0),
                     endAngle: CGFloat(2) * CGFloat.pi,
                     clockwise: true)
        mouth.close()
        
        //Dot 3
        mouth.move(to: CGPoint (x: 165, y: 149))
        mouth.addArc(withCenter: CGPoint (x: 165, y:149),
                     radius: CGFloat(3),
                     startAngle: CGFloat(0),
                     endAngle: CGFloat(2) * CGFloat.pi,
                     clockwise: true)
        mouth.close()
        
        //Dot 4
        mouth.move(to:CGPoint (x: 174, y: 146))
        mouth.addArc(withCenter: CGPoint (x: 174, y: 146),
                     radius: CGFloat(3),
                     startAngle: CGFloat(0),
                     endAngle: CGFloat(2) * CGFloat.pi,
                     clockwise: true)
        mouth.close()
        
        //Dot 5
        mouth.move(to: CGPoint (x: 180, y: 140))
        mouth.addArc(withCenter: CGPoint (x: 180, y: 140),
                     radius: CGFloat(3),
                     startAngle: CGFloat(0),
                     endAngle: CGFloat(2) * CGFloat.pi,
                     clockwise: true)
        mouth.close()
        
        mouth.fill()
        mouth.stroke()
        
    //BUTTONS
        let buttons = UIBezierPath()
        UIColor.black.setFill()
        UIColor.black.setStroke()
        
        //Bottom button
        buttons.addArc(withCenter: CGPoint (x: 167, y: 218),
                       radius: CGFloat(6),
                       startAngle: CGFloat(0),
                       endAngle: CGFloat(2) * CGFloat.pi,
                       clockwise: true)
        buttons.close()
        
        //Middle button
        buttons.move(to: CGPoint (x: 167, y: 198))
        buttons.addArc(withCenter: CGPoint (x: 167, y: 198),
                       radius: CGFloat(5),
                       startAngle: CGFloat(0),
                       endAngle: CGFloat(2) * CGFloat.pi,
                       clockwise: true)
        buttons.close()
        
        //Top button
        buttons.move(to: CGPoint (x: 167, y: 178))
        buttons.addArc(withCenter: CGPoint( x: 167, y: 178),
                       radius: CGFloat(4),
                       startAngle: CGFloat(0),
                       endAngle: CGFloat(2) * CGFloat.pi,
                       clockwise: true)
        buttons.close()
        
        buttons.fill()
        buttons.stroke()
        
    //ARMS
        let arms = UIBezierPath()
        UIColor.brown.setFill()
        UIColor.brown.setStroke()
        arms.lineWidth = 3.5
        
        //Left arm
        arms.move(to: CGPoint (x: 117, y: 187))
        arms.addLine(to:CGPoint (x: 82, y: 152))
        
        //Right arm
        arms.move(to: CGPoint (x: 217, y: 187))
        arms.addLine(to: CGPoint (x: 252, y: 152))
        
        arms.fill()
        arms.stroke()
        
    //FINGERS
        let fingers = UIBezierPath()
        UIColor.brown.setFill()
        UIColor.brown.setStroke()
        fingers.lineWidth = 3.5
        
        //Left arm, left finger
        fingers.move(to: CGPoint (x: 82, y: 152))
        fingers.addLine(to: CGPoint (x: 62, y: 152))
        
        //Left arm, middle finger
        fingers.move(to: CGPoint(x: 82, y: 152))
        fingers.addLine(to: CGPoint(x: 62, y: 132))
        
        //Left arm, right finger
        fingers.move(to: CGPoint(x: 82, y: 152))
        fingers.addLine(to: CGPoint (x: 82, y: 132))
        
        //Right arm, left finger
        fingers.move(to: CGPoint (x: 252, y: 152))
        fingers.addLine(to: CGPoint (x: 252, y: 132))
        
        //Right arm, middle finger
        fingers.move(to: CGPoint (x: 252, y: 152))
        fingers.addLine(to: CGPoint (x: 272, y: 132))
        
        //Right arm, right finger
        fingers.move(to: CGPoint (x: 252, y: 152))
        fingers.addLine(to: CGPoint (x: 272, y: 152))
    
        fingers.fill()
        fingers.stroke()
        
    //Hat
        let hat = UIBezierPath()
        UIColor.black.setFill()
        UIColor.black.setStroke()
        
        hat.move(to: CGPoint (x: 167, y: 110))
        hat.addLine(to: CGPoint (x: 137, y: 110))
        hat.addLine(to: CGPoint (x: 137, y: 105))
        hat.addLine(to: CGPoint (x: 147, y: 105))
        hat.addLine(to: CGPoint (x: 147, y: 75))
        hat.addLine(to: CGPoint (x: 187, y: 75))
        hat.addLine(to: CGPoint (x: 187, y: 105))
        hat.addLine(to: CGPoint (x: 197, y: 105))
        hat.addLine(to: CGPoint (x: 197, y: 110))
        hat.addLine(to: CGPoint (x: 167, y: 110))
        
        hat.fill()
        hat.stroke()
    }
    
    
}
