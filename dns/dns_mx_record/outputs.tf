output "name" {
  value = azurerm_dns_mx_record.this.name
}

output "resource_group_name" {
  value = azurerm_dns_mx_record.this.resource_group_name
}

output "zone_name" {
  value = azurerm_dns_mx_record.this.zone_name
}

output "ttl" {
  value = azurerm_dns_mx_record.this.ttl
}

output "exchange" {
  description = "The mail server responsible for the domain covered by the MX record. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_dns_mx_record.this.exchange
}

output "id" {
  description = "The DNS MX Record ID."
  value       = azurerm_dns_mx_record.this.id
}

output "fqdn" {
  description = "The FQDN of the DNS MX Record."
  value       = azurerm_dns_mx_record.this.fqdn
}

