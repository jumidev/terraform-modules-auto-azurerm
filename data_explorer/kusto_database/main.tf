data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_kusto_database" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.this.name
  cluster_name        = var.cluster_name

  ########################################
  # optional vars
  ########################################
  hot_cache_period   = var.hot_cache_period
  soft_delete_period = var.soft_delete_period
}
