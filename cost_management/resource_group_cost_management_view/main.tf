

resource "azurerm_resource_group_cost_management_view" "this" {

  ########################################
  # required vars
  ########################################
  accumulated = var.accumulated
  chart_type  = var.chart_type

  dataset {
    aggregation = lookup(dataset.value, "aggregation") # (Required) 
    granularity = lookup(dataset.value, "granularity") # (Required) 
    grouping    = lookup(dataset.value, "grouping", null)
    sorting     = lookup(dataset.value, "sorting", null)
  }

  display_name      = var.display_name
  name              = var.name
  report_type       = var.report_type
  resource_group_id = var.resource_group_id
  timeframe         = var.timeframe

  ########################################
  # optional vars
  ########################################

  dynamic "kpi" { # var.kpi
    for_each = var.kpi != null ? var.kpi : []
    content {
      type = lookup(kpi.value, "type") # (Required) possible values: Budget | Forecast
    }
  }


  dynamic "pivot" { # var.pivot
    for_each = var.pivot != null ? var.pivot : []
    content {
      name = pivot.key
      type = lookup(pivot.value, "type") # (Required) possible values: Dimension | TagKey
    }
  }

}
