data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_app_service_certificate" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  pfx_blob            = var.pfx_blob
  password            = var.password
  app_service_plan_id = var.app_service_plan_id
  key_vault_secret_id = var.key_vault_secret_id
  tags                = var.tags
}
