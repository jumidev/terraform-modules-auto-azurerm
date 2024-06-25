output "name" {
  value = azurerm_network_ddos_protection_plan.this.name
}

output "location" {
  value = azurerm_network_ddos_protection_plan.this.location
}

output "resource_group_name" {
  value = azurerm_network_ddos_protection_plan.this.resource_group_name
}

output "tags" {
  value = azurerm_network_ddos_protection_plan.this.tags
}

output "id" {
  description = "The ID of the DDoS Protection Plan"
  value       = azurerm_network_ddos_protection_plan.this.id
}

output "virtual_network_ids" {
  description = "A list of Virtual Network IDs associated with the DDoS Protection Plan."
  value       = azurerm_network_ddos_protection_plan.this.virtual_network_ids
}

