

resource "azurerm_logz_sub_account_tag_rule" "this" {

  ########################################
  # required vars
  ########################################
  logz_sub_account_id = var.logz_sub_account_id

  ########################################
  # optional vars
  ########################################

  dynamic "tag_filter" { # var.tag_filter
    for_each = var.tag_filter != null ? var.tag_filter : []
    content {
      name   = tag_filter.key
      action = lookup(tag_filter.value, "action") # (Required) possible values: Include | Exclude
      value  = lookup(tag_filter.value, "value", null)
    }
  }

  send_aad_logs          = var.send_aad_logs
  send_activity_logs     = var.send_activity_logs
  send_subscription_logs = var.send_subscription_logs
}
