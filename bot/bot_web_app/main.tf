data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_bot_web_app" "this" {

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
  display_name                          = var.display_name # Default: name
  endpoint                              = var.endpoint
  developer_app_insights_key            = var.developer_app_insights_key
  developer_app_insights_api_key        = var.developer_app_insights_api_key
  developer_app_insights_application_id = var.developer_app_insights_application_id
  luis_app_ids                          = var.luis_app_ids
  luis_key                              = var.luis_key
  tags                                  = var.tags
}
