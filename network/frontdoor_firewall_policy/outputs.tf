output "name" {
  value = azurerm_frontdoor_firewall_policy.this.name
}

output "resource_group_name" {
  value = azurerm_frontdoor_firewall_policy.this.resource_group_name
}

output "enabled" {
  value = azurerm_frontdoor_firewall_policy.this.enabled
}

output "mode" {
  value = azurerm_frontdoor_firewall_policy.this.mode
}

output "redirect_url" {
  value = azurerm_frontdoor_firewall_policy.this.redirect_url
}

output "custom_rule" {
  value = azurerm_frontdoor_firewall_policy.this.custom_rule
}

output "custom_block_response_status_code" {
  value = azurerm_frontdoor_firewall_policy.this.custom_block_response_status_code
}

output "custom_block_response_body" {
  value = azurerm_frontdoor_firewall_policy.this.custom_block_response_body
}

output "managed_rule" {
  value = azurerm_frontdoor_firewall_policy.this.managed_rule
}

output "tags" {
  value = azurerm_frontdoor_firewall_policy.this.tags
}

output "selector" {
  description = "Selector for the value in the 'match_variable' attribute this exclusion applies to. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_frontdoor_firewall_policy.this.selector
}

output "id" {
  description = "The ID of the Front Door Firewall Policy."
  value       = azurerm_frontdoor_firewall_policy.this.id
}

output "location" {
  description = "The Azure Region where this Front Door Firewall Policy exists."
  value       = azurerm_frontdoor_firewall_policy.this.location
}

output "frontend_endpoint_ids" {
  description = "The Frontend Endpoints associated with this Front Door Web Application Firewall policy."
  value       = azurerm_frontdoor_firewall_policy.this.frontend_endpoint_ids
}

