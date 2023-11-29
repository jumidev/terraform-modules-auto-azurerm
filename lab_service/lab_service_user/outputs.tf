output "name" {
  value = azurerm_lab_service_user.this.name
}

output "lab_id" {
  value = azurerm_lab_service_user.this.lab_id
}

output "email" {
  value = azurerm_lab_service_user.this.email
}

output "additional_usage_quota" {
  value = azurerm_lab_service_user.this.additional_usage_quota
}

output "id" {
  description = "The ID of the Lab Service User."
  value       = azurerm_lab_service_user.this.id
}

