output "iothub_name" {
  value = azurerm_iothub_enrichment.this.iothub_name
}

output "resource_group_name" {
  value = azurerm_iothub_enrichment.this.resource_group_name
}

output "key" {
  value = azurerm_iothub_enrichment.this.key
}

output "value" {
  value = azurerm_iothub_enrichment.this.value
}

output "endpoint_names" {
  value = azurerm_iothub_enrichment.this.endpoint_names
}

output "id" {
  description = "The ID of the IoTHub Enrichment."
  value       = azurerm_iothub_enrichment.this.id
}

