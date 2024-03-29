# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the MySQL Virtual Network Rule. Cannot be empty and must only contain alphanumeric characters and hyphens. Cannot start with a number, and cannot start or end with a hyphen. Changing this forces a new resource to be created. ~> **NOTE:** 'name' must be between 1-128 characters long and must satisfy all of the requirements below: 1. Contains only alphanumeric and hyphen characters 2. Cannot start with a number or hyphen 3. Cannot end with a hyphen"
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group where the MySQL server resides. Changing this forces a new resource to be created."
  type        = string

}
variable "server_name" {
  description = "(REQUIRED) The name of the SQL Server to which this MySQL virtual network rule will be applied to. Changing this forces a new resource to be created."
  type        = string

}
variable "subnet_id" {
  description = "(REQUIRED) The ID of the subnet that the MySQL server will be connected to. ~> **NOTE:** Due to [a bug in the Azure API](https://github.com/Azure/azure-rest-api-specs/issues/3719) this resource currently doesn't expose the 'ignore_missing_vnet_service_endpoint' field and defaults this to 'false'. Terraform will check during the provisioning of the Virtual Network Rule that the Subnet contains the Service Rule to verify that the Virtual Network Rule can be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "mysql_server_resource_group_name" {
  description = "The name of the resource group for the MySQL Server..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
