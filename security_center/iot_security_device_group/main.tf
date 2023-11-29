

resource "azurerm_iot_security_device_group" "this" {

  ########################################
  # required vars
  ########################################
  name      = var.name
  iothub_id = var.iothub_id

  ########################################
  # optional vars
  ########################################

  dynamic "allow_rule" { # var.allow_rule
    for_each = var.allow_rule != null ? var.allow_rule : []
    content {
      connection_from_ips_not_allowed = lookup(allow_rule.value, "connection_from_ips_not_allowed", null)
      connection_to_ips_not_allowed   = lookup(allow_rule.value, "connection_to_ips_not_allowed", null)
      local_users_not_allowed         = lookup(allow_rule.value, "local_users_not_allowed", null)
      processes_not_allowed           = lookup(allow_rule.value, "processes_not_allowed", null)
    }
  }


  dynamic "range_rule" { # var.range_rule
    for_each = var.range_rule != null ? var.range_rule : []
    content {
      duration = lookup(range_rule.value, "duration") # (Required) 
      max      = lookup(range_rule.value, "max")      # (Required) 
      min      = lookup(range_rule.value, "min")      # (Required) 
      type     = lookup(range_rule.value, "type")     # (Required) 
    }
  }

}
