output "name" {
  value = azurerm_machine_learning_synapse_spark.this.name
}

output "machine_learning_workspace_id" {
  value = azurerm_machine_learning_synapse_spark.this.machine_learning_workspace_id
}

output "location" {
  value = azurerm_machine_learning_synapse_spark.this.location
}

output "synapse_spark_pool_id" {
  value = azurerm_machine_learning_synapse_spark.this.synapse_spark_pool_id
}

output "description" {
  value = azurerm_machine_learning_synapse_spark.this.description
}

output "identity" {
  value = azurerm_machine_learning_synapse_spark.this.identity
}

output "local_auth_enabled" {
  value = azurerm_machine_learning_synapse_spark.this.local_auth_enabled
}

output "tags" {
  value = azurerm_machine_learning_synapse_spark.this.tags
}

output "id" {
  description = "The ID of the Machine Learning Synapse Spark."
  value       = azurerm_machine_learning_synapse_spark.this.id
}

output "identity" {
  description = "An 'identity' block, which contains the Managed Service Identity information for this Machine Learning Synapse Spark."
  value       = azurerm_machine_learning_synapse_spark.this.identity
}

output "principal_id" {
  description = "The Principal ID for the Service Principal associated with the Managed Service Identity of this Machine Learning Synapse Spark."
  value       = azurerm_machine_learning_synapse_spark.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID for the Service Principal associated with the Managed Service Identity of this Machine Learning Synapse Spark."
  value       = azurerm_machine_learning_synapse_spark.this.tenant_id
}

