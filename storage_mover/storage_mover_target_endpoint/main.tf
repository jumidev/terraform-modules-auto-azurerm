data "azurerm_storage_container" "this" {
  name                 = var.storage_container_name
  storage_account_name = var.storage_container_storage_account_name == null ? null : var.storage_container_storage_account_name
}


resource "azurerm_storage_mover_target_endpoint" "this" {

  ########################################
  # required vars
  ########################################
  name                   = var.name
  storage_mover_id       = var.storage_mover_id
  storage_account_id     = var.storage_account_id
  storage_container_name = data.azurerm_storage_container.this.name

  ########################################
  # optional vars
  ########################################
  description = var.description
}
