resource "humanitec_resource_definition" "okta_dev" {
  driver_type = "${var.humanitec_organization}/terraform"
  id          = "sh-okta-dev"
  name        = "sh-okta-dev"
  type        = "oauth-client-identity"

  driver_inputs = {
    secrets = {
      variables = jsonencode({

      })
    },
    values = {
      "source" = jsonencode(
        {
          path = "sh/tf_modules/okta"
          rev  = "refs/heads/main"
          url  = "https://github.com/Humanitec-DemoOrg/sh-demo.git"
        }
      )
      "variables" = jsonencode(
        {
          config       = ""
          redirect_uri = "$${context.app.id}.$${context.env.id}.site.com"
          issuer       = "$${context.app.id}-$${context.env.id}"
        }
      )
    }
  }

}

resource "humanitec_resource_definition" "okta_prod" {
  driver_type = "${var.humanitec_organization}/terraform"
  id          = "sh-okta-prod"
  name        = "sh-okta-prod"
  type        = "oauth-client-identity"

  driver_inputs = {
    secrets = {
      variables = jsonencode({

      })
    },
    values = {
      "source" = jsonencode(
        {
          path = "sh/tf_modules/okta"
          rev  = "refs/heads/main"
          url  = "https://github.com/Humanitec-DemoOrg/sh-demo.git"
        }
      )
      "variables" = jsonencode(
        {
          config       = ""
          redirect_uri = "$${context.app.id}.$${context.env.id}.site.com"
          issuer       = "$${context.app.id}-$${context.env.id}"
        }
      )
    }
  }

}
