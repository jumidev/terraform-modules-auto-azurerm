output "name" {
  value = azurerm_ip_group.this.name
}

output "resource_group_name" {
  value = azurerm_ip_group.this.resource_group_name
}

output "location" {
  value = azurerm_ip_group.this.location
}

output "cidrs" {
  value = azurerm_ip_group.this.cidrs
}

output "tags" {
  value = azurerm_ip_group.this.tags
}

output "tags" {
  description = "A mapping of tags to assign to the resource. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_ip_group.this.tags
}

output "id" {
  description = "The ID of the IP group."
  value       = azurerm_ip_group.this.id
}

output "firewall_ids" {
  description = "A list of ID of Firewall."
  value       = azurerm_ip_group.this.firewall_ids
}

output "firewall_policy_ids" {
  description = "A list of ID of Firewall Policy'."
  value       = azurerm_ip_group.this.firewall_policy_ids
}

