output "name" {
  value = azurerm_application_load_balancer.this.name
}

output "resource_group_name" {
  value = azurerm_application_load_balancer.this.resource_group_name
}

output "location" {
  value = azurerm_application_load_balancer.this.location
}

output "tags" {
  value = azurerm_application_load_balancer.this.tags
}

output "id" {
  description = "The ID of the Application Gateway for Containers (ALB)."
  value       = azurerm_application_load_balancer.this.id
}

output "primary_configuration_endpoint" {
  description = "The primary configuration endpoints of the Application Gateway for Containers (ALB)."
  value       = azurerm_application_load_balancer.this.primary_configuration_endpoint
}

output "application_load_balancer_subnet_association" {
  value = var.application_load_balancer_subnet_association
}

