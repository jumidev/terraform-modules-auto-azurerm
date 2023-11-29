output "name" {
  value = azurerm_search_shared_private_link_service.this.name
}

output "search_service_id" {
  value = azurerm_search_shared_private_link_service.this.search_service_id
}

output "subresource_name" {
  value = azurerm_search_shared_private_link_service.this.subresource_name
}

output "target_resource_id" {
  value = azurerm_search_shared_private_link_service.this.target_resource_id
}

output "request_message" {
  value = azurerm_search_shared_private_link_service.this.request_message
}

output "id" {
  description = "The ID of the Azure Search Shared Private Link resource."
  value       = azurerm_search_shared_private_link_service.this.id
}

output "status" {
  description = "The status of a private endpoint connection. Possible values are Pending, Approved, Rejected or Disconnected."
  value       = azurerm_search_shared_private_link_service.this.status
}

