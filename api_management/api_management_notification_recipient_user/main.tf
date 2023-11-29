

resource "azurerm_api_management_notification_recipient_user" "this" {

  ########################################
  # required vars
  ########################################
  api_management_id = var.api_management_id
  user_id           = var.user_id
  notification_type = var.notification_type
}
