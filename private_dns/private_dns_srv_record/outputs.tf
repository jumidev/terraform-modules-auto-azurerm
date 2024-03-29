output "name" {
  value = azurerm_private_dns_srv_record.this.name
}

output "resource_group_name" {
  value = azurerm_private_dns_srv_record.this.resource_group_name
}

output "zone_name" {
  value = azurerm_private_dns_srv_record.this.zone_name
}

output "record" {
  value = azurerm_private_dns_srv_record.this.record
}

output "ttl" {
  value = azurerm_private_dns_srv_record.this.ttl
}

output "tags" {
  value = azurerm_private_dns_srv_record.this.tags
}

output "target" {
  description = "The FQDN of the service. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_private_dns_srv_record.this.target
}

output "id" {
  description = "The Private DNS SRV Record ID."
  value       = azurerm_private_dns_srv_record.this.id
}

output "fqdn" {
  description = "The FQDN of the DNS SRV Record."
  value       = azurerm_private_dns_srv_record.this.fqdn
}

