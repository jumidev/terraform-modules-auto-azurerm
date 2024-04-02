# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the PostgreSQL virtual network rule. Cannot be empty and must only contain alphanumeric characters and hyphens. Cannot start with a number, and cannot start or end with a hyphen. Changing this forces a new resource to be created. ~> **NOTE:** 'name' must be between 1-128 characters long and must satisfy all of the requirements below: 1. Contains only alphanumeric and hyphen characters 2. Cannot start with a number or hyphen 3. Cannot end with a hyphen"
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group where the PostgreSQL server resides. Changing this forces a new resource to be created."
  type        = string

}
variable "server_name" {
  description = "(REQUIRED) The name of the SQL Server to which this PostgreSQL virtual network rule will be applied to. Changing this forces a new resource to be created."
  type        = string

}
variable "subnet_id" {
  description = "(REQUIRED) The ID of the subnet that the PostgreSQL server will be connected to."
  type        = string

}

# OPTIONAL VARIABLES

variable "ignore_missing_vnet_service_endpoint" {
  description = "Should the Virtual Network Rule be created before the Subnet has the Virtual Network Service Endpoint enabled?"
  type        = string
  default     = null
}
