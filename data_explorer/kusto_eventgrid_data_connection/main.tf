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
data "azurerm_eventhub_consumer_group" "this" {
  name                = var.eventhub_consumer_group_name
  namespace_name      = var.eventhub_consumer_group_namespace_name
  eventhub_name       = var.eventhub_consumer_group_eventhub_name
  resource_group_name = var.eventhub_consumer_group_resource_group_name != null ? var.eventhub_consumer_group_resource_group_name : var.resource_group_name

}


resource "azurerm_kusto_eventgrid_data_connection" "this" {

  ########################################
  # required vars
  ########################################
  name                         = var.name
  location                     = var.location
  resource_group_name          = data.azurerm_resource_group.this.name
  cluster_name                 = data.azurerm_kusto_cluster.this.name
  database_name                = data.azurerm_kusto_database.this.name
  storage_account_id           = var.storage_account_id
  eventhub_id                  = var.eventhub_id
  eventhub_consumer_group_name = data.azurerm_eventhub_consumer_group.this.name

  ########################################
  # optional vars
  ########################################
  blob_storage_event_type      = var.blob_storage_event_type # Default: Microsoft.Storage.BlobCreated
  data_format                  = var.data_format
  database_routing_type        = var.database_routing_type # Default: Single
  eventgrid_resource_id        = var.eventgrid_resource_id
  managed_identity_resource_id = var.managed_identity_resource_id
  mapping_rule_name            = var.mapping_rule_name
  table_name                   = var.table_name
  skip_first_record            = var.skip_first_record # Default: False
}
