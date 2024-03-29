# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the SQL virtual network rule. Changing this forces a new resource to be created. Cannot be empty and must only contain alphanumeric characters and hyphens. Cannot start with a number, and cannot start or end with a hyphen. ~> **NOTE:** 'name' must be between 1-64 characters long and must satisfy all of the requirements below: 1. Contains only alphanumeric and hyphen characters 2. Cannot start with a number or hyphen 3. Cannot end with a hyphen"
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group where the SQL server resides. Changing this forces a new resource to be created."
  type        = string

}
variable "server_name" {
  description = "(REQUIRED) The name of the SQL Server to which this SQL virtual network rule will be applied to. Changing this forces a new resource to be created."
  type        = string

}
variable "subnet_id" {
  description = "(REQUIRED) The ID of the subnet that the SQL server will be connected to."
  type        = string

}

# OPTIONAL VARIABLES

variable "ignore_missing_vnet_service_endpoint" {
  description = "Create the virtual network rule before the subnet has the virtual network service endpoint enabled. The default value is false. ~> **NOTE:** If 'ignore_missing_vnet_service_endpoint' is false, and the target subnet does not contain the 'Microsoft.SQL' endpoint in the 'service_endpoints' array, the deployment will fail when it tries to create the SQL virtual network rule."
  type        = string
  default     = "ignore_missing_vnet_service_endpoint"
}
