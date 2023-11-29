output "name" {
  value = azurerm_private_dns_a_record.this.name
}

output "resource_group_name" {
  value = azurerm_private_dns_a_record.this.resource_group_name
}

output "zone_name" {
  value = azurerm_private_dns_a_record.this.zone_name
}

output "ttl" {
  value = azurerm_private_dns_a_record.this.ttl
}

output "records" {
  value = azurerm_private_dns_a_record.this.records
}

output "tags" {
  value = azurerm_private_dns_a_record.this.tags
}

output "id" {
  description = "The Private DNS A Record ID."
  value       = azurerm_private_dns_a_record.this.id
}

output "fqdn" {
  description = "The FQDN of the DNS A Record."
  value       = azurerm_private_dns_a_record.this.fqdn
}

