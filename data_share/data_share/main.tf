

resource "azurerm_data_share" "this" {

  ########################################
  # required vars
  ########################################
  name       = var.name
  account_id = var.account_id
  kind       = var.kind

  ########################################
  # optional vars
  ########################################
  description = var.description

  dynamic "snapshot_schedule" { # var.snapshot_schedule
    for_each = var.snapshot_schedule != null ? var.snapshot_schedule : []
    content {
      name       = snapshot_schedule.key
      recurrence = lookup(snapshot_schedule.value, "recurrence") # (Required) possible values: Hour | Day
      start_time = lookup(snapshot_schedule.value, "start_time") # (Required) 
    }
  }

  terms = var.terms
}
