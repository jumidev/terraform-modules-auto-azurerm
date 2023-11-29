output "name" {
  value = azurerm_traffic_manager_profile.this.name
}

output "resource_group_name" {
  value = azurerm_traffic_manager_profile.this.resource_group_name
}

output "profile_status" {
  value = azurerm_traffic_manager_profile.this.profile_status
}

output "traffic_routing_method" {
  value = azurerm_traffic_manager_profile.this.traffic_routing_method
}

output "Geographic" {
  value = azurerm_traffic_manager_profile.this.Geographic
}

output "MultiValue" {
  value = azurerm_traffic_manager_profile.this.MultiValue
}

output "Performance" {
  value = azurerm_traffic_manager_profile.this.Performance
}

output "Priority" {
  value = azurerm_traffic_manager_profile.this.Priority
}

output "Subnet" {
  value = azurerm_traffic_manager_profile.this.Subnet
}

output "Weighted" {
  value = azurerm_traffic_manager_profile.this.Weighted
}

output "traffic_view_enabled" {
  value = azurerm_traffic_manager_profile.this.traffic_view_enabled
}

output "dns_config" {
  value = azurerm_traffic_manager_profile.this.dns_config
}

output "monitor_config" {
  value = azurerm_traffic_manager_profile.this.monitor_config
}

output "max_return" {
  value = azurerm_traffic_manager_profile.this.max_return
}

output "tags" {
  value = azurerm_traffic_manager_profile.this.tags
}

output "id" {
  description = "The ID of the Traffic Manager Profile."
  value       = azurerm_traffic_manager_profile.this.id
}

output "fqdn" {
  description = "The FQDN of the created Profile."
  value       = azurerm_traffic_manager_profile.this.fqdn
}

