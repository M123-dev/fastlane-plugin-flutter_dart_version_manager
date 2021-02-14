# flutter_dart_version_manager plugin

[![fastlane Plugin Badge](https://rawcdn.githack.com/fastlane/fastlane/master/fastlane/assets/plugin-badge.svg)](https://rubygems.org/gems/fastlane-plugin-flutter_dart_version_manager)

## Getting Started

This project is a [_fastlane_](https://github.com/fastlane/fastlane) plugin. Add it to your project by running:

```bash
fastlane add_plugin flutter_dart_version_manager
```

## Commands:


### 

### flutter_set_version

```bash
flutter_set_version(
    path_to_yaml: "../pubspec.yaml",
    version_name: "1.1.9",
    version_code: "5", #optional
)
```




## Example

Check out the [example Fastfile](fastlane/Fastfile) to see how to use this plugin. 
Try it by cloning the repo, running `fastlane install_plugins` and `bundle exec fastlane test`.

Other plugins interesting plugins that work well with this one:

 - [fastlane-plugin-flutter_version][1] 
 - [fastlane-plugin-versioning][2] (especially: `get_version_number_from_git_branch`)

## Issues and Feedback

For any other issues and feedback about this plugin, please submit it to this repository.

## Troubleshooting

If you have trouble using plugins, check out the [Plugins Troubleshooting](https://docs.fastlane.tools/plugins/plugins-troubleshooting/) guide.

## Using _fastlane_ Plugins

For more information about how the `fastlane` plugin system works, check out the [Plugins documentation](https://docs.fastlane.tools/plugins/create-plugin/).

## About _fastlane_

_fastlane_ is the easiest way to automate beta deployments and releases for your iOS and Android apps. To learn more, check out [fastlane.tools](https://fastlane.tools).


  [1]: https://github.com/tianhaoz95/fastlane-plugin-flutter_version
  [2]: https://github.com/SiarheiFedartsou/fastlane-plugin-versioning