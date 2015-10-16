[![Build Status](https://travis-ci.org/huynhvan257/android-travis-ci-demo.png?branch=master)](https://travis-ci.org/huynhvan257/android-travis-ci-demo)

This is the Travis CI and DeployGate for the Android.
This Demo, you can use the Travis auto build and auto upload to Deploygate use API from Android easily.

For issue tracking see the GitHub issues page: https://github.com/DeployGate/gradle-deploygate-plugin/issues

## Use
Edit file .travis.yml:

[![Build Status](https://raw.githubusercontent.com/huynhvan257/android-travis-ci-demo/master/image/add_env_variable.png)
- Add TOKEN_DEPLOYGATE with token from account DeployGate
- Add DEPLOYGATE wiht user from account DeployGate
 
Get TOKEN: Account Setting -> API key (Token)
[![Build Status](https://raw.githubusercontent.com/huynhvan257/android-travis-ci-demo/master/image/get-app-token.png)
[![Build Status](https://raw.githubusercontent.com/huynhvan257/android-travis-ci-demo/master/image/api-token.png)




+ Line - ./gradlew clean <type-build>
    - <type-build> : type build (sample assembleRelease)
+ Line - curl -F "file=@<path-apk>" -F "token=<Token>" -F "message=<message>" https://deploygate.com/api/users/<account-name>/apps
    - <path-apk>: path of apk file (sample apk-debug.apk)
    - TOKEN_DEPLOYGATE: Token account DeployGate
    - DEPLOYGATE: user account DeployGate (sample huynhvan257)
    - <message>: message upload file apk to DeployGate (sample Auto build and upload from Travis CI)


## License
Copyright 2012-2014 Huynh Van

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

```
http://www.apache.org/licenses/LICENSE-2.0
```
Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
