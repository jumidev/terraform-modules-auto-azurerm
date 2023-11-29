

resource "azurerm_stream_analytics_job_schedule" "this" {

  ########################################
  # required vars
  ########################################
  stream_analytics_job_id = var.stream_analytics_job_id
  start_mode              = var.start_mode

  ########################################
  # optional vars
  ########################################
  start_time = var.start_time
}
