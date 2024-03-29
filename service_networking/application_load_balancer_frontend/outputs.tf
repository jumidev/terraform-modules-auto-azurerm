output "name" {
  value = azurerm_application_load_balancer_frontend.this.name
}

output "application_load_balancer_id" {
  value = azurerm_application_load_balancer_frontend.this.application_load_balancer_id
}

output "tags" {
  value = azurerm_application_load_balancer_frontend.this.tags
}

output "tags" {
  description = "A mapping of tags which should be assigned to the Application Gateway for Containers Frontend. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_application_load_balancer_frontend.this.tags
}

output "id" {
  description = "The ID of the Application Gateway for Containers Frontend."
  value       = azurerm_application_load_balancer_frontend.this.id
}

output "fully_qualified_domain_name" {
  description = "The Fully Qualified Domain Name of the DNS record associated to an Application Gateway for Containers Frontend."
  value       = azurerm_application_load_balancer_frontend.this.fully_qualified_domain_name
}

