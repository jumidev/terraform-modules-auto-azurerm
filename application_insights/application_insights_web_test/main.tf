data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_application_insights_web_test" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  resource_group_name     = data.azurerm_resource_group.this.name
  application_insights_id = var.application_insights_id
  location                = var.location
  kind                    = var.kind
  geo_locations           = var.geo_locations
  configuration           = var.configuration

  ########################################
  # optional vars
  ########################################
  frequency     = var.frequency # Default: 300
  timeout       = var.timeout   # Default: 30
  enabled       = var.enabled
  retry_enabled = var.retry_enabled
  description   = var.description
  tags          = var.tags
}
