#!/bin/bash
if [${BUILD_DEBUG} = 1]
    then
        ./gradlew clean assembleDebug
        cd app/build/outputs/apk/
        curl -F "file=@app-debug.apk" -F "token=${TOKEN_DEPLOYGATE}" -F "message=Auto upload" https://deploygate.com/api/users/${DEPLOYGATE}/apps
    else echo "Don't Build APK"
if