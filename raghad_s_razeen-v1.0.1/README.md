
# raghad_s_razeen
### Table of contents
- [System requirements](#system-requirements)
- [Figma design guidelines for better UI accuracy](#figma-design-guideline-for-better-accuracy)
- [Check the UI of the entire app](#app-navigations)
- [Application structure](#project-structure)
- [How to format your code?](#how-you-can-do-code-formatting)
- [How you can improve code readability?](#how-you-can-improve-the-readability-of-code)
- [Libraries and tools used](#libraries-and-tools-used)
- [Support](#support)

### System requirements

Dart SDK Version 2.18.0 or greater.
Flutter SDK Version 3.3.0 or greater.

### Figma design guidelines for better UI accuracy

Read our guidelines to increase the accuracy of design-to-code conversion by optimizing Figma designs.
https://docs.dhiwise.com/docs/Designguidelines/intro

### Check the UI of the entire app

Check the UI of all the app screens from a single place by setting up the 'initialRoute'  to AppNavigation in the AppRoutes.dart file.

### Application structure
After successful build, your application structure should look like this:
                    
```
.
├── android                         - It contains files required to run the application on an Android platform.
├── assets                          - It contains all images and fonts of your application.
├── ios                             - It contains files required to run the application on an iOS platform.
├── lib                             - Most important folder in the application, used to write most of the Dart code..
    ├── main.dart                   - Starting point of the application
    ├── core
    │   ├── app_export.dart         - It contains commonly used file imports
    │   ├── constants               - It contains static constant class file
    │   └── utils                   - It contains common files and utilities of the application
    ├── presentation                - It contains widgets of the screens
    ├── routes                      - It contains all the routes of the application
    └── theme                       - It contains app theme and decoration classes
    └── widgets                     - It contains all custom widget classes
```
### How to format your code?

- if your code is not formatted then run following command in your terminal to format code
  ```
  dart format .
  ```

### How you can improve code readability?

Resolve the errors and warnings that are shown in the application.

### Support

If you have any problems or questions, go to our Discord channel, where we will help you as quickly as possible: https://discord.com/invite/rFMnCG5MZ7

### Image Assets
We were unable to find Images, Please add manually to ```project/assets``` and replace image_not_found Image constant with original file 

| File Name | Not Found Assets Count |
| --- | :---: |
| frame_135_screen | 1 |
| frame_134_screen | 1 |
| frame_thirtyfour_screen | 1 |
| frame_fortynine_screen | 1 |
| frame_fortyeight_screen | 1 |
| frame_137_screen | 1 |
| frame_136_screen | 1 |
| frame_133_screen | 1 |
| frame_104_screen | 1 |
| frame_105_screen | 1 |
| frame_106_screen | 1 |
| frame_112_screen | 1 |
| frame_110_screen | 1 |
| frame_107_screen | 1 |
| frame_108_screen | 1 |
| frame_139_screen | 1 |
| frame_138_screen | 1 |
| frame_130_screen | 1 |
| frame_146_screen | 1 |
| frame_144_screen | 1 |
| frame_152_screen | 1 |
| frame_156_screen | 1 |
| frame_141_screen | 1 |
| frame_140_screen | 1 |
| frame_131_screen | 1 |
| frame_153_screen | 1 |
| frame_157_screen | 1 |
| frame_143_screen | 1 |
| frame_142_screen | 1 |
| frame_132_screen | 1 |
| frame_eighteen_screen | 1 |
| frame_sixtynine_screen | 1 |
| frame_thirtynine_screen | 1 |
| frame_thirtyeight_screen | 1 |
| frame_thirtyseven_screen | 1 |
| frame_eightyfive_screen | 1 |
| frame_eightyone_screen | 1 |
| frame_ninetynine_screen | 1 |
| frame_ninetyeight_screen | 1 |
| frame_ninetyseven_screen | 1 |
| frame_five_screen | 1 |
| frame_fourteen_screen | 1 |
| frame_fifteen_screen | 1 |
| frame_ninety_screen | 1 |
| frame_eightynine_screen | 1 |
| frame_ninetysix_screen | 1 |
| frame_ninetyfive_screen | 1 |
| frame_ninetyfour_screen | 1 |
| frame_thirtythree_screen | 1 |
| frame_twentynine_screen | 1 |
| frame_thirtytwo_screen | 1 |
| frame_thirtysix_screen | 1 |
| frame_thirtyfive_screen | 1 |

