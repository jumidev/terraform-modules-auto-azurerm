output "name" {
  value = azurerm_digital_twins_endpoint_eventhub.this.name
}

output "digital_twins_id" {
  value = azurerm_digital_twins_endpoint_eventhub.this.digital_twins_id
}

output "eventhub_primary_connection_string" {
  value = azurerm_digital_twins_endpoint_eventhub.this.eventhub_primary_connection_string
}

output "eventhub_secondary_connection_string" {
  value = azurerm_digital_twins_endpoint_eventhub.this.eventhub_secondary_connection_string
}

output "dead_letter_storage_secret" {
  value = azurerm_digital_twins_endpoint_eventhub.this.dead_letter_storage_secret
}

output "id" {
  description = "The ID of the Digital Twins Event Hub Endpoint."
  value       = azurerm_digital_twins_endpoint_eventhub.this.id
}

