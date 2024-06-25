output "name" {
  value = azurerm_container_registry_cache_rule.this.name
}

output "container_registry_id" {
  value = azurerm_container_registry_cache_rule.this.container_registry_id
}

output "source_repo" {
  value = azurerm_container_registry_cache_rule.this.source_repo
}

output "target_repo" {
  value = azurerm_container_registry_cache_rule.this.target_repo
}

output "credential_set_id" {
  value = azurerm_container_registry_cache_rule.this.credential_set_id
}

output "id" {
  description = "The ID of the Container Registry Cache Rule."
  value       = azurerm_container_registry_cache_rule.this.id
}

