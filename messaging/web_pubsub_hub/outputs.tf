output "name" {
  value = azurerm_web_pubsub_hub.this.name
}

output "web_pubsub_id" {
  value = azurerm_web_pubsub_hub.this.web_pubsub_id
}

output "anonymous_connections_enabled" {
  value = azurerm_web_pubsub_hub.this.anonymous_connections_enabled
}

output "event_handler" {
  value = azurerm_web_pubsub_hub.this.event_handler
}

output "event_listener" {
  value = azurerm_web_pubsub_hub.this.event_listener
}

output "id" {
  description = "The ID of the Web Pubsub Hub resource."
  value       = azurerm_web_pubsub_hub.this.id
}

output "name" {
  description = "The name of the Web Pubsub Hub resource. Changing this forces a new resource to be created."
  value       = azurerm_web_pubsub_hub.this.name
}

