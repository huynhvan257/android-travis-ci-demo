#!/bin/bash
if [[ -z "${BUILD_DEBUG}" ]];
    then echo "... Don't set BUILD_DEBUG"
    else
        if [ ${BUILD_DEBUG} = 1 ];
            then
                ./gradlew clean assembleDebug
                cd app/build/outputs/apk/
                curl -F "file=@app-debug.apk" -F "token=${TOKEN_DEPLOYGATE}" -F "message=Auto upload" https://deploygate.com/api/users/${DEPLOYGATE}/apps
                echo "... UPLOAD FINISH"
            else echo "... BUILD_DEBUG != 1. Don't Build Apk"
        fi
fi