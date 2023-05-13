# flutter_gcaptcha_v3

[![Platform](https://img.shields.io/badge/platform-Flutter-blue.svg)](https://flutter.dev/)
[![License: MIT](https://img.shields.io/badge/license-MIT-purple.svg)](https://opensource.org/licenses/MIT)

This project is a simple implementation of Google reCAPTCHA v3 in Flutter. It allows you to add a layer of security to your Flutter app by verifying that the user is not a robot.


## Using the Plugin

### Preparations

First, include the plugin in your project's dependencies by including it in the relevant section of your `pubspec.yaml`:

```yaml
 dependencies:
  
  flutter_gcaptcha_v3: any

```
Note: This package might not work for localhost server, As the index.html is added locally and will not be accessible.
Please trying hosting this index.html file in with your domain name and provide the url as params.
## Google recaptcha V3 API key

To register a URL in reCAPTHCA, follow these steps:
- Go to the reCAPTHCHA admin console at https://www.google.com/recaptcha/admin
- Sign in using your Google account credentials
Add Label name (eg: app name)
Selected reCaPTHCA type as `Challenge(V3)`,


- Add Domains: click on the “+ Add” button to register a website,
- For Testing purposes, we need to add a domain name as  `localhost`
In production, we can later add another real domain name (example.com)
- `GOOGLE CLOUD PLATFORM:` Add an app name and it will create a project to enable the required APIS
- Click Save and Submit

You will be given two keys:
- `Site Key`: used to show the captcha verification widget on your site.
- `Secret Key`: is used for authentication communication between the application & recaptcha server to verify the user’s response

## Server-side verification

Using the secret key, the `token` obtained usign this package (`flutter_gcaptcha_v3`)  is verified using this Google API https://www.google.com/recaptcha/api/siteverify.

To verify the token, we can directly call the above API or integrate the API into the backend server.
Please find out more to verify the token here: https://developers.google.com/recaptcha/docs/verify
