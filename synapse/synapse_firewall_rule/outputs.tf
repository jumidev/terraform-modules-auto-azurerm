output "name" {
  value = azurerm_synapse_firewall_rule.this.name
}

output "synapse_workspace_id" {
  value = azurerm_synapse_firewall_rule.this.synapse_workspace_id
}

output "start_ip_address" {
  value = azurerm_synapse_firewall_rule.this.start_ip_address
}

output "end_ip_address" {
  value = azurerm_synapse_firewall_rule.this.end_ip_address
}

output "id" {
  description = "The Synapse Firewall Rule ID."
  value       = azurerm_synapse_firewall_rule.this.id
}

