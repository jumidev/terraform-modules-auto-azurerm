output "name" {
  value = azurerm_private_dns_txt_record.this.name
}

output "resource_group_name" {
  value = azurerm_private_dns_txt_record.this.resource_group_name
}

output "zone_name" {
  value = azurerm_private_dns_txt_record.this.zone_name
}

output "record" {
  value = azurerm_private_dns_txt_record.this.record
}

output "ttl" {
  value = azurerm_private_dns_txt_record.this.ttl
}

output "tags" {
  value = azurerm_private_dns_txt_record.this.tags
}

output "value" {
  description = "The value of the TXT record. Max length: 1024 characters In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_private_dns_txt_record.this.value
}

output "id" {
  description = "The Private DNS TXT Record ID."
  value       = azurerm_private_dns_txt_record.this.id
}

output "fqdn" {
  description = "The FQDN of the DNS TXT Record."
  value       = azurerm_private_dns_txt_record.this.fqdn
}

