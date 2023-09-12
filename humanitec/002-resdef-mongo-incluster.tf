resource "humanitec_resource_definition" "mongo_incluster" {
  driver_type = "humanitec/lightweight-in-cluster-mongodb"
  id          = "mongo_incluster"
  name        = "mongo_incluster"
  type        = "mongodb"

  lifecycle {
    ignore_changes = [
      criteria
    ]
  }
}