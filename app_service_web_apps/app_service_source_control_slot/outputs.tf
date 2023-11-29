output "slot_id" {
  value = azurerm_app_service_source_control_slot.this.slot_id
}

output "branch" {
  value = azurerm_app_service_source_control_slot.this.branch
}

output "github_action_configuration" {
  value = azurerm_app_service_source_control_slot.this.github_action_configuration
}

output "repo_url" {
  value = azurerm_app_service_source_control_slot.this.repo_url
}

output "rollback_enabled" {
  value = azurerm_app_service_source_control_slot.this.rollback_enabled
}

output "use_local_git" {
  value = azurerm_app_service_source_control_slot.this.use_local_git
}

output "use_manual_integration" {
  value = azurerm_app_service_source_control_slot.this.use_manual_integration
}

output "use_mercurial" {
  value = azurerm_app_service_source_control_slot.this.use_mercurial
}

output "id" {
  description = "The ID of the App Service Source Control Slot"
  value       = azurerm_app_service_source_control_slot.this.id
}

output "scm_type" {
  description = "The SCM Type in use. This value is decoded by the service from the repository information supplied."
  value       = azurerm_app_service_source_control_slot.this.scm_type
}

output "uses_github_action" {
  description = "Indicates if the Slot uses a GitHub action for deployment. This value is decoded by the service from the repository information supplied."
  value       = azurerm_app_service_source_control_slot.this.uses_github_action
}

