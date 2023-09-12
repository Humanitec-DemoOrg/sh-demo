resource "humanitec_resource_definition" "mongo_echo" {
  driver_type = "humanitec/echo"
  id          = "mongo_echo"
  name        = "mongo_echo"
  type        = "mongodb"

  driver_inputs = {
    secrets = {
      variables = jsonencode(
        {
          connection = var.mongodb_connectionstring
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