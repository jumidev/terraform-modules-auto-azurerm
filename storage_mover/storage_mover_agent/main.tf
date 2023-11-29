

resource "azurerm_storage_mover_agent" "this" {

  ########################################
  # required vars
  ########################################
  name                     = var.name
  arc_virtual_machine_id   = var.arc_virtual_machine_id
  arc_virtual_machine_uuid = var.arc_virtual_machine_uuid
  storage_mover_id         = var.storage_mover_id

  ########################################
  # optional vars
  ########################################
  description = var.description
}
