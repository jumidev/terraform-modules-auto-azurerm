# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the SQL Managed Instance. This needs to be globally unique within Azure. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the SQL Server. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "sku_name" {
  description = "(REQUIRED) Specifies the SKU Name for the SQL Managed Instance. Valid values include 'GP_Gen4', 'GP_Gen5', 'BC_Gen4', 'BC_Gen5'."
  type        = string

}
variable "vcores" {
  description = "(REQUIRED) Number of cores that should be assigned to your instance. Values can be '8', '16', or '24' if 'sku_name' is 'GP_Gen4', or '8', '16', '24', '32', or '40' if 'sku_name' is 'GP_Gen5'."
  type        = int

}
variable "storage_size_in_gb" {
  description = "(REQUIRED) Maximum storage space for your instance. It should be a multiple of 32GB."
  type        = int

}
variable "license_type" {
  description = "(REQUIRED) What type of license the Managed Instance will use. Valid values include can be 'LicenseIncluded' or 'BasePrice'."
  type        = string

}
variable "administrator_login" {
  description = "(REQUIRED) The administrator login name for the new server. Changing this forces a new resource to be created."
  type        = string

}
variable "subnet_id" {
  description = "(REQUIRED) The subnet resource id that the SQL Managed Instance will be associated with. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "collation" {
  description = "Specifies how the SQL Managed Instance will be collated. Default value is 'SQL_Latin1_General_CP1_CI_AS'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "public_data_endpoint_enabled" {
  description = "Is the public data endpoint enabled? Default value is 'false'."
  type        = bool
  default     = null
}
variable "minimum_tls_version" {
  description = "The Minimum TLS Version. Default value is '1.2' Valid values include '1.0', '1.1', '1.2'."
  type        = string
  default     = null
}
variable "proxy_override" {
  description = "Specifies how the SQL Managed Instance will be accessed. Default value is 'Default'. Valid values include 'Default', 'Proxy', and 'Redirect'."
  type        = string
  default     = null
}
variable "timezone_id" {
  description = "The TimeZone ID that the SQL Managed Instance will be operating in. Default value is 'UTC'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "dns_zone_partner_id" {
  description = "The ID of the Managed Instance which will share the DNS zone. This is a prerequisite for creating a 'azurerm_sql_managed_instance_failover_group'. Setting this after creation forces a new resource to be created."
  type        = string
  default     = null
}
variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this SQL Managed Instance. The only possible value is 'SystemAssigned'.


variable "storage_account_type" {
  description = "Specifies the storage account type used to store backups for this database. Changing this forces a new resource to be created. Possible values are 'GRS', 'LRS' and 'ZRS'. Defaults to 'GRS'."
  type        = string
  default     = "GRS"
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
