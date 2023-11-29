output "administrator_login" {
  value = azurerm_mssql_managed_instance.this.administrator_login
}

output "administrator_login_password" {
  value     = random_string.administrator_login_password.result
  sensitive = true
}

output "license_type" {
  value = azurerm_mssql_managed_instance.this.license_type
}

output "location" {
  value = azurerm_mssql_managed_instance.this.location
}

output "name" {
  value = azurerm_mssql_managed_instance.this.name
}

output "resource_group_name" {
  value = azurerm_mssql_managed_instance.this.resource_group_name
}

output "sku_name" {
  value = azurerm_mssql_managed_instance.this.sku_name
}

output "storage_size_in_gb" {
  value = azurerm_mssql_managed_instance.this.storage_size_in_gb
}

output "subnet_id" {
  value = azurerm_mssql_managed_instance.this.subnet_id
}

output "vcores" {
  value = azurerm_mssql_managed_instance.this.vcores
}

output "collation" {
  value = azurerm_mssql_managed_instance.this.collation
}

output "dns_zone_partner_id" {
  value = azurerm_mssql_managed_instance.this.dns_zone_partner_id
}

output "identity" {
  value = azurerm_mssql_managed_instance.this.identity
}

output "maintenance_configuration_name" {
  value = azurerm_mssql_managed_instance.this.maintenance_configuration_name
}

output "minimum_tls_version" {
  value = azurerm_mssql_managed_instance.this.minimum_tls_version
}

output "proxy_override" {
  value = azurerm_mssql_managed_instance.this.proxy_override
}

output "public_data_endpoint_enabled" {
  value = azurerm_mssql_managed_instance.this.public_data_endpoint_enabled
}

output "storage_account_type" {
  value = azurerm_mssql_managed_instance.this.storage_account_type
}

output "tags" {
  value = azurerm_mssql_managed_instance.this.tags
}

output "timezone_id" {
  value = azurerm_mssql_managed_instance.this.timezone_id
}

output "id" {
  description = "The SQL Managed Instance ID."
  value       = azurerm_mssql_managed_instance.this.id
}

output "fqdn" {
  description = "The fully qualified domain name of the Azure Managed SQL Instance"
  value       = azurerm_mssql_managed_instance.this.fqdn
}

output "principal_id" {
  description = "The Principal ID for the Service Principal associated with the Identity of this SQL Managed Instance."
  value       = azurerm_mssql_managed_instance.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID for the Service Principal associated with the Identity of this SQL Managed Instance."
  value       = azurerm_mssql_managed_instance.this.tenant_id
}

