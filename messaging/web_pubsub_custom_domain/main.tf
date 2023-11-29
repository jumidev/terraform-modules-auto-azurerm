

resource "azurerm_web_pubsub_custom_domain" "this" {

  ########################################
  # required vars
  ########################################
  name                             = var.name
  domain_name                      = var.domain_name
  web_pubsub_id                    = var.web_pubsub_id
  web_pubsub_custom_certificate_id = var.web_pubsub_custom_certificate_id
}
