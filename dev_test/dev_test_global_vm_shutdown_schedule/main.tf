

resource "azurerm_dev_test_global_vm_shutdown_schedule" "this" {

  ########################################
  # required vars
  ########################################
  location              = var.location
  virtual_machine_id    = var.virtual_machine_id
  timezone              = var.timezone
  daily_recurrence_time = var.daily_recurrence_time

  notification_settings {
    enabled         = lookup(notification_settings.value, "enabled") # (Required) 
    email           = lookup(notification_settings.value, "email", null)
    time_in_minutes = lookup(notification_settings.value, "time_in_minutes", "30")
    webhook_url     = lookup(notification_settings.value, "webhook_url", null)
  }


  ########################################
  # optional vars
  ########################################
  enabled = var.enabled # Default: True
  tags    = var.tags
}
