output "name" {
  value = azurerm_mssql_virtual_machine_availability_group_listener.this.name
}

output "sql_virtual_machine_group_id" {
  value = azurerm_mssql_virtual_machine_availability_group_listener.this.sql_virtual_machine_group_id
}

output "availability_group_name" {
  value = azurerm_mssql_virtual_machine_availability_group_listener.this.availability_group_name
}

output "load_balancer_configuration" {
  value = azurerm_mssql_virtual_machine_availability_group_listener.this.load_balancer_configuration
}

output "multi_subnet_ip_configuration" {
  value = azurerm_mssql_virtual_machine_availability_group_listener.this.multi_subnet_ip_configuration
}

output "port" {
  value = azurerm_mssql_virtual_machine_availability_group_listener.this.port
}

output "replica" {
  value = azurerm_mssql_virtual_machine_availability_group_listener.this.replica
}

output "id" {
  description = "The ID of the Microsoft SQL Virtual Machine Availability Group Listener."
  value       = azurerm_mssql_virtual_machine_availability_group_listener.this.id
}

