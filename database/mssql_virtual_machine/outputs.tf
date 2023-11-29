output "virtual_machine_id" {
  value = azurerm_mssql_virtual_machine.this.virtual_machine_id
}

output "sql_license_type" {
  value = azurerm_mssql_virtual_machine.this.sql_license_type
}

output "auto_backup" {
  value = azurerm_mssql_virtual_machine.this.auto_backup
}

output "auto_patching" {
  value = azurerm_mssql_virtual_machine.this.auto_patching
}

output "key_vault_credential" {
  value = azurerm_mssql_virtual_machine.this.key_vault_credential
}

output "r_services_enabled" {
  value = azurerm_mssql_virtual_machine.this.r_services_enabled
}

output "sql_connectivity_port" {
  value = azurerm_mssql_virtual_machine.this.sql_connectivity_port
}

output "sql_connectivity_type" {
  value = azurerm_mssql_virtual_machine.this.sql_connectivity_type
}

output "sql_connectivity_update_password" {
  value     = random_string.sql_connectivity_update_password.result
  sensitive = true
}

output "sql_connectivity_update_username" {
  value = azurerm_mssql_virtual_machine.this.sql_connectivity_update_username
}

output "sql_instance" {
  value = azurerm_mssql_virtual_machine.this.sql_instance
}

output "storage_configuration" {
  value = azurerm_mssql_virtual_machine.this.storage_configuration
}

output "assessment" {
  value = azurerm_mssql_virtual_machine.this.assessment
}

output "sql_virtual_machine_group_id" {
  value = azurerm_mssql_virtual_machine.this.sql_virtual_machine_group_id
}

output "wsfc_domain_credential" {
  value = azurerm_mssql_virtual_machine.this.wsfc_domain_credential
}

output "tags" {
  value = azurerm_mssql_virtual_machine.this.tags
}

output "id" {
  description = "The ID of the SQL Virtual Machine."
  value       = azurerm_mssql_virtual_machine.this.id
}

