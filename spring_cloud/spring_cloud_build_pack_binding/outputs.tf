output "name" {
  value = azurerm_spring_cloud_build_pack_binding.this.name
}

output "spring_cloud_builder_id" {
  value = azurerm_spring_cloud_build_pack_binding.this.spring_cloud_builder_id
}

output "binding_type" {
  value = azurerm_spring_cloud_build_pack_binding.this.binding_type
}

output "launch" {
  value = azurerm_spring_cloud_build_pack_binding.this.launch
}

output "id" {
  description = "The ID of the Spring Cloud Build Pack Binding."
  value       = azurerm_spring_cloud_build_pack_binding.this.id
}

