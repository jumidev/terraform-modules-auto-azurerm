output "template_name" {
  value = azurerm_api_management_email_template.this.template_name
}

output "api_management_name" {
  value = azurerm_api_management_email_template.this.api_management_name
}

output "resource_group_name" {
  value = azurerm_api_management_email_template.this.resource_group_name
}

output "subject" {
  value = azurerm_api_management_email_template.this.subject
}

output "body" {
  value = azurerm_api_management_email_template.this.body
}

output "id" {
  description = "The ID of the API Management Email Template."
  value       = azurerm_api_management_email_template.this.id
}

output "title" {
  description = "The title of the Email Template."
  value       = azurerm_api_management_email_template.this.title
}

output "description" {
  description = "The description of the Email Template."
  value       = azurerm_api_management_email_template.this.description
}

