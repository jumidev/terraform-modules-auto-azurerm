output "location" {
  value = azurerm_load_test.this.location
}

output "name" {
  value = azurerm_load_test.this.name
}

output "resource_group_name" {
  value = azurerm_load_test.this.resource_group_name
}

output "description" {
  value = azurerm_load_test.this.description
}

output "identity" {
  value = azurerm_load_test.this.identity
}

output "tags" {
  value = azurerm_load_test.this.tags
}

output "id" {
  description = "The ID of the Load Test."
  value       = azurerm_load_test.this.id
}

output "data_plane_uri" {
  description = "Resource data plane URI."
  value       = azurerm_load_test.this.data_plane_uri
}

