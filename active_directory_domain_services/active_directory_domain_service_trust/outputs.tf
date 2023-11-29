output "domain_service_id" {
  value = azurerm_active_directory_domain_service_trust.this.domain_service_id
}

output "name" {
  value = azurerm_active_directory_domain_service_trust.this.name
}

output "password" {
  value     = azurerm_active_directory_domain_service_trust.this.password
  sensitive = true
}

output "trusted_domain_dns_ips" {
  value = azurerm_active_directory_domain_service_trust.this.trusted_domain_dns_ips
}

output "trusted_domain_fqdn" {
  value = azurerm_active_directory_domain_service_trust.this.trusted_domain_fqdn
}

output "id" {
  description = "The ID of the Active Directory Domain Service Trust."
  value       = azurerm_active_directory_domain_service_trust.this.id
}

