output "name" {
  value = azurerm_shared_image.this.name
}

output "gallery_name" {
  value = azurerm_shared_image.this.gallery_name
}

output "resource_group_name" {
  value = azurerm_shared_image.this.resource_group_name
}

output "location" {
  value = azurerm_shared_image.this.location
}

output "identifier" {
  value = azurerm_shared_image.this.identifier
}

output "os_type" {
  value = azurerm_shared_image.this.os_type
}

output "purchase_plan" {
  value = azurerm_shared_image.this.purchase_plan
}

output "description" {
  value = azurerm_shared_image.this.description
}

output "disk_types_not_allowed" {
  value = azurerm_shared_image.this.disk_types_not_allowed
}

output "end_of_life_date" {
  value = azurerm_shared_image.this.end_of_life_date
}

output "eula" {
  value = azurerm_shared_image.this.eula
}

output "specialized" {
  value = azurerm_shared_image.this.specialized
}

output "architecture" {
  value = azurerm_shared_image.this.architecture
}

output "hyper_v_generation" {
  value = azurerm_shared_image.this.hyper_v_generation
}

output "max_recommended_vcpu_count" {
  value = azurerm_shared_image.this.max_recommended_vcpu_count
}

output "min_recommended_vcpu_count" {
  value = azurerm_shared_image.this.min_recommended_vcpu_count
}

output "max_recommended_memory_in_gb" {
  value = azurerm_shared_image.this.max_recommended_memory_in_gb
}

output "min_recommended_memory_in_gb" {
  value = azurerm_shared_image.this.min_recommended_memory_in_gb
}

output "privacy_statement_uri" {
  value = azurerm_shared_image.this.privacy_statement_uri
}

output "release_note_uri" {
  value = azurerm_shared_image.this.release_note_uri
}

output "trusted_launch_supported" {
  value = azurerm_shared_image.this.trusted_launch_supported
}

output "trusted_launch_enabled" {
  value = azurerm_shared_image.this.trusted_launch_enabled
}

output "confidential_vm_supported" {
  value = azurerm_shared_image.this.confidential_vm_supported
}

output "confidential_vm_enabled" {
  value = azurerm_shared_image.this.confidential_vm_enabled
}

output "accelerated_network_support_enabled" {
  value = azurerm_shared_image.this.accelerated_network_support_enabled
}

output "tags" {
  value = azurerm_shared_image.this.tags
}

output "id" {
  description = "The ID of the Shared Image."
  value       = azurerm_shared_image.this.id
}

