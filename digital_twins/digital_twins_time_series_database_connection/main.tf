data "azurerm_eventhub" "this" {
  name                = var.eventhub_name
  resource_group_name = var.eventhub_resource_group_name
  namespace_name      = var.eventhub_namespace_name
}
data "azurerm_kusto_database" "this" {
  name                = var.kusto_database_name
  resource_group_name = var.kusto_database_resource_group_name
  cluster_name        = var.kusto_database_cluster_name
}
data "azurerm_eventhub_consumer_group" "this" {
  name           = var.eventhub_consumer_group_name
  namespace_name = var.eventhub_consumer_group_namespace_name
  eventhub_name  = var.eventhub_consumer_group_eventhub_name != null ? var.eventhub_consumer_group_eventhub_name : var.eventhub_name

  resource_group_name = var.eventhub_consumer_group_resource_group_name == null ? null : var.eventhub_consumer_group_resource_group_name
}


resource "azurerm_digital_twins_time_series_database_connection" "this" {

  ########################################
  # required vars
  ########################################
  name                            = var.name
  digital_twins_id                = var.digital_twins_id
  eventhub_name                   = data.azurerm_eventhub.this.name
  eventhub_namespace_endpoint_uri = var.eventhub_namespace_endpoint_uri
  eventhub_namespace_id           = var.eventhub_namespace_id
  kusto_cluster_id                = var.kusto_cluster_id
  kusto_cluster_uri               = var.kusto_cluster_uri
  kusto_database_name             = data.azurerm_kusto_database.this.name

  ########################################
  # optional vars
  ########################################
  eventhub_consumer_group_name = data.azurerm_eventhub_consumer_group.this.name
  kusto_table_name             = var.kusto_table_name
}
