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

output "application_load_balancer_subnet_association.name" {
  value = lookup(var.application_load_balancer_subnet_association, "name", null)
}

output "application_load_balancer_subnet_association.application_load_balancer_id" {
  value = lookup(var.application_load_balancer_subnet_association, "application_load_balancer_id", null)
}

output "application_load_balancer_subnet_association.subnet_id" {
  value = lookup(var.application_load_balancer_subnet_association, "subnet_id", null)
}

output "application_load_balancer_subnet_association.tags" {
  value = lookup(var.application_load_balancer_subnet_association, "tags", null)
}

output "application_load_balancer_subnet_association.id" {
  description = "The ID of the Application Gateway for Containers Association."
  value       = lookup(var.application_load_balancer_subnet_association, "id", null)
}

