# Change Log:

### Version 3.0.2  *(30th October, 2019)*
-------------------------------------------
* Network Module optimizations.
* Event local time was getting tracked according to the Calendar and locale set in the device, have made it device setting independent now.

### Version 3.0.0  *(4th January, 2019)*
-------------------------------------------
* SDK now supports updating notification badge count.
* MORichNotification is now being used for saving the received notifcations, to list the same in the Core SDK Inbox feature.

### Version 2.0.0  *(23rd April, 2018)*
-------------------------------------------
* SDK was changed to dynamic framework

### Version 1.3.0  *(17th August, 2017)*
-------------------------------------------
Network calls optimized.

### Version 1.2.1  *(2nd August, 2017)*
-------------------------------------------
Changed event name used to track notification received.

### Version 1.2.0  *(1st June, 2017)*
-------------------------------------------
Fixed an issue where impression was not tracked in Swift as type casting was failing in handleRichNotification method.

### Version 1.1.1  *(3rd January, 2017)*
-------------------------------------------
Fixed a bug where attachment was not shown in Notification if App Group ID was not provided.

### Version 1.1.0  *(24th November, 2016)*
-------------------------------------------
Enabled tracking of push delivery using Notification Service Extension and AppGroups.

### Version 1.0.0  *(5th October, 2016)*
-------------------------------------------
Support for standard rich notifications with image/gif/video/audio supported for Notification Service Extension.

