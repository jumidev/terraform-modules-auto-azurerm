output "name" {
  value = azurerm_dns_caa_record.this.name
}

output "resource_group_name" {
  value = azurerm_dns_caa_record.this.resource_group_name
}

output "zone_name" {
  value = azurerm_dns_caa_record.this.zone_name
}

output "ttl" {
  value = azurerm_dns_caa_record.this.ttl
}

output "value" {
  description = "A property value such as a registrar domain. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_dns_caa_record.this.value
}

output "id" {
  description = "The DNS CAA Record ID."
  value       = azurerm_dns_caa_record.this.id
}

output "fqdn" {
  description = "The FQDN of the DNS CAA Record."
  value       = azurerm_dns_caa_record.this.fqdn
}

