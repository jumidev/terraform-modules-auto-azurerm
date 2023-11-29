output "name" {
  value = azurerm_spring_cloud_builder.this.name
}

output "spring_cloud_service_id" {
  value = azurerm_spring_cloud_builder.this.spring_cloud_service_id
}

output "build_pack_group" {
  value = azurerm_spring_cloud_builder.this.build_pack_group
}

output "stack" {
  value = azurerm_spring_cloud_builder.this.stack
}

output "id" {
  description = "The ID of the Spring Cloud Builder."
  value       = azurerm_spring_cloud_builder.this.id
}

