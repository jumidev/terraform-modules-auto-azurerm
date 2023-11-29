

resource "azurerm_data_protection_backup_policy_disk" "this" {

  ########################################
  # required vars
  ########################################
  name                            = var.name
  vault_id                        = var.vault_id
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
          absolute_criteria = lookup(criteria.value, "absolute_criteria", null)
        }
      }

      priority = lookup(retention_rule.value, "priority") # (Required) 
    }
  }

}
