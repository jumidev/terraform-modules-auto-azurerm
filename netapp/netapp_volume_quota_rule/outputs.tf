output "location" {
  value = azurerm_netapp_volume_quota_rule.this.location
}

output "name" {
  value = azurerm_netapp_volume_quota_rule.this.name
}

output "volume_id" {
  value = azurerm_netapp_volume_quota_rule.this.volume_id
}

output "quota_size_in_kib" {
  value = azurerm_netapp_volume_quota_rule.this.quota_size_in_kib
}

output "quota_type" {
  value = azurerm_netapp_volume_quota_rule.this.quota_type
}

output "quota_target" {
  value = azurerm_netapp_volume_quota_rule.this.quota_target
}

output "id" {
  description = "The ID of the Volume Quota Rule."
  value       = azurerm_netapp_volume_quota_rule.this.id
}

