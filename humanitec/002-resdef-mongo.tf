resource "humanitec_resource_definition" "mongo_dev" {
  driver_type = "${var.humanitec_organization}/terraform"
  id          = "sh-mongo-dev"
  name        = "sh-mongo-dev"
  type        = "mongodb"

  driver_inputs = {
    secrets = {
      variables = jsonencode({

      })
    },
    values = {
      "source" = jsonencode(
        {
          path = "sh/tf_modules/mongo"
          rev  = "refs/heads/main"
          url  = "https://github.com/Humanitec-DemoOrg/sh-demo.git"
        }
      )
      "variables" = jsonencode(
        {
          instance = "small"
          dbname   = "mydbname"
        }
      )
    }
  }

}

resource "humanitec_resource_definition" "mongo_prod" {
  driver_type = "${var.humanitec_organization}/terraform"
  id          = "sh-mongo-prod"
  name        = "sh-mongo-prod"
  type        = "sh-mongodb"

  driver_inputs = {
    secrets = {
      variables = jsonencode({

      })
    },
    values = {
      "source" = jsonencode(
        {
          path = "sh/tf_modules/mongo"
          rev  = "refs/heads/main"
          url  = "https://github.com/Humanitec-DemoOrg/sh-demo.git"
        }
      )
      "variables" = jsonencode(
        {
          instance = "large"
          dbname   = "mydbname"
        }
      )
    }
  }

}
