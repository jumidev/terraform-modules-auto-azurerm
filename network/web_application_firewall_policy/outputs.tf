output "name" {
  value = azurerm_web_application_firewall_policy.this.name
}

output "resource_group_name" {
  value = azurerm_web_application_firewall_policy.this.resource_group_name
}

output "location" {
  value = azurerm_web_application_firewall_policy.this.location
}

output "custom_rules" {
  value = azurerm_web_application_firewall_policy.this.custom_rules
}

output "policy_settings" {
  value = azurerm_web_application_firewall_policy.this.policy_settings
}

output "managed_rules" {
  value = azurerm_web_application_firewall_policy.this.managed_rules
}

output "tags" {
  value = azurerm_web_application_firewall_policy.this.tags
}

output "selector" {
  description = "Specifies which elements in the collection this rule applies to. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_web_application_firewall_policy.this.selector
}

output "id" {
  description = "The ID of the Web Application Firewall Policy."
  value       = azurerm_web_application_firewall_policy.this.id
}

output "http_listener_ids" {
  description = "A list of HTTP Listener IDs from an 'azurerm_application_gateway'."
  value       = azurerm_web_application_firewall_policy.this.http_listener_ids
}

output "path_based_rule_ids" {
  description = "A list of URL Path Map Path Rule IDs from an 'azurerm_application_gateway'."
  value       = azurerm_web_application_firewall_policy.this.path_based_rule_ids
}

