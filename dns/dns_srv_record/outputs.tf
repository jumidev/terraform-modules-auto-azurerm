output "name" {
  value = azurerm_dns_srv_record.this.name
}

output "resource_group_name" {
  value = azurerm_dns_srv_record.this.resource_group_name
}

output "zone_name" {
  value = azurerm_dns_srv_record.this.zone_name
}

output "ttl" {
  value = azurerm_dns_srv_record.this.ttl
}

output "target" {
  description = "FQDN of the service. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_dns_srv_record.this.target
}

output "id" {
  description = "The DNS SRV Record ID."
  value       = azurerm_dns_srv_record.this.id
}

output "fqdn" {
  description = "The FQDN of the DNS SRV Record."
  value       = azurerm_dns_srv_record.this.fqdn
}

