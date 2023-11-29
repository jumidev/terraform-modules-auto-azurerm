

resource "azurerm_app_service_certificate_binding" "this" {

  ########################################
  # required vars
  ########################################
  certificate_id      = var.certificate_id
  hostname_binding_id = var.hostname_binding_id
  ssl_state           = var.ssl_state
}
