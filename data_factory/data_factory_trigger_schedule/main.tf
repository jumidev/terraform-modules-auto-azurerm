

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

  dynamic "schedule" { # var.schedule
    for_each = var.schedule != null ? var.schedule : []
    content {
      days_of_month = lookup(schedule.value, "days_of_month", null)
      days_of_week  = lookup(schedule.value, "days_of_week", null)
      hours         = lookup(schedule.value, "hours", null)
      minutes       = lookup(schedule.value, "minutes", null)

      dynamic "monthly" { # schedule.value.monthly
        for_each = schedule.value.monthly != null ? schedule.value.monthly : []
        content {
          weekday = lookup(monthly.value, "weekday") # (Required) 
          week    = lookup(monthly.value, "week", null)
        }
      }

    }
  }

  start_time = var.start_time
  time_zone  = var.time_zone
  end_time   = var.end_time
  interval   = var.interval  # Default: 1
  frequency  = var.frequency # Default: Minute
  activated  = var.activated # Default: True

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
