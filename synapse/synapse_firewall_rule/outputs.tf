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

output "end_ip_address" {
  description = "The ending IP address to allow through the firewall for this rule. -> **NOTE:** The Azure feature 'Allow access to Azure services' can be enabled by setting 'start_ip_address' and 'end_ip_address' to '0.0.0.0'. -> **NOTE:** The Azure feature 'Allow access to Azure services' requires the 'name' to be 'AllowAllWindowsAzureIps'. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_synapse_firewall_rule.this.end_ip_address
}

output "id" {
  description = "The Synapse Firewall Rule ID."
  value       = azurerm_synapse_firewall_rule.this.id
}

