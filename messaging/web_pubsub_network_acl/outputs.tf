output "web_pubsub_id" {
  value = azurerm_web_pubsub_network_acl.this.web_pubsub_id
}

output "default_action" {
  value = azurerm_web_pubsub_network_acl.this.default_action
}

output "public_network" {
  value = azurerm_web_pubsub_network_acl.this.public_network
}

output "private_endpoint" {
  value = azurerm_web_pubsub_network_acl.this.private_endpoint
}

output "id" {
  description = "The ID of the Web Pubsub service."
  value       = azurerm_web_pubsub_network_acl.this.id
}

