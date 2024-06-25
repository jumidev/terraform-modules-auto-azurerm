output "name" {
  value = azurerm_dns_ns_record.this.name
}

output "resource_group_name" {
  value = azurerm_dns_ns_record.this.resource_group_name
}

output "zone_name" {
  value = azurerm_dns_ns_record.this.zone_name
}

output "ttl" {
  value = azurerm_dns_ns_record.this.ttl
}

output "records" {
  value = azurerm_dns_ns_record.this.records
}

output "tags" {
  value = azurerm_dns_ns_record.this.tags
}

output "id" {
  description = "The DNS NS Record ID."
  value       = azurerm_dns_ns_record.this.id
}

output "fqdn" {
  description = "The FQDN of the DNS NS Record."
  value       = azurerm_dns_ns_record.this.fqdn
}

