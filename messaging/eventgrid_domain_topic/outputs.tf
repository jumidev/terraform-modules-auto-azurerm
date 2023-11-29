output "name" {
  value = azurerm_eventgrid_domain_topic.this.name
}

output "domain_name" {
  value = azurerm_eventgrid_domain_topic.this.domain_name
}

output "resource_group_name" {
  value = azurerm_eventgrid_domain_topic.this.resource_group_name
}

output "id" {
  description = "The ID of the EventGrid Domain Topic."
  value       = azurerm_eventgrid_domain_topic.this.id
}

