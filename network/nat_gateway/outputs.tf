output "name" {
  value = azurerm_nat_gateway.this.name
}

output "resource_group_name" {
  value = azurerm_nat_gateway.this.resource_group_name
}

output "location" {
  value = azurerm_nat_gateway.this.location
}

output "idle_timeout_in_minutes" {
  value = azurerm_nat_gateway.this.idle_timeout_in_minutes
}

output "sku_name" {
  value = azurerm_nat_gateway.this.sku_name
}

output "tags" {
  value = azurerm_nat_gateway.this.tags
}

output "zones" {
  value = azurerm_nat_gateway.this.zones
}

output "id" {
  description = "The ID of the NAT Gateway."
  value       = azurerm_nat_gateway.this.id
}

output "resource_guid" {
  description = "The resource GUID property of the NAT Gateway."
  value       = azurerm_nat_gateway.this.resource_guid
}

