data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_data_protection_backup_policy_postgresql" "this" {

  ########################################
  # required vars
  ########################################
  name                            = var.name
  resource_group_name             = data.azurerm_resource_group.this.name
  vault_name                      = var.vault_name
  backup_repeating_time_intervals = var.backup_repeating_time_intervals
  default_retention_duration      = var.default_retention_duration

  ########################################
  # optional vars
  ########################################

  dynamic "retention_rule" { # var.retention_rule
    for_each = var.retention_rule != null ? var.retention_rule : []
    content {
      name     = retention_rule.key
      duration = lookup(retention_rule.value, "duration") # (Required) 

      dynamic "criteria" { # retention_rule.value.criteria
        for_each = retention_rule.value.criteria != null ? retention_rule.value.criteria : []
        content {
          absolute_criteria      = lookup(criteria.value, "absolute_criteria", null)
          days_of_week           = lookup(criteria.value, "days_of_week", null)
          months_of_year         = lookup(criteria.value, "months_of_year", null)
          scheduled_backup_times = lookup(criteria.value, "scheduled_backup_times", null)
          weeks_of_month         = lookup(criteria.value, "weeks_of_month", null)
        }
      }

      priority = lookup(retention_rule.value, "priority") # (Required) 
    }
  }

}
