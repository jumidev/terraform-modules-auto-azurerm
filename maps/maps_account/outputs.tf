output "name" {
  value = azurerm_maps_account.this.name
}

output "resource_group_name" {
  value = azurerm_maps_account.this.resource_group_name
}

output "sku_name" {
  value = azurerm_maps_account.this.sku_name
}

output "local_authentication_enabled" {
  value = azurerm_maps_account.this.local_authentication_enabled
}

output "tags" {
  value = azurerm_maps_account.this.tags
}

output "id" {
  description = "The ID of the Azure Maps Account."
  value       = azurerm_maps_account.this.id
}

output "primary_access_key" {
  description = "The primary key used to authenticate and authorize access to the Maps REST APIs."
  value       = azurerm_maps_account.this.primary_access_key
}

output "secondary_access_key" {
  description = "The secondary key used to authenticate and authorize access to the Maps REST APIs."
  value       = azurerm_maps_account.this.secondary_access_key
}

output "x_ms_client_id" {
  description = "A unique identifier for the Maps Account."
  value       = azurerm_maps_account.this.x_ms_client_id
}

