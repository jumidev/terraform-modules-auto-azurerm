

resource "azurerm_signalr_service_custom_domain" "this" {

  ########################################
  # required vars
  ########################################
  name                          = var.name
  domain_name                   = var.domain_name
  signalr_service_id            = var.signalr_service_id
  signalr_custom_certificate_id = var.signalr_custom_certificate_id
}
