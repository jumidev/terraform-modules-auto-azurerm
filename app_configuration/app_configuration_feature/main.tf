

resource "azurerm_app_configuration_feature" "this" {

  ########################################
  # required vars
  ########################################
  configuration_store_id = var.configuration_store_id
  name                   = var.name

  ########################################
  # optional vars
  ########################################
  description             = var.description
  enabled                 = var.enabled
  key                     = var.key
  label                   = var.label
  locked                  = var.locked
  percentage_filter_value = var.percentage_filter_value
  tags                    = var.tags

  dynamic "targeting_filter" { # var.targeting_filter
    for_each = var.targeting_filter != null ? var.targeting_filter : []
    content {
      name               = targeting_filter.key
      rollout_percentage = lookup(targeting_filter.value, "rollout_percentage") # (Required) 
    }
  }


  dynamic "timewindow_filter" { # var.timewindow_filter
    for_each = var.timewindow_filter != null ? var.timewindow_filter : []
    content {
      start = lookup(timewindow_filter.value, "start", null)
      end   = lookup(timewindow_filter.value, "end", null)
    }
  }

}
