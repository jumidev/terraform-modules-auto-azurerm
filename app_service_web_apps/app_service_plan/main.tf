data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_app_service_plan" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  sku {
    tier     = lookup(sku.value, "tier") # (Required) 
    size     = lookup(sku.value, "size") # (Required) 
    capacity = lookup(sku.value, "capacity", null)
  }


  ########################################
  # optional vars
  ########################################
  kind                         = var.kind # Default: Windows
  maximum_elastic_worker_count = var.maximum_elastic_worker_count
  app_service_environment_id   = var.app_service_environment_id
  reserved                     = var.reserved
  per_site_scaling             = var.per_site_scaling
  is_xenon                     = var.is_xenon
  zone_redundant               = var.zone_redundant
  tags                         = var.tags
}
