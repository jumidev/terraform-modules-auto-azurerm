data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_stream_analytics_job" "this" {
  name                = var.stream_analytics_job_name
  resource_group_name = var.stream_analytics_job_resource_group_name == null ? null : var.stream_analytics_job_resource_group_name
}
data "azurerm_eventhub" "this" {
  name                = var.eventhub_name
  resource_group_name = var.eventhub_resource_group_name == null ? null : var.eventhub_resource_group_name
  namespace_name      = var.eventhub_namespace_name == null ? null : var.eventhub_namespace_name
}


resource "azurerm_stream_analytics_output_eventhub" "this" {

  ########################################
  # required vars
  ########################################
  name                      = var.name
  resource_group_name       = data.azurerm_resource_group.this.name
  stream_analytics_job_name = data.azurerm_stream_analytics_job.this.name
  eventhub_name             = data.azurerm_eventhub.this.name
  servicebus_namespace      = var.servicebus_namespace

  serialization {
    type            = lookup(serialization.value, "type") # (Required) 
    encoding        = lookup(serialization.value, "encoding", null)
    field_delimiter = lookup(serialization.value, "field_delimiter", null)
    format          = lookup(serialization.value, "format", null)
  }


  ########################################
  # optional vars
  ########################################
  shared_access_policy_key  = var.shared_access_policy_key
  shared_access_policy_name = var.shared_access_policy_name
  property_columns          = var.property_columns
  authentication_mode       = var.authentication_mode # Default: ConnectionString
  partition_key             = var.partition_key
}
