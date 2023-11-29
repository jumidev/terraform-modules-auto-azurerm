data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_stream_analytics_job" "this" {
  name                = var.stream_analytics_job_name
  resource_group_name = var.stream_analytics_job_resource_group_name == null ? null : var.stream_analytics_job_resource_group_name
}
data "azurerm_storage_account" "this" {
  name                = var.storage_account_name
  resource_group_name = var.storage_account_resource_group_name == null ? null : var.storage_account_resource_group_name
}
data "azurerm_storage_container" "this" {
  name                 = var.storage_container_name
  storage_account_name = var.storage_container_storage_account_name == null ? null : var.storage_container_storage_account_name
}


resource "azurerm_stream_analytics_reference_input_blob" "this" {

  ########################################
  # required vars
  ########################################
  name                      = var.name
  resource_group_name       = data.azurerm_resource_group.this.name
  stream_analytics_job_name = data.azurerm_stream_analytics_job.this.name
  date_format               = var.date_format
  path_pattern              = var.path_pattern
  storage_account_name      = data.azurerm_storage_account.this.name
  storage_container_name    = data.azurerm_storage_container.this.name
  time_format               = var.time_format

  serialization {
    type            = lookup(serialization.value, "type") # (Required) 
    encoding        = lookup(serialization.value, "encoding", null)
    field_delimiter = lookup(serialization.value, "field_delimiter", null)
  }


  ########################################
  # optional vars
  ########################################
  storage_account_key = var.storage_account_key
  authentication_mode = var.authentication_mode # Default: ConnectionString
}
