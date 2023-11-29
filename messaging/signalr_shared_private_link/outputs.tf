output "name" {
  value = azurerm_signalr_shared_private_link.this.name
}

output "signalr_service_id" {
  value = azurerm_signalr_shared_private_link.this.signalr_service_id
}

output "sub_resource_name" {
  value = azurerm_signalr_shared_private_link.this.sub_resource_name
}

output "target_resource_id" {
  value = azurerm_signalr_shared_private_link.this.target_resource_id
}

output "request_message" {
  value = azurerm_signalr_shared_private_link.this.request_message
}

output "id" {
  description = "The ID of the Signalr Shared Private Link resource."
  value       = azurerm_signalr_shared_private_link.this.id
}

output "status" {
  description = "The status of a private endpoint connection. Possible values are 'Pending', 'Approved', 'Rejected' or 'Disconnected'."
  value       = azurerm_signalr_shared_private_link.this.status
}

