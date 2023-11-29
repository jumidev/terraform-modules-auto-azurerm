

resource "azurerm_application_insights_smart_detection_rule" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  application_insights_id = var.application_insights_id

  ########################################
  # optional vars
  ########################################
  enabled                            = var.enabled                            # Default: True
  send_emails_to_subscription_owners = var.send_emails_to_subscription_owners # Default: True
  additional_email_recipients        = var.additional_email_recipients
}
