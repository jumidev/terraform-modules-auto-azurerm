data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_bot_service_azure_bot" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  microsoft_app_id    = var.microsoft_app_id
  sku                 = var.sku

  ########################################
  # optional vars
  ########################################
  developer_app_insights_api_key        = var.developer_app_insights_api_key
  developer_app_insights_application_id = var.developer_app_insights_application_id
  developer_app_insights_key            = var.developer_app_insights_key
  display_name                          = var.display_name # Default: name
  endpoint                              = var.endpoint
  icon_url                              = var.icon_url # Default: https://docs.botframework.com/static/devportal/client/images/bot-framework-default.png
  microsoft_app_msi_id                  = var.microsoft_app_msi_id
  microsoft_app_tenant_id               = var.microsoft_app_tenant_id
  microsoft_app_type                    = var.microsoft_app_type
  local_authentication_enabled          = var.local_authentication_enabled # Default: True
  luis_app_ids                          = var.luis_app_ids
  luis_key                              = var.luis_key
  streaming_endpoint_enabled            = var.streaming_endpoint_enabled # Default: False
  tags                                  = var.tags
}
