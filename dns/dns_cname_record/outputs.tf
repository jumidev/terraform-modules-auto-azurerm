output "name" {
  value = azurerm_dns_cname_record.this.name
}

output "resource_group_name" {
  value = azurerm_dns_cname_record.this.resource_group_name
}

output "zone_name" {
  value = azurerm_dns_cname_record.this.zone_name
}

output "ttl" {
  value = azurerm_dns_cname_record.this.ttl
}

output "record" {
  value = azurerm_dns_cname_record.this.record
}

output "target_resource_id" {
  value = azurerm_dns_cname_record.this.target_resource_id
}

output "tags" {
  value = azurerm_dns_cname_record.this.tags
}

output "tags" {
  description = "A mapping of tags to assign to the resource. ~> **Note:** either 'record' OR 'target_resource_id' must be specified, but not both. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_dns_cname_record.this.tags
}

output "id" {
  description = "The DNS CName Record ID."
  value       = azurerm_dns_cname_record.this.id
}

output "fqdn" {
  description = "The FQDN of the DNS CName Record. ~> **Note:** The FQDN of the DNS CNAME Record which has a full-stop at the end is by design. Please see the documentation for more information."
  value       = azurerm_dns_cname_record.this.fqdn
}

