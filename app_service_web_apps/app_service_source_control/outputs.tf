output "app_id" {
  value = azurerm_app_service_source_control.this.app_id
}

output "branch" {
  value = azurerm_app_service_source_control.this.branch
}

output "repo_url" {
  value = azurerm_app_service_source_control.this.repo_url
}

output "github_action_configuration" {
  value = azurerm_app_service_source_control.this.github_action_configuration
}

output "use_manual_integration" {
  value = azurerm_app_service_source_control.this.use_manual_integration
}

output "rollback_enabled" {
  value = azurerm_app_service_source_control.this.rollback_enabled
}

output "use_local_git" {
  value = azurerm_app_service_source_control.this.use_local_git
}

output "use_mercurial" {
  value = azurerm_app_service_source_control.this.use_mercurial
}

output "id" {
  description = "The ID of the App Service Source Control."
  value       = azurerm_app_service_source_control.this.id
}

output "uses_github_action" {
  description = "Indicates if the Slot uses a GitHub action for deployment. This value is decoded by the service from the repository information supplied."
  value       = azurerm_app_service_source_control.this.uses_github_action
}

output "scm_type" {
  description = "The SCM Type in use. This value is decoded by the service from the repository information supplied."
  value       = azurerm_app_service_source_control.this.scm_type
}

