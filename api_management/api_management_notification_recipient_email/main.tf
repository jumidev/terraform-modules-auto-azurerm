

resource "azurerm_api_management_notification_recipient_email" "this" {

  ########################################
  # required vars
  ########################################
  api_management_id = var.api_management_id
  email             = var.email
  notification_type = var.notification_type
}
