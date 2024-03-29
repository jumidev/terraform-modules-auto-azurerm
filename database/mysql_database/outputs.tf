output "name" {
  value = azurerm_mysql_database.this.name
}

output "server_name" {
  value = azurerm_mysql_database.this.server_name
}

output "resource_group_name" {
  value = azurerm_mysql_database.this.resource_group_name
}

output "charset" {
  value = azurerm_mysql_database.this.charset
}

output "collation" {
  value = azurerm_mysql_database.this.collation
}

output "collation" {
  description = "Specifies the Collation for the MySQL Database, which needs [to be a valid MySQL Collation](https://dev.mysql.com/doc/refman/5.7/en/charset-mysql.html). Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_mysql_database.this.collation
}

output "id" {
  description = "The ID of the MySQL Database."
  value       = azurerm_mysql_database.this.id
}

