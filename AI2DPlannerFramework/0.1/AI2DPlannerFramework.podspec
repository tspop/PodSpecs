#
#  Be sure to run `pod spec lint FormFramework.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "AI2DPlannerFramework"
  s.version      = "0.0.2"
  s.summary      = "A framework for building CAD projects"
  s.homepage     = "https://2dplanner@bitbucket.org/2dplanner/2d-planner.git"
  s.author       = { "Silviu Pop" => "thesilviupop@gmail.com" }


  s.source       = { :git => "https://2dplanner@bitbucket.org/2dplanner/2d-planner.git"}


  s.source_files  = 'Classes', 'Classes/**/*.{h,m}'

  non_arc_files = 'Classes/3rd Party/Color Picker/InfColorSquarePicker.m',
                  'Classes/3rd Party/Color Picker/InfColorBarPicker.m',
                  'Classes/3rd Party/Color Picker/InfColorIndicatorView.m',
                  'Classes/3rd Party/Color Picker/InfColorPickerController.m',
                  'Classes/3rd Party/Color Picker/InfHSBSupport.m',
                  'Classes/3rd Party/Color Picker/InfSourceColorView.m'

  s.requires_arc = true
    
  s.exclude_files = non_arc_files
  s.subspec 'no-arc' do |sna|
    sna.requires_arc = false
    sna.source_files = non_arc_files
  end

  s.dependency 'FrameAccessor', '1.3.2'
  
  
end
