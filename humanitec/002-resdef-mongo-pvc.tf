resource "humanitec_resource_definition" "mongo_pvc_dev" {
  driver_type = "humanitec/volume-pvc"
  id          = "sh-mongo-pvc-dev"
  name        = "sh-mongo-pvc-dev"
  type        = "volume"

  driver_inputs = {
    secrets = {
    },
    values = {
      "access_modes" : "ReadWriteOnce",
      "capacity" : "8Gi",
      "storage_class_name" : "gp2"
    }
  }

}

resource "humanitec_resource_definition" "mongo_pvc_prod" {
  driver_type = "humanitec/volume-pvc"
  id          = "sh-mongo-pvc-prod"
  name        = "sh-mongo-pvc-prod"
  type        = "volume"

  driver_inputs = {
    secrets = {
    },
    values = {
      "access_modes" : "ReadWriteOnce",
      "capacity" : "10Gi",
      "storage_class_name" : "gp2"
    }
  }

}
