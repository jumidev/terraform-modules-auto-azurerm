

resource "azurerm_data_factory_tumbling_window" "this" {

  ########################################
  # required vars
  ########################################
  name            = var.name
  data_factory_id = var.data_factory_id
  frequency       = var.frequency
  interval        = var.interval

  pipeline {
    name       = lookup(pipeline.value, "name") # (Required) 
    parameters = lookup(pipeline.value, "parameters", null)
  }

  start_time = var.start_time

  ########################################
  # optional vars
  ########################################
  activated             = var.activated # Default: True
  additional_properties = var.additional_properties
  annotations           = var.annotations
  delay                 = var.delay
  description           = var.description
  end_time              = var.end_time
  max_concurrency       = var.max_concurrency # Default: 50

  dynamic "retry" { # var.retry
    for_each = var.retry != null ? var.retry : []
    content {
      count    = lookup(retry.value, "count") # (Required) 
      interval = lookup(retry.value, "interval", "30")
    }
  }


  dynamic "trigger_dependency" { # var.trigger_dependency
    for_each = var.trigger_dependency != null ? var.trigger_dependency : []
    content {
      offset       = lookup(trigger_dependency.value, "offset", null)
      size         = lookup(trigger_dependency.value, "size", null)
      trigger_name = lookup(trigger_dependency.value, "trigger_name", null)
    }
  }

}
