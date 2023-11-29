data "azurerm_storage_account" "this" {
  name                = var.storage_account_name
  resource_group_name = var.storage_account_resource_group_name == null ? null : var.storage_account_resource_group_name
}


resource "azurerm_spring_cloud_storage" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  spring_cloud_service_id = var.spring_cloud_service_id
  storage_account_key     = var.storage_account_key
  storage_account_name    = data.azurerm_storage_account.this.name
}
