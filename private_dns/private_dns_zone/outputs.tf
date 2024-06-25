output "name" {
  value = azurerm_private_dns_zone.this.name
}

output "resource_group_name" {
  value = azurerm_private_dns_zone.this.resource_group_name
}

output "soa_record" {
  value = azurerm_private_dns_zone.this.soa_record
}

output "tags" {
  value = azurerm_private_dns_zone.this.tags
}

output "id" {
  description = "The Private DNS Zone ID."
  value       = azurerm_private_dns_zone.this.id
}

output "number_of_record_sets" {
  description = "The current number of record sets in this Private DNS zone."
  value       = azurerm_private_dns_zone.this.number_of_record_sets
}

output "max_number_of_record_sets" {
  description = "The maximum number of record sets that can be created in this Private DNS zone."
  value       = azurerm_private_dns_zone.this.max_number_of_record_sets
}

output "max_number_of_virtual_network_links" {
  description = "The maximum number of virtual networks that can be linked to this Private DNS zone."
  value       = azurerm_private_dns_zone.this.max_number_of_virtual_network_links
}

output "max_number_of_virtual_network_links_with_registration" {
  description = "The maximum number of virtual networks that can be linked to this Private DNS zone with registration enabled."
  value       = azurerm_private_dns_zone.this.max_number_of_virtual_network_links_with_registration
}

output "fqdn" {
  description = "The fully qualified domain name of the Record Set."
  value       = azurerm_private_dns_zone.this.fqdn
}

output "host_name" {
  description = "The domain name of the authoritative name server for the SOA record."
  value       = azurerm_private_dns_zone.this.host_name
}

output "serial_number" {
  description = "The serial number for the SOA record."
  value       = azurerm_private_dns_zone.this.serial_number
}

output "private_dns_zone_virtual_network_link" {
  value = var.private_dns_zone_virtual_network_link
}

