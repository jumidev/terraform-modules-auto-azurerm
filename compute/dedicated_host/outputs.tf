output "name" {
  value = azurerm_dedicated_host.this.name
}

output "dedicated_host_group_id" {
  value = azurerm_dedicated_host.this.dedicated_host_group_id
}

output "location" {
  value = azurerm_dedicated_host.this.location
}

output "sku_name" {
  value = azurerm_dedicated_host.this.sku_name
}

output "platform_fault_domain" {
  value = azurerm_dedicated_host.this.platform_fault_domain
}

output "auto_replace_on_failure" {
  value = azurerm_dedicated_host.this.auto_replace_on_failure
}

output "license_type" {
  value = azurerm_dedicated_host.this.license_type
}

output "tags" {
  value = azurerm_dedicated_host.this.tags
}

output "tags" {
  description = "A mapping of tags to assign to the resource. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_dedicated_host.this.tags
}

output "id" {
  description = "The ID of the Dedicated Host."
  value       = azurerm_dedicated_host.this.id
}

