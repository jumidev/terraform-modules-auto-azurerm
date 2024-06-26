# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the SQL virtual network rule. Changing this forces a new resource to be created."
  type        = string

}
variable "server_id" {
  description = "(REQUIRED) The resource ID of the SQL Server to which this SQL virtual network rule will be applied. Changing this forces a new resource to be created."
  type        = string

}
variable "subnet_id" {
  description = "(REQUIRED) The ID of the subnet from which the SQL server will accept communications."
  type        = string

}

# OPTIONAL VARIABLES

variable "ignore_missing_vnet_service_endpoint" {
  description = "Create the virtual network rule before the subnet has the virtual network service endpoint enabled. Defaults to 'false'. ~> **NOTE:** If 'ignore_missing_vnet_service_endpoint' is false, and the target subnet does not contain the 'Microsoft.SQL' endpoint in the 'service_endpoints' array, the deployment will fail when it tries to create the SQL virtual network rule."
  type        = bool
  default     = false
}
