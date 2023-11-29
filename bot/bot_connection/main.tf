data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_bot_connection" "this" {

  ########################################
  # required vars
  ########################################
  name                  = var.name
  resource_group_name   = data.azurerm_resource_group.this.name
  location              = var.location
  bot_name              = var.bot_name
  service_provider_name = var.service_provider_name
  client_id             = var.client_id
  client_secret         = var.client_secret

  ########################################
  # optional vars
  ########################################
  scopes     = var.scopes
  parameters = var.parameters
  tags       = var.tags
}
