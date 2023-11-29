data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_stream_analytics_job" "this" {
  name                = var.stream_analytics_job_name
  resource_group_name = var.stream_analytics_job_resource_group_name == null ? null : var.stream_analytics_job_resource_group_name
}


resource "azurerm_stream_analytics_reference_input_mssql" "this" {

  ########################################
  # required vars
  ########################################
  name                      = var.name
  resource_group_name       = data.azurerm_resource_group.this.name
  stream_analytics_job_name = data.azurerm_stream_analytics_job.this.name
  server                    = var.server
  database                  = var.database
  username                  = var.username
  password                  = var.password
  refresh_type              = var.refresh_type
  full_snapshot_query       = var.full_snapshot_query

  ########################################
  # optional vars
  ########################################
  refresh_interval_duration = var.refresh_interval_duration
  delta_snapshot_query      = var.delta_snapshot_query
  table                     = var.table
}
