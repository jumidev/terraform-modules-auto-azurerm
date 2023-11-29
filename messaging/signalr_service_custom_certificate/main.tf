

resource "azurerm_signalr_service_custom_certificate" "this" {

  ########################################
  # required vars
  ########################################
  name                  = var.name
  signalr_service_id    = var.signalr_service_id
  custom_certificate_id = var.custom_certificate_id
}
