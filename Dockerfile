FROM alpine:3.8

RUN apk add --no-cache curl

RUN curl https://build.bugsnag.com/ \
        --header "Content-Type: application/json"   \
        --data '{\
            "apiKey":           '$BUGSNAG_API_KEY',\
            "appVersion":       '$CI_COMMIT_TAG',\
            "releaseStage":     '$RELEASE_STAGE',\
            "builderName":      '$BUILDER_NAME',\
            "sourceControl": { \
                "provider":     '$SOURCE_PROVIDER',\
                "repository":   '$SOURCE_REPO',\
                "revision":     '$CI_COMMIT_SHA' \
            }\
         }'



