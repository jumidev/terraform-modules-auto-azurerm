output "name" {
  value = azurerm_cognitive_deployment.this.name
}

output "cognitive_account_id" {
  value = azurerm_cognitive_deployment.this.cognitive_account_id
}

output "model" {
  value = azurerm_cognitive_deployment.this.model
}

output "scale" {
  value = azurerm_cognitive_deployment.this.scale
}

output "rai_policy_name" {
  value = azurerm_cognitive_deployment.this.rai_policy_name
}

output "version_upgrade_option" {
  value = azurerm_cognitive_deployment.this.version_upgrade_option
}

output "id" {
  description = "The ID of the Deployment for Azure Cognitive Services Account."
  value       = azurerm_cognitive_deployment.this.id
}

