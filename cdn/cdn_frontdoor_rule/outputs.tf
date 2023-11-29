output "name" {
  value = azurerm_cdn_frontdoor_rule.this.name
}

output "cdn_frontdoor_rule_set_id" {
  value = azurerm_cdn_frontdoor_rule.this.cdn_frontdoor_rule_set_id
}

output "order" {
  value = azurerm_cdn_frontdoor_rule.this.order
}

output "actions" {
  value = azurerm_cdn_frontdoor_rule.this.actions
}

output "behavior_on_match" {
  value = azurerm_cdn_frontdoor_rule.this.behavior_on_match
}

output "conditions" {
  value = azurerm_cdn_frontdoor_rule.this.conditions
}

output "id" {
  description = "The ID of the Front Door Rule."
  value       = azurerm_cdn_frontdoor_rule.this.id
}

output "cdn_frontdoor_rule_set_name" {
  description = "The name of the Front Door Rule Set containing this Front Door Rule."
  value       = azurerm_cdn_frontdoor_rule.this.cdn_frontdoor_rule_set_name
}

