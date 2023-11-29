

resource "azurerm_storage_mover_project" "this" {

  ########################################
  # required vars
  ########################################
  name             = var.name
  storage_mover_id = var.storage_mover_id

  ########################################
  # optional vars
  ########################################
  description = var.description
}
