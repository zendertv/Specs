# Specs

This is the home of the Zender Cocoapods.
This repo is a private repo created according to the <https://guides.cocoapods.org/making/private-cocoapods.html> procedure.

# Reauirements
This requires cocopoads to be installed

`gem install cocoapods`

# Commands to publish 
To publish configure it as an extra repo
```
$ pod repo push zendertv-specs Zender.podspec --sources=https://github.com/CocoaPods/Specs.git,https://github.com/zendertv/Specs.git
```

Now you can verify the repo via
```
$ cd ~/.cocoapods/repos/zendertv-specs
$ pod repo lint Zender.podspec --sources=https://github.com/CocoaPods/Specs.git,https://github.com/zendertv/Specs.git --verbose
```

First upload the new zip files to repo.zender.tv/ios

Then verify your new podspec
```
$ pod spec lint
```

Once the podspec has been linted/verified you can publish it:
- Then you can publish it
```
$ pod repo push zendertv-specs Zender.podspec
```
