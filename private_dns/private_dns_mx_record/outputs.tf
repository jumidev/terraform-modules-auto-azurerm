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

output "exchange" {
  description = "The FQDN of the exchange to MX record points to. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_private_dns_mx_record.this.exchange
}

output "id" {
  description = "The Private DNS MX Record ID."
  value       = azurerm_private_dns_mx_record.this.id
}

output "fqdn" {
  description = "The FQDN of the DNS MX Record."
  value       = azurerm_private_dns_mx_record.this.fqdn
}

