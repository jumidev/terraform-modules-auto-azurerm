

resource "azurerm_web_app_active_slot" "this" {

  ########################################
  # required vars
  ########################################
  slot_id = var.slot_id

  ########################################
  # optional vars
  ########################################
  overwrite_network_config = var.overwrite_network_config # Default: True
}
