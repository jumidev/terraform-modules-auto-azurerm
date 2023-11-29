data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_kusto_eventhub_data_connection" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.this.name
  cluster_name        = var.cluster_name
  database_name       = var.database_name
  eventhub_id         = var.eventhub_id
  consumer_group      = var.consumer_group

  ########################################
  # optional vars
  ########################################
  compression             = var.compression # Default: None
  event_system_properties = var.event_system_properties
  table_name              = var.table_name
  identity_id             = var.identity_id
  mapping_rule_name       = var.mapping_rule_name
  data_format             = var.data_format
  database_routing_type   = var.database_routing_type # Default: Single
}
