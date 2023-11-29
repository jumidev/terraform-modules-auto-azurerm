output "name" {
  value = azurerm_web_pubsub_shared_private_link.this.name
}

output "web_pubsub_id" {
  value = azurerm_web_pubsub_shared_private_link.this.web_pubsub_id
}

output "subresource_name" {
  value = azurerm_web_pubsub_shared_private_link.this.subresource_name
}

output "target_resource_id" {
  value = azurerm_web_pubsub_shared_private_link.this.target_resource_id
}

output "request_message" {
  value = azurerm_web_pubsub_shared_private_link.this.request_message
}

output "id" {
  description = "The ID of the Web Pubsub Shared Private Link resource."
  value       = azurerm_web_pubsub_shared_private_link.this.id
}

output "status" {
  description = "The status of a private endpoint connection. Possible values are Pending, Approved, Rejected or Disconnected."
  value       = azurerm_web_pubsub_shared_private_link.this.status
}

