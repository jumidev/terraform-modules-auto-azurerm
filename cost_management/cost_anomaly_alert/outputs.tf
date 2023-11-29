output "name" {
  value = azurerm_cost_anomaly_alert.this.name
}

output "display_name" {
  value = azurerm_cost_anomaly_alert.this.display_name
}

output "email_addresses" {
  value = azurerm_cost_anomaly_alert.this.email_addresses
}

output "email_subject" {
  value = azurerm_cost_anomaly_alert.this.email_subject
}

output "message" {
  value = azurerm_cost_anomaly_alert.this.message
}

output "id" {
  description = "The ID of the Cost Anomaly Alert."
  value       = azurerm_cost_anomaly_alert.this.id
}

