# REQUIRED VARIABLES

variable "administrator_login" {
  description = "(REQUIRED) The administrator login name for the new SQL Managed Instance. Changing this forces a new resource to be created."
  type        = string

}
variable "license_type" {
  description = "(REQUIRED) What type of license the Managed Instance will use. Possible values are 'LicenseIncluded' and 'BasePrice'."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name of the SQL Managed Instance. This needs to be globally unique within Azure. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the SQL Managed Instance. Changing this forces a new resource to be created."
  type        = string

}
variable "sku_name" {
  description = "(REQUIRED) Specifies the SKU Name for the SQL Managed Instance. Valid values include 'GP_Gen4', 'GP_Gen5', 'GP_Gen8IM', 'GP_Gen8IH', 'BC_Gen4', 'BC_Gen5', 'BC_Gen8IM' or 'BC_Gen8IH'."
  type        = string

}
variable "storage_size_in_gb" {
  description = "(REQUIRED) Maximum storage space for the SQL Managed instance. This should be a multiple of 32 (GB)."
  type        = int

}
variable "subnet_id" {
  description = "(REQUIRED) The subnet resource id that the SQL Managed Instance will be associated with. Changing this forces a new resource to be created."
  type        = string

}
variable "vcores" {
  description = "(REQUIRED) Number of cores that should be assigned to the SQL Managed Instance. Values can be '8', '16', or '24' for Gen4 SKUs, or '4', '6', '8', '10', '12', '16', '20', '24', '32', '40', '48', '56', '64', '80', '96' or '128' for Gen5 SKUs."
  type        = int

}

# OPTIONAL VARIABLES

variable "collation" {
  description = "Specifies how the SQL Managed Instance will be collated. Default value is 'SQL_Latin1_General_CP1_CI_AS'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "dns_zone_partner_id" {
  description = "The ID of the SQL Managed Instance which will share the DNS zone. This is a prerequisite for creating an 'azurerm_sql_managed_instance_failover_group'. Setting this after creation forces a new resource to be created."
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
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this SQL Managed Instance. Possible values are 'SystemAssigned', 'UserAssigned'.
#   identity_ids (string)   : Specifies a list of User Assigned Managed Identity IDs to be assigned to this SQL Managed Instance. Required when 'type' is set to 'UserAssigned'.


variable "maintenance_configuration_name" {
  description = "The name of the Public Maintenance Configuration window to apply to the SQL Managed Instance. Valid values include 'SQL_Default' or an Azure Location in the format 'SQL_{Location}_MI_{Size}'(for example 'SQL_EastUS_MI_1'). Defaults to 'SQL_Default'."
  type        = string
  default     = "SQL_Default"
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
variable "public_data_endpoint_enabled" {
  description = "Is the public data endpoint enabled? Default value is 'false'."
  type        = bool
  default     = null
}
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
variable "timezone_id" {
  description = "The TimeZone ID that the SQL Managed Instance will be operating in. Default value is 'UTC'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "maintenance_configuration_resource_group_name" {
  description = "Specifies the name of the Resource Group where this Maintenance Configuration exists..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
