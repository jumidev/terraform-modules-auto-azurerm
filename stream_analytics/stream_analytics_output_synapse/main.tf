data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_stream_analytics_job" "this" {
  name                = var.stream_analytics_job_name
  resource_group_name = var.stream_analytics_job_resource_group_name == null ? null : var.stream_analytics_job_resource_group_name
}


resource "azurerm_stream_analytics_output_synapse" "this" {

  ########################################
  # required vars
  ########################################
  name                      = var.name
  resource_group_name       = data.azurerm_resource_group.this.name
  stream_analytics_job_name = data.azurerm_stream_analytics_job.this.name
  server                    = var.server
  database                  = var.database
  user                      = var.user
  password                  = var.password
  table                     = var.table
}
