data "azurerm_eventhub" "this" {
  name                = var.eventhub_name
  resource_group_name = var.eventhub_resource_group_name == null ? null : var.eventhub_resource_group_name
  namespace_name      = var.eventhub_namespace_name == null ? null : var.eventhub_namespace_name
}
data "azurerm_eventhub_consumer_group" "this" {
  name                = var.eventhub_consumer_group_name
  namespace_name      = var.eventhub_consumer_group_namespace_name
  eventhub_name       = var.eventhub_consumer_group_eventhub_name == null ? null : var.eventhub_consumer_group_eventhub_name
  resource_group_name = var.eventhub_consumer_group_resource_group_name == null ? null : var.eventhub_consumer_group_resource_group_name
}


resource "azurerm_stream_analytics_stream_input_eventhub_v2" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  stream_analytics_job_id = var.stream_analytics_job_id
  eventhub_name           = data.azurerm_eventhub.this.name
  servicebus_namespace    = var.servicebus_namespace

  serialization {
    type            = lookup(serialization.value, "type") # (Required) 
    encoding        = lookup(serialization.value, "encoding", null)
    field_delimiter = lookup(serialization.value, "field_delimiter", null)
  }


  ########################################
  # optional vars
  ########################################
  partition_key                = var.partition_key
  authentication_mode          = var.authentication_mode # Default: ConnectionString
  eventhub_consumer_group_name = data.azurerm_eventhub_consumer_group.this.name
  shared_access_policy_key     = var.shared_access_policy_key
  shared_access_policy_name    = var.shared_access_policy_name
}
