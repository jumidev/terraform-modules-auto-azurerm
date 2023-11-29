output "name" {
  value = azurerm_sql_managed_instance.this.name
}

output "resource_group_name" {
  value = azurerm_sql_managed_instance.this.resource_group_name
}

output "location" {
  value = azurerm_sql_managed_instance.this.location
}

output "sku_name" {
  value = azurerm_sql_managed_instance.this.sku_name
}

output "vcores" {
  value = azurerm_sql_managed_instance.this.vcores
}

output "storage_size_in_gb" {
  value = azurerm_sql_managed_instance.this.storage_size_in_gb
}

output "license_type" {
  value = azurerm_sql_managed_instance.this.license_type
}

output "administrator_login" {
  value = azurerm_sql_managed_instance.this.administrator_login
}

output "administrator_login_password" {
  value     = random_string.administrator_login_password.result
  sensitive = true
}

output "subnet_id" {
  value = azurerm_sql_managed_instance.this.subnet_id
}

output "collation" {
  value = azurerm_sql_managed_instance.this.collation
}

output "public_data_endpoint_enabled" {
  value = azurerm_sql_managed_instance.this.public_data_endpoint_enabled
}

output "minimum_tls_version" {
  value = azurerm_sql_managed_instance.this.minimum_tls_version
}

output "proxy_override" {
  value = azurerm_sql_managed_instance.this.proxy_override
}

output "timezone_id" {
  value = azurerm_sql_managed_instance.this.timezone_id
}

output "dns_zone_partner_id" {
  value = azurerm_sql_managed_instance.this.dns_zone_partner_id
}

output "identity" {
  value = azurerm_sql_managed_instance.this.identity
}

output "storage_account_type" {
  value = azurerm_sql_managed_instance.this.storage_account_type
}

output "tags" {
  value = azurerm_sql_managed_instance.this.tags
}

output "id" {
  description = "The SQL Managed Instance ID."
  value       = azurerm_sql_managed_instance.this.id
}

output "fqdn" {
  description = "The fully qualified domain name of the Azure Managed SQL Instance"
  value       = azurerm_sql_managed_instance.this.fqdn
}

output "identity" {
  description = "An 'identity' block."
  value       = azurerm_sql_managed_instance.this.identity
}

output "principal_id" {
  description = "The Principal ID for the Service Principal associated with the Identity of this SQL Managed Instance."
  value       = azurerm_sql_managed_instance.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID for the Service Principal associated with the Identity of this SQL Managed Instance."
  value       = azurerm_sql_managed_instance.this.tenant_id
}

