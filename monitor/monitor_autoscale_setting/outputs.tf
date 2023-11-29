output "name" {
  value = azurerm_monitor_autoscale_setting.this.name
}

output "resource_group_name" {
  value = azurerm_monitor_autoscale_setting.this.resource_group_name
}

output "location" {
  value = azurerm_monitor_autoscale_setting.this.location
}

output "profile" {
  value = azurerm_monitor_autoscale_setting.this.profile
}

output "target_resource_id" {
  value = azurerm_monitor_autoscale_setting.this.target_resource_id
}

output "enabled" {
  value = azurerm_monitor_autoscale_setting.this.enabled
}

output "notification" {
  value = azurerm_monitor_autoscale_setting.this.notification
}

output "predictive" {
  value = azurerm_monitor_autoscale_setting.this.predictive
}

output "tags" {
  value = azurerm_monitor_autoscale_setting.this.tags
}

output "id" {
  description = "The ID of the AutoScale Setting."
  value       = azurerm_monitor_autoscale_setting.this.id
}

