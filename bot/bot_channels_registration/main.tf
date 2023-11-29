data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_bot_channels_registration" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  sku                 = var.sku
  microsoft_app_id    = var.microsoft_app_id

  ########################################
  # optional vars
  ########################################
  cmk_key_vault_url                     = var.cmk_key_vault_url
  display_name                          = var.display_name # Default: name
  description                           = var.description
  endpoint                              = var.endpoint
  developer_app_insights_key            = var.developer_app_insights_key
  developer_app_insights_api_key        = var.developer_app_insights_api_key
  developer_app_insights_application_id = var.developer_app_insights_application_id
  icon_url                              = var.icon_url
  streaming_endpoint_enabled            = var.streaming_endpoint_enabled # Default: False
  isolated_network_enabled              = var.isolated_network_enabled
  public_network_access_enabled         = var.public_network_access_enabled
  tags                                  = var.tags
}
