output "name" {
  value = azurerm_cdn_frontdoor_firewall_policy.this.name
}

output "resource_group_name" {
  value = azurerm_cdn_frontdoor_firewall_policy.this.resource_group_name
}

output "sku_name" {
  value = azurerm_cdn_frontdoor_firewall_policy.this.sku_name
}

output "enabled" {
  value = azurerm_cdn_frontdoor_firewall_policy.this.enabled
}

output "mode" {
  value = azurerm_cdn_frontdoor_firewall_policy.this.mode
}

output "request_body_check_enabled" {
  value = azurerm_cdn_frontdoor_firewall_policy.this.request_body_check_enabled
}

output "redirect_url" {
  value = azurerm_cdn_frontdoor_firewall_policy.this.redirect_url
}

output "custom_rule" {
  value = azurerm_cdn_frontdoor_firewall_policy.this.custom_rule
}

output "custom_block_response_status_code" {
  value = azurerm_cdn_frontdoor_firewall_policy.this.custom_block_response_status_code
}

output "custom_block_response_body" {
  value = azurerm_cdn_frontdoor_firewall_policy.this.custom_block_response_body
}

output "managed_rule" {
  value = azurerm_cdn_frontdoor_firewall_policy.this.managed_rule
}

output "tags" {
  value = azurerm_cdn_frontdoor_firewall_policy.this.tags
}

output "selector" {
  description = "Selector for the value in the 'match_variable' attribute this exclusion applies to. -> **NOTE:** 'selector' must be set to '*' if 'operator' is set to 'EqualsAny'. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_cdn_frontdoor_firewall_policy.this.selector
}

output "id" {
  description = "The ID of the Front Door Firewall Policy."
  value       = azurerm_cdn_frontdoor_firewall_policy.this.id
}

output "frontend_endpoint_ids" {
  description = "The Front Door Profiles frontend endpoints associated with this Front Door Firewall Policy."
  value       = azurerm_cdn_frontdoor_firewall_policy.this.frontend_endpoint_ids
}

