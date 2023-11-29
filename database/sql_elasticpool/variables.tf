# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the elastic pool. This needs to be globally unique. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the elastic pool. This must be the same as the resource group of the underlying SQL server. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "server_name" {
  description = "(REQUIRED) The name of the SQL Server on which to create the elastic pool. Changing this forces a new resource to be created."
  type        = string

}
variable "edition" {
  description = "(REQUIRED) The edition of the elastic pool to be created. Valid values are 'Basic', 'Standard', and 'Premium'. Refer to [Azure SQL Database Service Tiers](https://docs.microsoft.com/en-gb/azure/sql-database/sql-database-service-tiers#elastic-pool-service-tiers-and-performance-in-edtus) for details. Changing this forces a new resource to be created."
  type        = string

}
variable "dtu" {
  description = "(REQUIRED) The total shared DTU for the elastic pool. Valid values depend on the 'edition' which has been defined. Refer to [Azure SQL Database Service Tiers](https://docs.microsoft.com/en-gb/azure/sql-database/sql-database-service-tiers#elastic-pool-service-tiers-and-performance-in-edtus) for valid combinations."
  type        = string

}

# OPTIONAL VARIABLES

variable "db_dtu_min" {
  description = "The minimum DTU which will be guaranteed to all databases in the elastic pool to be created."
  type        = string
  default     = null
}
variable "db_dtu_max" {
  description = "The maximum DTU which will be guaranteed to all databases in the elastic pool to be created."
  type        = string
  default     = null
}
variable "pool_size" {
  description = "The maximum size in MB that all databases in the elastic pool can grow to. The maximum size must be consistent with combination of 'edition' and 'dtu' and the limits documented in [Azure SQL Database Service Tiers](https://docs.microsoft.com/en-gb/azure/sql-database/sql-database-service-tiers#elastic-pool-service-tiers-and-performance-in-edtus). If not defined when creating an elastic pool, the value is set to the size implied by 'edition' and 'dtu'."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
variable "sql_server_resource_group_name" {
  description = "Specifies the name of the Resource Group where the SQL Server exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
