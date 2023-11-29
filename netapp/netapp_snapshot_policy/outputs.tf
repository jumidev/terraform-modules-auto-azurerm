output "name" {
  value = azurerm_netapp_snapshot_policy.this.name
}

output "resource_group_name" {
  value = azurerm_netapp_snapshot_policy.this.resource_group_name
}

output "location" {
  value = azurerm_netapp_snapshot_policy.this.location
}

output "account_name" {
  value = azurerm_netapp_snapshot_policy.this.account_name
}

output "enabled" {
  value = azurerm_netapp_snapshot_policy.this.enabled
}

output "hourly_schedule" {
  value = azurerm_netapp_snapshot_policy.this.hourly_schedule
}

output "daily_schedule" {
  value = azurerm_netapp_snapshot_policy.this.daily_schedule
}

output "weekly_schedule" {
  value = azurerm_netapp_snapshot_policy.this.weekly_schedule
}

output "monthly_schedule" {
  value = azurerm_netapp_snapshot_policy.this.monthly_schedule
}

output "tags" {
  value = azurerm_netapp_snapshot_policy.this.tags
}

output "id" {
  description = "The ID of the NetApp Snapshot."
  value       = azurerm_netapp_snapshot_policy.this.id
}

output "name" {
  description = "The name of the NetApp Snapshot Policy. Changing this forces a new resource to be created."
  value       = azurerm_netapp_snapshot_policy.this.name
}

output "resource_group_name" {
  description = "The name of the resource group where the NetApp Snapshot Policy should be created."
  value       = azurerm_netapp_snapshot_policy.this.resource_group_name
}

output "location" {
  description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  value       = azurerm_netapp_snapshot_policy.this.location
}

output "account_name" {
  description = "The name of the NetApp Account in which the NetApp Snapshot Policy was created. Changing this forces a new resource to be created."
  value       = azurerm_netapp_snapshot_policy.this.account_name
}

output "enabled" {
  description = "Defines that the NetApp Snapshot Policy is enabled or not."
  value       = azurerm_netapp_snapshot_policy.this.enabled
}

output "hourly_schedule" {
  description = "Hourly snapshot schedule."
  value       = azurerm_netapp_snapshot_policy.this.hourly_schedule
}

output "daily_schedule" {
  description = "Daily snapshot schedule."
  value       = azurerm_netapp_snapshot_policy.this.daily_schedule
}

output "weekly_schedule" {
  description = "Weekly snapshot schedule."
  value       = azurerm_netapp_snapshot_policy.this.weekly_schedule
}

output "monthly_schedule" {
  description = "Monthly snapshot schedule."
  value       = azurerm_netapp_snapshot_policy.this.monthly_schedule
}

