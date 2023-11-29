output "dev_center_id" {
  value = azurerm_dev_center_project.this.dev_center_id
}

output "location" {
  value = azurerm_dev_center_project.this.location
}

output "name" {
  value = azurerm_dev_center_project.this.name
}

output "resource_group_name" {
  value = azurerm_dev_center_project.this.resource_group_name
}

output "description" {
  value = azurerm_dev_center_project.this.description
}

output "maximum_dev_boxes_per_user" {
  value = azurerm_dev_center_project.this.maximum_dev_boxes_per_user
}

output "tags" {
  value = azurerm_dev_center_project.this.tags
}

output "id" {
  description = "The ID of the Dev Center Project."
  value       = azurerm_dev_center_project.this.id
}

output "dev_center_uri" {
  description = "The URI of the Dev Center resource this project is associated with."
  value       = azurerm_dev_center_project.this.dev_center_uri
}

