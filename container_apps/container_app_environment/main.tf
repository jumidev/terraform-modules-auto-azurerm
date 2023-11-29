data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_container_app_environment" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  dapr_application_insights_connection_string = var.dapr_application_insights_connection_string
  infrastructure_subnet_id                    = var.infrastructure_subnet_id
  internal_load_balancer_enabled              = var.internal_load_balancer_enabled # Default: False
  zone_redundancy_enabled                     = var.zone_redundancy_enabled        # Default: False
  log_analytics_workspace_id                  = var.log_analytics_workspace_id
  tags                                        = var.tags
}
