data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_kusto_cluster" "this" {
  name                = var.kusto_cluster_name
  resource_group_name = var.kusto_cluster_resource_group_name == null ? null : var.kusto_cluster_resource_group_name
}
data "azurerm_kusto_database" "this" {
  name                = var.kusto_database_name
  resource_group_name = var.kusto_database_resource_group_name == null ? null : var.kusto_database_resource_group_name
  cluster_name        = var.kusto_database_cluster_name == null ? null : var.kusto_database_cluster_name
}


resource "azurerm_kusto_iothub_data_connection" "this" {

  ########################################
  # required vars
  ########################################
  name                      = var.name
  location                  = var.location
  resource_group_name       = data.azurerm_resource_group.this.name
  cluster_name              = data.azurerm_kusto_cluster.this.name
  database_name             = data.azurerm_kusto_database.this.name
  iothub_id                 = var.iothub_id
  consumer_group            = var.consumer_group
  shared_access_policy_name = var.shared_access_policy_name

  ########################################
  # optional vars
  ########################################
  event_system_properties = var.event_system_properties
  table_name              = var.table_name
  mapping_rule_name       = var.mapping_rule_name
  data_format             = var.data_format
  database_routing_type   = var.database_routing_type # Default: Single
}
