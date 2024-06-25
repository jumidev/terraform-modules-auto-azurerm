output "name" {
  value = azurerm_dns_ptr_record.this.name
}

output "resource_group_name" {
  value = azurerm_dns_ptr_record.this.resource_group_name
}

output "zone_name" {
  value = azurerm_dns_ptr_record.this.zone_name
}

output "ttl" {
  value = azurerm_dns_ptr_record.this.ttl
}

output "records" {
  value = azurerm_dns_ptr_record.this.records
}

output "tags" {
  value = azurerm_dns_ptr_record.this.tags
}

output "id" {
  description = "The DNS PTR Record ID."
  value       = azurerm_dns_ptr_record.this.id
}

output "fqdn" {
  description = "The FQDN of the DNS PTR Record."
  value       = azurerm_dns_ptr_record.this.fqdn
}

