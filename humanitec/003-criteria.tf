resource "humanitec_resource_definition_criteria" "mongo_dev" {
  resource_definition_id = humanitec_resource_definition.mongo_dev.id
  app_id                 = humanitec_application.app.id
  env_type               = "development"
}

resource "humanitec_resource_definition_criteria" "mongo_prod" {
  resource_definition_id = humanitec_resource_definition.mongo_prod.id
  app_id                 = humanitec_application.app.id
  env_type               = "prod"
}

resource "humanitec_resource_definition_criteria" "mongo_pvc_dev" {
  resource_definition_id = humanitec_resource_definition.mongo_pvc_dev.id
  app_id                 = humanitec_application.app.id
  env_type               = "development"
}

resource "humanitec_resource_definition_criteria" "mongo_pvc_prod" {
  resource_definition_id = humanitec_resource_definition.mongo_pvc_prod.id
  app_id                 = humanitec_application.app.id
  env_type               = "prod"
}

#okta

resource "humanitec_resource_definition_criteria" "okta_dev" {
  resource_definition_id = humanitec_resource_definition.okta_dev.id
  app_id                 = humanitec_application.app.id
  env_type               = "development"
}

resource "humanitec_resource_definition_criteria" "okta_prod" {
  resource_definition_id = humanitec_resource_definition.okta_prod.id
  app_id                 = humanitec_application.app.id
  env_type               = "prod"
}

#app 2 show customized okta
resource "humanitec_resource_definition_criteria" "okta_custom_dev" {
  resource_definition_id = humanitec_resource_definition.okta_custom_dev.id
  app_id                 = humanitec_application.app2.id
  env_type               = "development"
}

resource "humanitec_resource_definition_criteria" "okta_custom_prod" {
  resource_definition_id = humanitec_resource_definition.okta_custom_prod.id
  app_id                 = humanitec_application.app2.id
  env_type               = "prod"
}

#ingress

resource "humanitec_resource_definition_criteria" "ingress1_dev" {
  resource_definition_id = humanitec_resource_definition.ingress.id
  app_id                 = humanitec_application.app.id
  env_type               = "development"
}

resource "humanitec_resource_definition_criteria" "ingress1_prod" {
  resource_definition_id = humanitec_resource_definition.ingress.id
  app_id                 = humanitec_application.app.id
  env_type               = "prod"
}


resource "humanitec_resource_definition_criteria" "ingress2_dev" {
  resource_definition_id = humanitec_resource_definition.ingress.id
  app_id                 = humanitec_application.app2.id
  env_type               = "development"
}

resource "humanitec_resource_definition_criteria" "ingress2_prod" {
  resource_definition_id = humanitec_resource_definition.ingress.id
  app_id                 = humanitec_application.app2.id
  env_type               = "prod"
}


resource "humanitec_resource_definition_criteria" "dns1_dev" {
  resource_definition_id = humanitec_resource_definition.dns.id
  app_id                 = humanitec_application.app.id
  env_type               = "development"
}

resource "humanitec_resource_definition_criteria" "dns1_prod" {
  resource_definition_id = humanitec_resource_definition.dns.id
  app_id                 = humanitec_application.app.id
  env_type               = "prod"
}


resource "humanitec_resource_definition_criteria" "dns2_dev" {
  resource_definition_id = humanitec_resource_definition.dns.id
  app_id                 = humanitec_application.app2.id
  env_type               = "development"
}

resource "humanitec_resource_definition_criteria" "dns2_prod" {
  resource_definition_id = humanitec_resource_definition.dns.id
  app_id                 = humanitec_application.app2.id
  env_type               = "prod"
}
