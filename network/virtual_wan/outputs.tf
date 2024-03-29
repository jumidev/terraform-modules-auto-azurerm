output "name" {
  value = azurerm_virtual_wan.this.name
}

output "resource_group_name" {
  value = azurerm_virtual_wan.this.resource_group_name
}

output "location" {
  value = azurerm_virtual_wan.this.location
}

output "disable_vpn_encryption" {
  value = azurerm_virtual_wan.this.disable_vpn_encryption
}

output "allow_branch_to_branch_traffic" {
  value = azurerm_virtual_wan.this.allow_branch_to_branch_traffic
}

output "office365_local_breakout_category" {
  value = azurerm_virtual_wan.this.office365_local_breakout_category
}

output "type" {
  value = azurerm_virtual_wan.this.type
}

output "tags" {
  value = azurerm_virtual_wan.this.tags
}

output "tags" {
  description = "A mapping of tags to assign to the Virtual WAN. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_virtual_wan.this.tags
}

output "id" {
  description = "The ID of the Virtual WAN."
  value       = azurerm_virtual_wan.this.id
}

