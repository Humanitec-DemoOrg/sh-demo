resource "humanitec_resource_definition" "okta_custom_dev" {
  driver_type = "${var.humanitec_organization}/terraform"
  id          = "sh-okta-custom-dev"
  name        = "sh-okta-custom-dev"
  type        = "oauth-client-identity"

  driver_inputs = {
    secrets = {
      variables = jsonencode({

      })
    },
    values = {
      "source" = jsonencode(
        {
          path = "tf_modules/customized_okta"
          rev  = "refs/heads/main"
          url  = "https://github.com/Humanitec-DemoOrg/sh-demo.git"
        }
      )
      "variables" = jsonencode(
        {
          config       = file("${path.module}/config/config.ini")
          redirect_uri = "$${context.app.id}.$${context.env.id}.site.com"
          issuer       = "$${context.app.id}-$${context.env.id}"
        }
      )
    }
  }
  lifecycle {
    ignore_changes = [
      criteria
    ]
  }
}

resource "humanitec_resource_definition" "okta_custom_prod" {
  driver_type = "${var.humanitec_organization}/terraform"
  id          = "sh-okta-custom-prod"
  name        = "sh-okta-custom-prod"
  type        = "oauth-client-identity"

  driver_inputs = {
    secrets = {
      variables = jsonencode({

      })
    },
    values = {
      "source" = jsonencode(
        {
          path = "tf_modules/customized_okta"
          rev  = "refs/heads/main"
          url  = "https://github.com/Humanitec-DemoOrg/sh-demo.git"
        }
      )
      "variables" = jsonencode(
        {
          config       = file("${path.module}/config/config.ini")
          redirect_uri = "$${context.app.id}.$${context.env.id}.site.com"
          issuer       = "$${context.app.id}-$${context.env.id}"
        }
      )
    }
  }
  lifecycle {
    ignore_changes = [
      criteria
    ]
  }
}
