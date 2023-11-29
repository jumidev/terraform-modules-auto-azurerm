data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_monitor_scheduled_query_rules_log" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  criteria {
    dimension   = lookup(criteria.value, "dimension")   # (Required) 
    metric_name = lookup(criteria.value, "metric_name") # (Required) 
  }

  data_source_id = var.data_source_id

  ########################################
  # optional vars
  ########################################
  authorized_resource_ids = var.authorized_resource_ids
  description             = var.description
  enabled                 = var.enabled # Default: True
  tags                    = var.tags
}
