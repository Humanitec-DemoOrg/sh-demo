resource "humanitec_resource_definition" "ingress" {
  id          = "sh-ingress"
  name        = "sh-ingress"
  type        = "ingress"
  driver_type = "humanitec/ingress"

  driver_inputs = {
    values_string = jsonencode({
      "annotations" : {
        "konghq.com/snis" : "",
        "konghq.com/request-buffering" : "",
        "konghq.com/response-buffering" : "",
        "konghq.com/host-aliase" : "",
        "konghq.com/override" : "",
        "konghq.com/path-handling" : "",
        "konghq.com/headers.*" : ""
      },
      "api_version" : "v1",
      "class" : "alb",
      "no_tls" : true
    })

    secrets_string = jsonencode({
    })
  }

}


resource "humanitec_resource_definition" "dns" {
  id          = "sh-dns"
  name        = "sh-dns"
  type        = "dns"
  driver_type = "humanitec/template"

  driver_inputs = {
    values_string = jsonencode({

      templates = {
        init      = <<EOL
D: ".humanitec.com"
W: {{ index (regexSplit "\\." "$${context.res.id}" -1) 1 }}
EOL
        manifests = ""
        outputs   = <<EOL
host: $${context.app.id}-{{.init.W}}-$${context.env.id}{{.init.D}}
EOL
        cookie    = ""
      }
    })
    secrets = {
    }
  }
}
