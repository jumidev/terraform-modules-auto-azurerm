

resource "azurerm_security_center_contact" "this" {

  ########################################
  # required vars
  ########################################
  alert_notifications = var.alert_notifications
  alerts_to_admins    = var.alerts_to_admins
  email               = var.email

  ########################################
  # optional vars
  ########################################
  name  = var.name # Default: default1
  phone = var.phone
}
