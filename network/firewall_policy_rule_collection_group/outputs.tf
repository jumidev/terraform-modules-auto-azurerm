output "name" {
  value = azurerm_firewall_policy_rule_collection_group.this.name
}

output "firewall_policy_id" {
  value = azurerm_firewall_policy_rule_collection_group.this.firewall_policy_id
}

output "priority" {
  value = azurerm_firewall_policy_rule_collection_group.this.priority
}

output "application_rule_collection" {
  value = azurerm_firewall_policy_rule_collection_group.this.application_rule_collection
}

output "nat_rule_collection" {
  value = azurerm_firewall_policy_rule_collection_group.this.nat_rule_collection
}

output "network_rule_collection" {
  value = azurerm_firewall_policy_rule_collection_group.this.network_rule_collection
}

output "id" {
  description = "The ID of the Firewall Policy Rule Collection Group."
  value       = azurerm_firewall_policy_rule_collection_group.this.id
}

