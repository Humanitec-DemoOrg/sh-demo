resource "humanitec_value" "app_val1" {
  app_id = humanitec_application.app.id

  key         = "secret"
  value       = "EXAMPLE"
  description = ""
  is_secret   = true
}

resource "humanitec_value" "app_val2" {
  app_id = humanitec_application.app2.id

  key         = "secret"
  value       = "EXAMPLE"
  description = ""
  is_secret   = true
}

resource "humanitec_value" "app_val11" {
  app_id = humanitec_application.app.id

  key         = "config_file"
  value       = file("${path.module}/config/config.ini")
  description = ""
  is_secret   = false
}

resource "humanitec_value" "app_val22" {
  app_id = humanitec_application.app2.id

  key         = "config_file"
  value       = file("${path.module}/config/config.ini")
  description = ""
  is_secret   = false
}
