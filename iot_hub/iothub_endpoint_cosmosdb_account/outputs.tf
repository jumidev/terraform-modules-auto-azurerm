output "name" {
  value = azurerm_iothub_endpoint_cosmosdb_account.this.name
}

output "resource_group_name" {
  value = azurerm_iothub_endpoint_cosmosdb_account.this.resource_group_name
}

output "iothub_id" {
  value = azurerm_iothub_endpoint_cosmosdb_account.this.iothub_id
}

output "container_name" {
  value = azurerm_iothub_endpoint_cosmosdb_account.this.container_name
}

output "database_name" {
  value = azurerm_iothub_endpoint_cosmosdb_account.this.database_name
}

output "endpoint_uri" {
  value = azurerm_iothub_endpoint_cosmosdb_account.this.endpoint_uri
}

output "authentication_type" {
  value = azurerm_iothub_endpoint_cosmosdb_account.this.authentication_type
}

output "identity_id" {
  value = azurerm_iothub_endpoint_cosmosdb_account.this.identity_id
}

output "partition_key_name" {
  value = azurerm_iothub_endpoint_cosmosdb_account.this.partition_key_name
}

output "partition_key_template" {
  value = azurerm_iothub_endpoint_cosmosdb_account.this.partition_key_template
}

output "primary_key" {
  value = azurerm_iothub_endpoint_cosmosdb_account.this.primary_key
}

output "secondary_key" {
  value = azurerm_iothub_endpoint_cosmosdb_account.this.secondary_key
}

output "id" {
  description = "The ID of the IoTHub Cosmos DB Account Endpoint."
  value       = azurerm_iothub_endpoint_cosmosdb_account.this.id
}

