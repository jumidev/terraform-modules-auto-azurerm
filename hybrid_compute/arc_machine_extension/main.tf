

resource "azurerm_arc_machine_extension" "this" {

  ########################################
  # required vars
  ########################################
  arc_machine_id = var.arc_machine_id
  location       = var.location
  name           = var.name
  publisher      = var.publisher
  type           = var.type

  ########################################
  # optional vars
  ########################################
  automatic_upgrade_enabled = var.automatic_upgrade_enabled # Default: True
  force_update_tag          = var.force_update_tag
  protected_settings        = var.protected_settings
  settings                  = var.settings
  tags                      = var.tags
  type_handler_version      = var.type_handler_version
}
