# sh-demo

The following demo shows how to configure an two Okta/oidc resource types, one custom for specific application, and standard golden paths for okta, mongo and PVCs.

Terraform is used as `echo`, as demo, to avoid any custom providers (Atlas and Okta), the need to configure credentials, tokens and have tenants in those 3rd party services.


## Deploy Humanitec Terraform
Add your token and organization

```
cd humanitec
cp terraform.tfvars.example terraform.tfvars
terraform init && terraform apply -auto-approve
```

## Deploy Score Applications

```
cd score
export HUMANITEC_ORG="myorg"
export HUMANITEC_TOKEN="mytoken"
```

#App1

```
export APP_ENV=development
export APP_NAME=sh-demo
score-humanitec delta --token $HUMANITEC_TOKEN --org $HUMANITEC_ORG --app $APP_NAME --env $APP_ENV -f sh-demo.yaml --extensions sh-demo-extensions.yaml --deploy
```

### Assumes prod exists in your account and env type, deploy with UI first

```
export APP_ENV=prod
export APP_NAME=sh-demo
score-humanitec delta --token $HUMANITEC_TOKEN --org $HUMANITEC_ORG --app $APP_NAME --env $APP_ENV -f sh-demo.yaml --extensions sh-demo-extensions.yaml --deploy
```

#App2

```
export APP_ENV=development
export APP_NAME=sh-demo2
score-humanitec delta --token $HUMANITEC_TOKEN --org $HUMANITEC_ORG --app $APP_NAME --env $APP_ENV -f sh-demo2.yaml --extensions sh-demo2-extensions.yaml --deploy
```

### Assumes prod exists in your account and env type, deploy with UI first

```
export APP_ENV=prod
export APP_NAME=sh-demo2
score-humanitec delta --token $HUMANITEC_TOKEN --org $HUMANITEC_ORG --app $APP_NAME --env $APP_ENV -f sh-demo2.yaml --extensions sh-demo2-extensions.yaml --deploy
```
