output "name" {
  value = azurerm_lab_service_lab.this.name
}

output "resource_group_name" {
  value = azurerm_lab_service_lab.this.resource_group_name
}

output "location" {
  value = azurerm_lab_service_lab.this.location
}

output "security" {
  value = azurerm_lab_service_lab.this.security
}

output "title" {
  value = azurerm_lab_service_lab.this.title
}

output "virtual_machine" {
  value = azurerm_lab_service_lab.this.virtual_machine
}

output "auto_shutdown" {
  value = azurerm_lab_service_lab.this.auto_shutdown
}

output "connection_setting" {
  value = azurerm_lab_service_lab.this.connection_setting
}

output "description" {
  value = azurerm_lab_service_lab.this.description
}

output "lab_plan_id" {
  value = azurerm_lab_service_lab.this.lab_plan_id
}

output "network" {
  value = azurerm_lab_service_lab.this.network
}

output "roster" {
  value = azurerm_lab_service_lab.this.roster
}

output "tags" {
  value = azurerm_lab_service_lab.this.tags
}

output "id" {
  description = "The ID of the Lab Service Lab."
  value       = azurerm_lab_service_lab.this.id
}

output "security" {
  description = "A 'security' block."
  value       = azurerm_lab_service_lab.this.security
}

output "network" {
  description = "A 'network' block."
  value       = azurerm_lab_service_lab.this.network
}

output "registration_code" {
  description = "The registration code for the Lab Service Lab."
  value       = azurerm_lab_service_lab.this.registration_code
}

output "load_balancer_id" {
  description = "The resource ID of the Load Balancer for the network profile of the Lab Service Lab."
  value       = azurerm_lab_service_lab.this.load_balancer_id
}

output "public_ip_id" {
  description = "The resource ID of the Public IP for the network profile of the Lab Service Lab."
  value       = azurerm_lab_service_lab.this.public_ip_id
}

