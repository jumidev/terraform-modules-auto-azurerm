output "name" {
  value = azurerm_private_dns_cname_record.this.name
}

output "resource_group_name" {
  value = azurerm_private_dns_cname_record.this.resource_group_name
}

output "zone_name" {
  value = azurerm_private_dns_cname_record.this.zone_name
}

output "ttl" {
  value = azurerm_private_dns_cname_record.this.ttl
}

output "record" {
  value = azurerm_private_dns_cname_record.this.record
}

output "tags" {
  value = azurerm_private_dns_cname_record.this.tags
}

output "id" {
  description = "The Private DNS CNAME Record ID."
  value       = azurerm_private_dns_cname_record.this.id
}

output "fqdn" {
  description = "The FQDN of the DNS CNAME Record."
  value       = azurerm_private_dns_cname_record.this.fqdn
}

