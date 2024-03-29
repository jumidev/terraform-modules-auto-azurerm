output "name" {
  value = azurerm_dns_aaaa_record.this.name
}

output "resource_group_name" {
  value = azurerm_dns_aaaa_record.this.resource_group_name
}

output "zone_name" {
  value = azurerm_dns_aaaa_record.this.zone_name
}

output "ttl" {
  value = azurerm_dns_aaaa_record.this.ttl
}

output "records" {
  value = azurerm_dns_aaaa_record.this.records
}

output "target_resource_id" {
  value = azurerm_dns_aaaa_record.this.target_resource_id
}

output "tags" {
  value = azurerm_dns_aaaa_record.this.tags
}

output "tags" {
  description = "A mapping of tags to assign to the resource. ~> **Note:** either 'records' OR 'target_resource_id' must be specified, but not both. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_dns_aaaa_record.this.tags
}

output "id" {
  description = "The DNS AAAA Record ID."
  value       = azurerm_dns_aaaa_record.this.id
}

output "fqdn" {
  description = "The FQDN of the DNS AAAA Record."
  value       = azurerm_dns_aaaa_record.this.fqdn
}

