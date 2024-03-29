# Specs

This is the home of the Zender Cocoapods.
This repo is a private repo created according to the <https://guides.cocoapods.org/making/private-cocoapods.html> procedure.

# Requirements
This requires cocopoads to be installed

`gem install cocoapods`

# Commands to publish 
To publish configure it as an extra repo
```
$ pod repo add zendertv-specs git@github.com:zendertv/Specs.git
```

Now you can verify the repo via
```
$ cd ~/.cocoapods/repos/zendertv-specs
$ pod repo lint .
```

First upload the new zip files to `https://repo.zender.tv/ios/zender-sdk-ios-x.y.z.zip`

Then verify your new podspec
```
$ pod spec lint Zender.podspec --sources=https://github.com/CocoaPods/Specs.git,https://github.com/zendertv/Specs.git --verbose
```

Once the podspec has been linted/verified you can publish it:
- Then you can publish it
```
$ pod repo push zendertv-specs Zender.podspec --sources=https://github.com/CocoaPods/Specs.git,https://github.com/zendertv/Specs.git
```

# Update the repos
- `pod install --update-repo`
- or only update a repo `pod repo update`
- `pod repo update zendertv-specs`

# Add it your Podfile
Add this to your Podfile so it will resolve our Zender repo specs:

```
source 'https://github.com/zendertv/Specs.git'
source 'https://github.com/CocoaPods/Specs.git'
```
