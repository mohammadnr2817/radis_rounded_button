# radis_rounded_button

Rounded button package built for for flutter.

> Supported Platforms
>
> - Android
> - IOS
> - Web

## How to Use
First, add package to your dependencies in ```pubspec.yml```
```yaml
radis_rounded_button: ^latest
```
Find the latest version from [pub.dev](https://pub.dev/packages/radis_rounded_button)

## Simple usage
```dart
RoundedButton(
        widget: Text('LOGIN'),
        leadingWidget: Icon(CupertinoIcons.forward),
        onPressed: () {},
    );
```


<img src="https://github.com/Radis-Dev/radis_rounded_button/blob/master/screenshot.png?raw=true" width="400"/>

## All properties
| property        | description                                                        | default    |
| --------------- | ------------------------------------------------------------------ |------------|
| backgroundColor | Color                                                              |Colors.blue |
| borderColor     | Color                                                              |null        |
| disabled        | bool                                                               |false       |
| elevation       | double                                                             |0           |
| leadingWidget   | Widget                                                             |null        |
| loading         | bool                                                               |false       |
| leadingAlignment| AlignmentGeometry                                                  |Alignment.centerRight|
| loadingWidget   | Widget                                                             |null        |
| onPressed       | Function (required)                                                |required    |
| padding         | EdgeInsetsGeometry                                                 |EdgeInsets.symmetric(horizontal: 0, vertical: 16)|
| progressColor   | Color                                                              |Colors.white|
| radius          | double                                                             |7           |
| widget          | Widget (required)                                                  |required    |

### Your contributions are welcome.
