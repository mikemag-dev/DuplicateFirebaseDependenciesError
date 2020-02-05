platform :ios, '10.0'
use_frameworks!

workspace 'workspace'
project 'app/app.xcodeproject'
project 'framework2/framework2.xcodeproject'

abstract_target 'Apps' do
  use_frameworks!

  pod 'Firebase/Analytics'
  pod 'Firebase/Auth'
  pod 'Firebase/Firestore'

  target 'app' do
    use_frameworks!
    project 'app/app.xcodeproject'
  end

  target 'framework2' do
    use_frameworks!
    project 'framework2/Framework2.xcodeproj'
  end
end

# target 'framework2' do
#   use_frameworks!



#   project 'framework2/framework2.xcodeproj'
# end