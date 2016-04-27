//
//  Created by Jake Lin on 4/26/16.
//  Copyright © 2016 Jake Lin. All rights reserved.
//

import UIKit

public class PinchInteractiveAnimator: InteractiveAnimator {
  override func createGestureRecognizer() -> UIGestureRecognizer {
    let gestureRecognizer = UIPinchGestureRecognizer(target: self, action: #selector(handleGesture(_:)))
    return gestureRecognizer
  }
  
  override func calculateProgress(gestureRecognizer: UIGestureRecognizer) -> (progress: CGFloat, shouldFinishInteractiveTransition: Bool) {
    guard let  gestureRecognizer = gestureRecognizer as? UIPinchGestureRecognizer,
      superview = gestureRecognizer.view?.superview else {
        return (0, false)
    }
    let scale = gestureRecognizer.scale
    
    var progress: CGFloat
    let distance: CGFloat
    switch interactiveGestureType {
    case let .Pinch(direction):
      switch direction {
        // TODO:
//      case .In:
//      case .Out:
      default:
        return (0, false)
    }
    default:
      return (0, false)
    }
    
    progress = min(max(progress, 0), 0.99)
    
    // Finish the transition when pass the threathold
    let shouldFinishInteractiveTransition =  progress > 0.5
    
    return (progress, shouldFinishInteractiveTransition)
  }
}
