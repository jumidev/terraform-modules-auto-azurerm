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


resource "azurerm_stream_analytics_output_table" "this" {

  ########################################
  # required vars
  ########################################
  name                      = var.name
  resource_group_name       = data.azurerm_resource_group.this.name
  stream_analytics_job_name = data.azurerm_stream_analytics_job.this.name
  storage_account_name      = data.azurerm_storage_account.this.name
  storage_account_key       = var.storage_account_key
  table                     = var.table
  partition_key             = var.partition_key
  row_key                   = var.row_key
  batch_size                = var.batch_size

  ########################################
  # optional vars
  ########################################
  columns_to_remove = var.columns_to_remove
}
