output "name" {
  value = azurerm_digital_twins_endpoint_eventgrid.this.name
}

output "digital_twins_id" {
  value = azurerm_digital_twins_endpoint_eventgrid.this.digital_twins_id
}

output "eventgrid_topic_endpoint" {
  value = azurerm_digital_twins_endpoint_eventgrid.this.eventgrid_topic_endpoint
}

output "eventgrid_topic_primary_access_key" {
  value = azurerm_digital_twins_endpoint_eventgrid.this.eventgrid_topic_primary_access_key
}

output "eventgrid_topic_secondary_access_key" {
  value = azurerm_digital_twins_endpoint_eventgrid.this.eventgrid_topic_secondary_access_key
}

output "dead_letter_storage_secret" {
  value = azurerm_digital_twins_endpoint_eventgrid.this.dead_letter_storage_secret
}

output "id" {
  description = "The ID of the Digital Twins Event Grid Endpoint."
  value       = azurerm_digital_twins_endpoint_eventgrid.this.id
}

