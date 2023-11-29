data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_stream_analytics_job" "this" {
  name                = var.stream_analytics_job_name
  resource_group_name = var.stream_analytics_job_resource_group_name == null ? null : var.stream_analytics_job_resource_group_name
}


resource "azurerm_stream_analytics_output_function" "this" {

  ########################################
  # required vars
  ########################################
  name                      = var.name
  resource_group_name       = data.azurerm_resource_group.this.name
  stream_analytics_job_name = data.azurerm_stream_analytics_job.this.name
  api_key                   = var.api_key
  function_app              = var.function_app
  function_name             = var.function_name

  ########################################
  # optional vars
  ########################################
  batch_max_count    = var.batch_max_count    # Default: 100
  batch_max_in_bytes = var.batch_max_in_bytes # Default: 262144
}
