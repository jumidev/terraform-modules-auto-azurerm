

resource "azurerm_data_factory_trigger_schedule" "this" {

  ########################################
  # required vars
  ########################################
  name            = var.name
  data_factory_id = var.data_factory_id

  ########################################
  # optional vars
  ########################################
  description = var.description
  schedule    = var.schedule
  start_time  = var.start_time
  time_zone   = var.time_zone
  end_time    = var.end_time
  interval    = var.interval  # Default: 1
  frequency   = var.frequency # Default: Minute
  activated   = var.activated # Default: True

  dynamic "pipeline" { # var.pipeline
    for_each = var.pipeline != null ? var.pipeline : []
    content {
      name       = pipeline.key
      parameters = lookup(pipeline.value, "parameters", null)
    }
  }

  pipeline_name       = var.pipeline_name
  pipeline_parameters = var.pipeline_parameters
  annotations         = var.annotations
}
