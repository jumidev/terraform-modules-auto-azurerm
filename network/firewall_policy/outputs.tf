output "location" {
  value = azurerm_firewall_policy.this.location
}

output "name" {
  value = azurerm_firewall_policy.this.name
}

output "resource_group_name" {
  value = azurerm_firewall_policy.this.resource_group_name
}

output "base_policy_id" {
  value = azurerm_firewall_policy.this.base_policy_id
}

output "dns" {
  value = azurerm_firewall_policy.this.dns
}

output "identity" {
  value = azurerm_firewall_policy.this.identity
}

output "insights" {
  value = azurerm_firewall_policy.this.insights
}

output "intrusion_detection" {
  value = azurerm_firewall_policy.this.intrusion_detection
}

output "private_ip_ranges" {
  value = azurerm_firewall_policy.this.private_ip_ranges
}

output "auto_learn_private_ranges_enabled" {
  value = azurerm_firewall_policy.this.auto_learn_private_ranges_enabled
}

output "sku" {
  value = azurerm_firewall_policy.this.sku
}

output "tags" {
  value = azurerm_firewall_policy.this.tags
}

output "threat_intelligence_allowlist" {
  value = azurerm_firewall_policy.this.threat_intelligence_allowlist
}

output "threat_intelligence_mode" {
  value = azurerm_firewall_policy.this.threat_intelligence_mode
}

output "tls_certificate" {
  value = azurerm_firewall_policy.this.tls_certificate
}

output "sql_redirect_allowed" {
  value = azurerm_firewall_policy.this.sql_redirect_allowed
}

output "explicit_proxy" {
  value = azurerm_firewall_policy.this.explicit_proxy
}

output "pac_file" {
  description = "Specifies a SAS URL for PAC file. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_firewall_policy.this.pac_file
}

output "id" {
  description = "The ID of the Firewall Policy."
  value       = azurerm_firewall_policy.this.id
}

output "child_policies" {
  description = "A list of reference to child Firewall Policies of this Firewall Policy."
  value       = azurerm_firewall_policy.this.child_policies
}

output "firewalls" {
  description = "A list of references to Azure Firewalls that this Firewall Policy is associated with."
  value       = azurerm_firewall_policy.this.firewalls
}

output "rule_collection_groups" {
  description = "A list of references to Firewall Policy Rule Collection Groups that belongs to this Firewall Policy."
  value       = azurerm_firewall_policy.this.rule_collection_groups
}

