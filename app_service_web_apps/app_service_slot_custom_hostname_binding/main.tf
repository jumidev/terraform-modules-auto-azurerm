

resource "azurerm_app_service_slot_custom_hostname_binding" "this" {

  ########################################
  # required vars
  ########################################
  app_service_slot_id = var.app_service_slot_id
  hostname            = var.hostname

  ########################################
  # optional vars
  ########################################
  ssl_state  = var.ssl_state
  thumbprint = var.thumbprint
}
