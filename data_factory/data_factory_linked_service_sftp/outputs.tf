output "name" {
  value = azurerm_data_factory_linked_service_sftp.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_linked_service_sftp.this.data_factory_id
}

output "description" {
  value = azurerm_data_factory_linked_service_sftp.this.description
}

output "integration_runtime_name" {
  value = azurerm_data_factory_linked_service_sftp.this.integration_runtime_name
}

output "annotations" {
  value = azurerm_data_factory_linked_service_sftp.this.annotations
}

output "parameters" {
  value = azurerm_data_factory_linked_service_sftp.this.parameters
}

output "additional_properties" {
  value = azurerm_data_factory_linked_service_sftp.this.additional_properties
}

output "authentication_type" {
  value = azurerm_data_factory_linked_service_sftp.this.authentication_type
}

output "host" {
  value = azurerm_data_factory_linked_service_sftp.this.host
}

output "port" {
  value = azurerm_data_factory_linked_service_sftp.this.port
}

output "username" {
  value = azurerm_data_factory_linked_service_sftp.this.username
}

output "password" {
  value     = azurerm_data_factory_linked_service_sftp.this.password
  sensitive = true
}

output "host_key_fingerprint" {
  value = azurerm_data_factory_linked_service_sftp.this.host_key_fingerprint
}

output "skip_host_key_validation" {
  value = azurerm_data_factory_linked_service_sftp.this.skip_host_key_validation
}

output "id" {
  description = "The ID of the Data Factory Linked Service."
  value       = azurerm_data_factory_linked_service_sftp.this.id
}

