

resource "azurerm_pim_eligible_role_assignment" "this" {

  ########################################
  # required vars
  ########################################
  principal_id       = var.principal_id
  role_definition_id = var.role_definition_id
  scope              = var.scope

  ########################################
  # optional vars
  ########################################
  justification = var.justification

  dynamic "schedule" { # var.schedule
    for_each = var.schedule != null ? var.schedule : []
    content {

      dynamic "expiration" { # schedule.value.expiration
        for_each = schedule.value.expiration != null ? schedule.value.expiration : []
        content {
          duration_days  = lookup(expiration.value, "duration_days", null)
          duration_hours = lookup(expiration.value, "duration_hours", null)
          end_date_time  = lookup(expiration.value, "end_date_time", null)
        }
      }

      start_date_time = lookup(schedule.value, "start_date_time", null)
    }
  }


  dynamic "ticket" { # var.ticket
    for_each = var.ticket != null ? var.ticket : []
    content {
      number = lookup(ticket.value, "number", null)
      system = lookup(ticket.value, "system", null)
    }
  }

}
