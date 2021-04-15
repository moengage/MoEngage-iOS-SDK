# MoEngageCards
=================================

## Change Log:

### Version 2.0.4  *(15th April, 2021)*
-------------------------------------------
* Fixed deeplink action issue, URL string is percentage encoded before URL instance is created and processed.

### Version 2.0.3  *(31st March, 2021)*
-------------------------------------------
* Additional UIConfigurations added to change `New Updates` button title.
* Changed the behaviour to load the cards on inbox fetch instead of showing `New Updates` button, in case of empty inbox.
* Added check for updates on `viewDidAppear`, to handle TabBarController use cases.

### Version 2.0.2  *(25th February, 2021)*
-------------------------------------------
* Additional UIConfigurations added to enable/disable Pull to refresh and Delete/Cancel action sheet texts.
* Showing empty screen on deletion of last card.

### Version 2.0.1  *(10th February, 2021)*
-------------------------------------------
* MoEngage-iOS-SDK Dependency updates

### Version 2.0.0  *(18th January, 2021)*
-------------------------------------------
* Changes to support  MoEngage-iOS-SDK 7.0.0

### Version 1.2.0  *(17th December, 2020)*
-------------------------------------------
* Changes to support  `enableSDK()` and `disableSDK()` methods for blocking/unblocking SDK features

### Version 1.1.0  *(24th November, 2020)*
-------------------------------------------
* `BUILD_LIBRARY_FOR_DISTRIBUTION` enabled for Cards.
* `MOCards` class renamed to `MoEngageCards` because of an [issue](https://developer.apple.com/documentation/xcode-release-notes/xcode-11_2-release-notes#Swift) in Xcode.

### Version 1.0.2  *(12th November, 2020)*
-------------------------------------------
* Swift ModuleMap for Simulator architecture was not merged to the final build.
* Whitelisted Cards Events for GDPR opt-outs

### Version 1.0.1  *(2nd November, 2020)*
-------------------------------------------
* Xcode 12 Build settings changes to exclude arm64 architecture for Simulator.

### Version 1.0.0  *(2nd July, 2020)*
-------------------------------------------
* First release for supporting Cards Campaign in App - [doc](https://docs.moengage.com/docs/ios-cards)
