output "signalr_service_id" {
  value = azurerm_signalr_service_network_acl.this.signalr_service_id
}

output "default_action" {
  value = azurerm_signalr_service_network_acl.this.default_action
}

output "public_network" {
  value = azurerm_signalr_service_network_acl.this.public_network
}

output "private_endpoint" {
  value = azurerm_signalr_service_network_acl.this.private_endpoint
}

output "id" {
  description = "The ID of the SignalR service."
  value       = azurerm_signalr_service_network_acl.this.id
}

