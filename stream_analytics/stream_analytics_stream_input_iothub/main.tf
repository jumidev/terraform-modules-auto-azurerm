data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_stream_analytics_job" "this" {
  name                = var.stream_analytics_job_name
  resource_group_name = var.stream_analytics_job_resource_group_name == null ? null : var.stream_analytics_job_resource_group_name
}
data "azurerm_eventhub_consumer_group" "this" {
  name                = var.eventhub_consumer_group_name
  namespace_name      = var.eventhub_consumer_group_namespace_name
  eventhub_name       = var.eventhub_consumer_group_eventhub_name == null ? null : var.eventhub_consumer_group_eventhub_name
  resource_group_name = var.eventhub_consumer_group_resource_group_name == null ? null : var.eventhub_consumer_group_resource_group_name
}


resource "azurerm_stream_analytics_stream_input_iothub" "this" {

  ########################################
  # required vars
  ########################################
  name                         = var.name
  resource_group_name          = data.azurerm_resource_group.this.name
  stream_analytics_job_name    = data.azurerm_stream_analytics_job.this.name
  eventhub_consumer_group_name = data.azurerm_eventhub_consumer_group.this.name
  endpoint                     = var.endpoint
  iothub_namespace             = var.iothub_namespace

  serialization {
    type            = lookup(serialization.value, "type") # (Required) 
    encoding        = lookup(serialization.value, "encoding", null)
    field_delimiter = lookup(serialization.value, "field_delimiter", null)
  }

  shared_access_policy_key  = var.shared_access_policy_key
  shared_access_policy_name = var.shared_access_policy_name
}
