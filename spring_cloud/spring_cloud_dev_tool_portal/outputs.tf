output "name" {
  value = azurerm_spring_cloud_dev_tool_portal.this.name
}

output "spring_cloud_service_id" {
  value = azurerm_spring_cloud_dev_tool_portal.this.spring_cloud_service_id
}

output "application_accelerator_enabled" {
  value = azurerm_spring_cloud_dev_tool_portal.this.application_accelerator_enabled
}

output "application_live_view_enabled" {
  value = azurerm_spring_cloud_dev_tool_portal.this.application_live_view_enabled
}

output "public_network_access_enabled" {
  value = azurerm_spring_cloud_dev_tool_portal.this.public_network_access_enabled
}

output "sso" {
  value = azurerm_spring_cloud_dev_tool_portal.this.sso
}

output "id" {
  description = "The ID of the Spring Cloud Dev Tool Portal."
  value       = azurerm_spring_cloud_dev_tool_portal.this.id
}

