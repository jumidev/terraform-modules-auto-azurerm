

resource "azurerm_management_lock" "this" {

  ########################################
  # required vars
  ########################################
  name       = var.name
  scope      = var.scope
  lock_level = var.lock_level

  ########################################
  # optional vars
  ########################################
  notes = var.notes
}
