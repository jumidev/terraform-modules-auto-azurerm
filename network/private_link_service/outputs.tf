output "name" {
  value = azurerm_private_link_service.this.name
}

output "resource_group_name" {
  value = azurerm_private_link_service.this.resource_group_name
}

output "location" {
  value = azurerm_private_link_service.this.location
}

output "nat_ip_configuration" {
  value = azurerm_private_link_service.this.nat_ip_configuration
}

output "load_balancer_frontend_ip_configuration_ids" {
  value = azurerm_private_link_service.this.load_balancer_frontend_ip_configuration_ids
}

output "auto_approval_subscription_ids" {
  value = azurerm_private_link_service.this.auto_approval_subscription_ids
}

output "enable_proxy_protocol" {
  value = azurerm_private_link_service.this.enable_proxy_protocol
}

output "fqdns" {
  value = azurerm_private_link_service.this.fqdns
}

output "tags" {
  value = azurerm_private_link_service.this.tags
}

output "visibility_subscription_ids" {
  value = azurerm_private_link_service.this.visibility_subscription_ids
}

output "alias" {
  description = "A globally unique DNS Name for your Private Link Service. You can use this alias to request a connection to your Private Link Service."
  value       = azurerm_private_link_service.this.alias
}

