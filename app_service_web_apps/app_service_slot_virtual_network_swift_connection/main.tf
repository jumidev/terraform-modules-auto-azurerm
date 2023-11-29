

resource "azurerm_app_service_slot_virtual_network_swift_connection" "this" {

  ########################################
  # required vars
  ########################################
  app_service_id = var.app_service_id
  slot_name      = var.slot_name
  subnet_id      = var.subnet_id
}
