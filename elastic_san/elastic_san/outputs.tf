output "name" {
  value = azurerm_elastic_san.this.name
}

output "resource_group_name" {
  value = azurerm_elastic_san.this.resource_group_name
}

output "location" {
  value = azurerm_elastic_san.this.location
}

output "base_size_in_tib" {
  value = azurerm_elastic_san.this.base_size_in_tib
}

output "sku" {
  value = azurerm_elastic_san.this.sku
}

output "extended_size_in_tib" {
  value = azurerm_elastic_san.this.extended_size_in_tib
}

output "zones" {
  value = azurerm_elastic_san.this.zones
}

output "tags" {
  value = azurerm_elastic_san.this.tags
}

output "id" {
  description = "The ID of the Elastic SAN resource."
  value       = azurerm_elastic_san.this.id
}

output "total_iops" {
  description = "Total Provisioned IOps of the Elastic SAN resource."
  value       = azurerm_elastic_san.this.total_iops
}

output "total_mbps" {
  description = "Total Provisioned MBps Elastic SAN resource."
  value       = azurerm_elastic_san.this.total_mbps
}

output "total_size_in_tib" {
  description = "Total size of the Elastic SAN resource in TB."
  value       = azurerm_elastic_san.this.total_size_in_tib
}

output "total_volume_size_in_gib" {
  description = "Total size of the provisioned Volumes in GiB."
  value       = azurerm_elastic_san.this.total_volume_size_in_gib
}

output "volume_group_count" {
  description = "Total number of volume groups in this Elastic SAN resource."
  value       = azurerm_elastic_san.this.volume_group_count
}

