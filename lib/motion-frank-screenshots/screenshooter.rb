class Screenshooter
  def self.shot(filename)
    new(filename).shot
  end
  
  def initialize(filename)
    @filename = filename
  end
  
  def shot
    if BW::Device.retina?
      UIGraphicsBeginImageContextWithOptions(App.window.bounds.size, false, UIScreen.mainScreen.scale)
    else
      UIGraphicsBeginImageContext(App.window.bounds.size)
    end
    
    App.window.layer.renderInContext(UIGraphicsGetCurrentContext())
    image = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    data = UIImagePNGRepresentation(image)
    data.writeToFile("#{@filename}#{appendix}.png", atomically:true)
  end
  
  def appendix
    if BW::Device.retina?
      if BW::Device.long_screen?
        "-568h@2x"
      else
        "@2x"
      end
    else
      ""
    end
  end
end
