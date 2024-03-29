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

output "value" {
  description = "Specifies the value of the value. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_firewall_policy_rule_collection_group.this.value
}

output "id" {
  description = "The ID of the Firewall Policy Rule Collection Group."
  value       = azurerm_firewall_policy_rule_collection_group.this.id
}

