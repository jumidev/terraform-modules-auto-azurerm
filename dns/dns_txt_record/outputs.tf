output "name" {
  value = azurerm_dns_txt_record.this.name
}

output "resource_group_name" {
  value = azurerm_dns_txt_record.this.resource_group_name
}

output "zone_name" {
  value = azurerm_dns_txt_record.this.zone_name
}

output "ttl" {
  value = azurerm_dns_txt_record.this.ttl
}

output "value" {
  description = "The value of the record. Max length: 4096 characters In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_dns_txt_record.this.value
}

output "id" {
  description = "The DNS TXT Record ID."
  value       = azurerm_dns_txt_record.this.id
}

output "fqdn" {
  description = "The FQDN of the DNS TXT Record."
  value       = azurerm_dns_txt_record.this.fqdn
}

