output "name" {
  value = azurerm_dns_zone.this.name
}

output "resource_group_name" {
  value = azurerm_dns_zone.this.resource_group_name
}

output "soa_record" {
  value = azurerm_dns_zone.this.soa_record
}

output "tags" {
  value = azurerm_dns_zone.this.tags
}

output "id" {
  description = "The DNS Zone ID."
  value       = azurerm_dns_zone.this.id
}

output "max_number_of_record_sets" {
  description = "Maximum number of Records in the zone. Defaults to '1000'."
  value       = azurerm_dns_zone.this.max_number_of_record_sets
}

output "number_of_record_sets" {
  description = "The number of records already in the zone."
  value       = azurerm_dns_zone.this.number_of_record_sets
}

output "name_servers" {
  description = "A list of values that make up the NS record for the zone."
  value       = azurerm_dns_zone.this.name_servers
}

