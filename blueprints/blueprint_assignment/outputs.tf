output "name" {
  value = azurerm_blueprint_assignment.this.name
}

output "target_subscription_id" {
  value = azurerm_blueprint_assignment.this.target_subscription_id
}

output "location" {
  value = azurerm_blueprint_assignment.this.location
}

output "identity" {
  value = azurerm_blueprint_assignment.this.identity
}

output "version_id" {
  value = azurerm_blueprint_assignment.this.version_id
}

output "parameter_values" {
  value = azurerm_blueprint_assignment.this.parameter_values
}

output "resource_groups" {
  value = azurerm_blueprint_assignment.this.resource_groups
}

output "lock_mode" {
  value = azurerm_blueprint_assignment.this.lock_mode
}

output "lock_exclude_principals" {
  value = azurerm_blueprint_assignment.this.lock_exclude_principals
}

output "lock_exclude_actions" {
  value = azurerm_blueprint_assignment.this.lock_exclude_actions
}

output "id" {
  description = "The ID of the Blueprint Assignment"
  value       = azurerm_blueprint_assignment.this.id
}

output "description" {
  description = "The Description on the Blueprint"
  value       = azurerm_blueprint_assignment.this.description
}

output "display_name" {
  description = "The display name of the blueprint"
  value       = azurerm_blueprint_assignment.this.display_name
}

output "blueprint_name" {
  description = "The name of the blueprint assigned"
  value       = azurerm_blueprint_assignment.this.blueprint_name
}

