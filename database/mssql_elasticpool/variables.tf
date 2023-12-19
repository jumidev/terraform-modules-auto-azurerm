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
variable "sku" {
  description = "(REQUIRED) A 'sku' block."
  type        = map(any)
}
#
# sku block structure:
#   name (string)      : (REQUIRED) Specifies the SKU Name for this Elasticpool. The name of the SKU, will be either 'vCore' based or 'DTU' based. Possible 'DTU' based values are 'BasicPool', 'StandardPool', 'PremiumPool' while possible 'vCore' based values are 'GP_Gen4', 'GP_Gen5', 'GP_Fsv2', 'GP_DC', 'BC_Gen4', 'BC_Gen5', 'BC_DC', or 'HS_Gen5'.
#   capacity (string)  : (REQUIRED) The scale up/out capacity, representing server's compute units. For more information see the documentation for your Elasticpool configuration: [vCore-based](https://docs.microsoft.com/azure/sql-database/sql-database-vcore-resource-limits-elastic-pools) or [DTU-based](https://docs.microsoft.com/azure/sql-database/sql-database-dtu-resource-limits-elastic-pools).
#   tier (string)      : (REQUIRED) The tier of the particular SKU. Possible values are 'GeneralPurpose', 'BusinessCritical', 'Basic', 'Standard', 'Premium', or 'HyperScale'. For more information see the documentation for your Elasticpool configuration: [vCore-based](https://docs.microsoft.com/azure/sql-database/sql-database-vcore-resource-limits-elastic-pools) or [DTU-based](https://docs.microsoft.com/azure/sql-database/sql-database-dtu-resource-limits-elastic-pools).
#   family (string)    : The 'family' of hardware 'Gen4', 'Gen5', 'Fsv2' or 'DC'.


variable "per_database_settings" {
  description = "(REQUIRED) A 'per_database_settings' block."
  type        = map(any)
}
#
# per_database_settings block structure:
#   min_capacity (string)                : (REQUIRED) The minimum capacity all databases are guaranteed.
#   max_capacity (string)                : (REQUIRED) The maximum capacity any one database can consume.



# OPTIONAL VARIABLES

variable "maintenance_configuration_name" {
  description = "The name of the Public Maintenance Configuration window to apply to the elastic pool. Valid values include 'SQL_Default', 'SQL_EastUS_DB_1', 'SQL_EastUS2_DB_1', 'SQL_SoutheastAsia_DB_1', 'SQL_AustraliaEast_DB_1', 'SQL_NorthEurope_DB_1', 'SQL_SouthCentralUS_DB_1', 'SQL_WestUS2_DB_1', 'SQL_UKSouth_DB_1', 'SQL_WestEurope_DB_1', 'SQL_EastUS_DB_2', 'SQL_EastUS2_DB_2', 'SQL_WestUS2_DB_2', 'SQL_SoutheastAsia_DB_2', 'SQL_AustraliaEast_DB_2', 'SQL_NorthEurope_DB_2', 'SQL_SouthCentralUS_DB_2', 'SQL_UKSouth_DB_2', 'SQL_WestEurope_DB_2', 'SQL_AustraliaSoutheast_DB_1', 'SQL_BrazilSouth_DB_1', 'SQL_CanadaCentral_DB_1', 'SQL_CanadaEast_DB_1', 'SQL_CentralUS_DB_1', 'SQL_EastAsia_DB_1', 'SQL_FranceCentral_DB_1', 'SQL_GermanyWestCentral_DB_1', 'SQL_CentralIndia_DB_1', 'SQL_SouthIndia_DB_1', 'SQL_JapanEast_DB_1', 'SQL_JapanWest_DB_1', 'SQL_NorthCentralUS_DB_1', 'SQL_UKWest_DB_1', 'SQL_WestUS_DB_1', 'SQL_AustraliaSoutheast_DB_2', 'SQL_BrazilSouth_DB_2', 'SQL_CanadaCentral_DB_2', 'SQL_CanadaEast_DB_2', 'SQL_CentralUS_DB_2', 'SQL_EastAsia_DB_2', 'SQL_FranceCentral_DB_2', 'SQL_GermanyWestCentral_DB_2', 'SQL_CentralIndia_DB_2', 'SQL_SouthIndia_DB_2', 'SQL_JapanEast_DB_2', 'SQL_JapanWest_DB_2', 'SQL_NorthCentralUS_DB_2', 'SQL_UKWest_DB_2', 'SQL_WestUS_DB_2', 'SQL_WestCentralUS_DB_1', 'SQL_FranceSouth_DB_1', 'SQL_WestCentralUS_DB_2', 'SQL_FranceSouth_DB_2', 'SQL_SwitzerlandNorth_DB_1', 'SQL_SwitzerlandNorth_DB_2', 'SQL_BrazilSoutheast_DB_1', 'SQL_UAENorth_DB_1', 'SQL_BrazilSoutheast_DB_2', 'SQL_UAENorth_DB_2'. Defaults to 'SQL_Default'."
  type        = string
  default     = "SQL_Default"
}
variable "max_size_gb" {
  description = "The max data size of the elastic pool in gigabytes. Conflicts with 'max_size_bytes'."
  type        = number
  default     = null
}
variable "max_size_bytes" {
  description = "The max data size of the elastic pool in bytes. Conflicts with 'max_size_gb'."
  type        = number
  default     = null
}
variable "enclave_type" {
  description = "Specifies the type of enclave to be used by the elastic pool. Possible value 'VBS'."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
variable "zone_redundant" {
  description = "Whether or not this elastic pool is zone redundant. 'tier' needs to be 'Premium' for 'DTU' based or 'BusinessCritical' for 'vCore' based 'sku'."
  type        = string
  default     = null
}
variable "license_type" {
  description = "Specifies the license type applied to this database. Possible values are 'LicenseIncluded' and 'BasePrice'."
  type        = string
  default     = null
}
variable "mssql_server_resource_group_name" {
  description = "The name of the Resource Group where the Microsoft SQL Server exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
variable "maintenance_configuration_resource_group_name" {
  description = "Specifies the name of the Resource Group where this Maintenance Configuration exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
