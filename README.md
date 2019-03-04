# BugsnagDocker
Bugsnag Builder Docker image for use in CI eg, GiLab

## Usage

You can use this docker image in CI builds, e.g. Gitlab.   
Set the environments as wished to use this.


### Example
`.gitlab-ci.yml` example:

```yaml
bugsnag_build:
  stage: review
  image: koenhendriks/bugsnagdocker
  variables:
    RELEASE_STAGE: "staging"
    BUILDER_NAME: "Gitlab Builder"
    SOURCE_PROVIDER: "gitlab-onpremise"
    SOURCE_REPO: "https://gitlab.qlic.nl/backend/atn"
    BUGSNAG_API_KEY: "xxx"
  script:
    - echo 'done'  
```