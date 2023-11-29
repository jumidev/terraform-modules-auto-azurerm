

resource "azurerm_web_pubsub_custom_certificate" "this" {

  ########################################
  # required vars
  ########################################
  name                  = var.name
  web_pubsub_id         = var.web_pubsub_id
  custom_certificate_id = var.custom_certificate_id
}
