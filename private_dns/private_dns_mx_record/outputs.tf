output "name" {
  value = azurerm_private_dns_mx_record.this.name
}

output "resource_group_name" {
  value = azurerm_private_dns_mx_record.this.resource_group_name
}

output "zone_name" {
  value = azurerm_private_dns_mx_record.this.zone_name
}

output "record" {
  value = azurerm_private_dns_mx_record.this.record
}

output "ttl" {
  value = azurerm_private_dns_mx_record.this.ttl
}

output "tags" {
  value = azurerm_private_dns_mx_record.this.tags
}

output "id" {
  description = "The Private DNS MX Record ID."
  value       = azurerm_private_dns_mx_record.this.id
}

output "fqdn" {
  description = "The FQDN of the DNS MX Record."
  value       = azurerm_private_dns_mx_record.this.fqdn
}

