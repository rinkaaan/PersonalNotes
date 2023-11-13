# codeartifact
## npm
aws codeartifact login --tool npm --repository default --domain nguylinc --domain-owner 542773719222 --region us-east-1
## gradle
export CODEARTIFACT_AUTH_TOKEN=`aws codeartifact get-authorization-token --domain nguylinc --domain-owner 542773719222 --region us-east-1 --query authorizationToken --output text`
