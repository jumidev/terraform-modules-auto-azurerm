data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_service_plan" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  location            = var.location
  os_type             = var.os_type
  resource_group_name = data.azurerm_resource_group.this.name
  sku_name            = var.sku_name

  ########################################
  # optional vars
  ########################################
  app_service_environment_id   = var.app_service_environment_id
  maximum_elastic_worker_count = var.maximum_elastic_worker_count
  worker_count                 = var.worker_count
  per_site_scaling_enabled     = var.per_site_scaling_enabled # Default: False
  zone_balancing_enabled       = var.zone_balancing_enabled
  tags                         = var.tags
}
