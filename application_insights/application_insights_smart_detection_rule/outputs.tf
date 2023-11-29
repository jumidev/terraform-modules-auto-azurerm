output "name" {
  value = azurerm_application_insights_smart_detection_rule.this.name
}

output "application_insights_id" {
  value = azurerm_application_insights_smart_detection_rule.this.application_insights_id
}

output "enabled" {
  value = azurerm_application_insights_smart_detection_rule.this.enabled
}

output "send_emails_to_subscription_owners" {
  value = azurerm_application_insights_smart_detection_rule.this.send_emails_to_subscription_owners
}

output "additional_email_recipients" {
  value = azurerm_application_insights_smart_detection_rule.this.additional_email_recipients
}

output "id" {
  description = "The ID of the Application Insights Smart Detection Rule."
  value       = azurerm_application_insights_smart_detection_rule.this.id
}

