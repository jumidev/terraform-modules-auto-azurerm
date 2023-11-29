output "annotations" {
  value = azurerm_data_factory_flowlet_data_flow.this.annotations
}

output "data_factory_id" {
  value = azurerm_data_factory_flowlet_data_flow.this.data_factory_id
}

output "name" {
  value = azurerm_data_factory_flowlet_data_flow.this.name
}

output "description" {
  value = azurerm_data_factory_flowlet_data_flow.this.description
}

output "folder" {
  value = azurerm_data_factory_flowlet_data_flow.this.folder
}

output "source" {
  value = azurerm_data_factory_flowlet_data_flow.this.source
}

output "sink" {
  value = azurerm_data_factory_flowlet_data_flow.this.sink
}

output "script" {
  value = azurerm_data_factory_flowlet_data_flow.this.script
}

output "script_lines" {
  value = azurerm_data_factory_flowlet_data_flow.this.script_lines
}

output "transformation" {
  value = azurerm_data_factory_flowlet_data_flow.this.transformation
}

output "id" {
  description = "The ID of the Data Factory Flowlet Data Flow."
  value       = azurerm_data_factory_flowlet_data_flow.this.id
}

