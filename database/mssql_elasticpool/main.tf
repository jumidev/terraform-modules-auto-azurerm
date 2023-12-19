data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_mssql_server" "this" {
  name                = var.mssql_server_name
  resource_group_name = var.mssql_server_resource_group_name == null ? null : var.mssql_server_resource_group_name
}
data "azurerm_maintenance_configuration" "this" {
  name                = var.maintenance_configuration_name
  resource_group_name = var.maintenance_configuration_resource_group_name == null ? null : var.maintenance_configuration_resource_group_name
}


resource "azurerm_mssql_elasticpool" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  server_name         = data.azurerm_mssql_server.this.name

  sku {
    name     = lookup(sku.value, "name")     # (Required) 
    capacity = lookup(sku.value, "capacity") # (Required) 
    tier     = lookup(sku.value, "tier")     # (Required) 
    family   = lookup(sku.value, "family", null)
  }


  per_database_settings {
    min_capacity = lookup(per_database_settings.value, "min_capacity") # (Required) 
    max_capacity = lookup(per_database_settings.value, "max_capacity") # (Required) 
  }


  ########################################
  # optional vars
  ########################################
  maintenance_configuration_name = data.azurerm_maintenance_configuration.this.name
  max_size_gb                    = var.max_size_gb
  max_size_bytes                 = var.max_size_bytes
  enclave_type                   = var.enclave_type
  tags                           = var.tags
  zone_redundant                 = var.zone_redundant
  license_type                   = var.license_type
}
