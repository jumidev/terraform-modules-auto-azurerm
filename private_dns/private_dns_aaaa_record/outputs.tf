output "name" {
  value = azurerm_private_dns_aaaa_record.this.name
}

output "resource_group_name" {
  value = azurerm_private_dns_aaaa_record.this.resource_group_name
}

output "zone_name" {
  value = azurerm_private_dns_aaaa_record.this.zone_name
}

output "ttl" {
  value = azurerm_private_dns_aaaa_record.this.ttl
}

output "records" {
  value = azurerm_private_dns_aaaa_record.this.records
}

output "tags" {
  value = azurerm_private_dns_aaaa_record.this.tags
}

output "id" {
  description = "The Private DNS AAAA Record ID."
  value       = azurerm_private_dns_aaaa_record.this.id
}

output "fqdn" {
  description = "The FQDN of the DNS AAAA Record."
  value       = azurerm_private_dns_aaaa_record.this.fqdn
}

