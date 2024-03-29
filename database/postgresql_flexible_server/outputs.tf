output "name" {
  value = azurerm_postgresql_flexible_server.this.name
}

output "resource_group_name" {
  value = azurerm_postgresql_flexible_server.this.resource_group_name
}

output "location" {
  value = azurerm_postgresql_flexible_server.this.location
}

output "administrator_login" {
  value = azurerm_postgresql_flexible_server.this.administrator_login
}

output "administrator_password" {
  value     = random_string.administrator_password.result
  sensitive = true
}

output "authentication" {
  value = azurerm_postgresql_flexible_server.this.authentication
}

output "backup_retention_days" {
  value = azurerm_postgresql_flexible_server.this.backup_retention_days
}

output "customer_managed_key" {
  value = azurerm_postgresql_flexible_server.this.customer_managed_key
}

output "geo_redundant_backup_enabled" {
  value = azurerm_postgresql_flexible_server.this.geo_redundant_backup_enabled
}

output "create_mode" {
  value = azurerm_postgresql_flexible_server.this.create_mode
}

output "delegated_subnet_id" {
  value = azurerm_postgresql_flexible_server.this.delegated_subnet_id
}

output "private_dns_zone_id" {
  value = azurerm_postgresql_flexible_server.this.private_dns_zone_id
}

output "high_availability" {
  value = azurerm_postgresql_flexible_server.this.high_availability
}

output "identity" {
  value = azurerm_postgresql_flexible_server.this.identity
}

output "maintenance_window" {
  value = azurerm_postgresql_flexible_server.this.maintenance_window
}

output "point_in_time_restore_time_in_utc" {
  value = azurerm_postgresql_flexible_server.this.point_in_time_restore_time_in_utc
}

output "replication_role" {
  value = azurerm_postgresql_flexible_server.this.replication_role
}

output "sku_name" {
  value = azurerm_postgresql_flexible_server.this.sku_name
}

output "source_server_id" {
  value = azurerm_postgresql_flexible_server.this.source_server_id
}

output "auto_grow_enabled" {
  value = azurerm_postgresql_flexible_server.this.auto_grow_enabled
}

output "storage_mb" {
  value = azurerm_postgresql_flexible_server.this.storage_mb
}

output "tags" {
  value = azurerm_postgresql_flexible_server.this.tags
}

output "version" {
  value = azurerm_postgresql_flexible_server.this.version
}

output "zone" {
  value = azurerm_postgresql_flexible_server.this.zone
}

output "standby_availability_zone" {
  description = "Specifies the Availability Zone in which the standby Flexible Server should be located. -> **Note:** Azure will automatically assign an Availability Zone if one is not specified. If the PostgreSQL Flexible Server fails-over to the Standby Availability Zone, the 'zone' will be updated to reflect the current Primary Availability Zone. You can use [Terraform's 'ignore_changes' functionality](https://www.terraform.io/docs/language/meta-arguments/lifecycle.html#ignore_changes) to ignore changes to the 'zone' and 'high_availability.0.standby_availability_zone' fields should you wish for Terraform to not migrate the PostgreSQL Flexible Server back to it's primary Availability Zone after a fail-over. -> **Note:** The Availability Zones available depend on the Azure Region that the PostgreSQL Flexible Server is being deployed into - see [the Azure Availability Zones documentation](https://azure.microsoft.com/global-infrastructure/geographies/#geographies) for more information on which Availability Zones are available in each Azure Region. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_postgresql_flexible_server.this.standby_availability_zone
}

output "id" {
  description = "The ID of the PostgreSQL Flexible Server."
  value       = azurerm_postgresql_flexible_server.this.id
}

output "fqdn" {
  description = "The FQDN of the PostgreSQL Flexible Server."
  value       = azurerm_postgresql_flexible_server.this.fqdn
}

output "public_network_access_enabled" {
  description = "Is public network access enabled?"
  value       = azurerm_postgresql_flexible_server.this.public_network_access_enabled
}

