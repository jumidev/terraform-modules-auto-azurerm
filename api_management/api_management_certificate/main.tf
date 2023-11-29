data "azurerm_api_management" "this" {
  name                = var.api_management_name
  resource_group_name = var.api_management_resource_group_name == null ? null : var.api_management_resource_group_name
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_api_management_certificate" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  api_management_name = data.azurerm_api_management.this.name
  resource_group_name = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################
  data                         = var.data
  password                     = var.password
  key_vault_secret_id          = var.key_vault_secret_id
  key_vault_identity_client_id = var.key_vault_identity_client_id
}
