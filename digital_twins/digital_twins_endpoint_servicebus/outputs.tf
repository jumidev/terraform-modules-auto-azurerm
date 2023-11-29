output "name" {
  value = azurerm_digital_twins_endpoint_servicebus.this.name
}

output "digital_twins_id" {
  value = azurerm_digital_twins_endpoint_servicebus.this.digital_twins_id
}

output "servicebus_primary_connection_string" {
  value = azurerm_digital_twins_endpoint_servicebus.this.servicebus_primary_connection_string
}

output "servicebus_secondary_connection_string" {
  value = azurerm_digital_twins_endpoint_servicebus.this.servicebus_secondary_connection_string
}

output "dead_letter_storage_secret" {
  value = azurerm_digital_twins_endpoint_servicebus.this.dead_letter_storage_secret
}

output "id" {
  description = "The ID of the Digital Twins Service Bus Endpoint."
  value       = azurerm_digital_twins_endpoint_servicebus.this.id
}

