data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_iot_time_series_insights_gen2_environment" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  sku_name            = var.sku_name

  storage {
    name = lookup(storage.value, "name") # (Required) 
    key  = lookup(storage.value, "key")  # (Required) 
  }

  id_properties = var.id_properties

  ########################################
  # optional vars
  ########################################
  warm_store_data_retention_time = var.warm_store_data_retention_time
  tags                           = var.tags
}
