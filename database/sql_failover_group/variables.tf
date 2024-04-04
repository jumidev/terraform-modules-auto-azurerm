# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the failover group. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group containing the SQL server Changing this forces a new resource to be created."
  type        = string

}
variable "server_name" {
  description = "(REQUIRED) The name of the primary SQL server. Changing this forces a new resource to be created."
  type        = string

}
variable "partner_servers" {
  description = "(REQUIRED) A list of 'partner_servers' blocks."
  type        = list(any)

}
variable "read_write_endpoint_failover_policy" {
  description = "(REQUIRED) A 'read_write_endpoint_failover_policy' block."
  type        = map(any)
}
#
# read_write_endpoint_failover_policy block structure:
#   mode (string)                                      : (REQUIRED) the failover mode. Possible values are 'Manual', 'Automatic'
#   grace_minutes (number)                             : Applies only if 'mode' is 'Automatic'. The grace period in minutes before failover with data loss is attempted



# OPTIONAL VARIABLES

variable "databases" {
  description = "A list of database ids to add to the failover group -> **NOTE:** The failover group will create a secondary database for each database listed in 'databases'. If the secondary databases need to be managed through Terraform, they should be defined as resources and a dependency added to the failover group to ensure the secondary databases are created first. Please refer to the detailed example which can be found in [the './examples/sql-azure/failover_group' directory within the GitHub Repository](https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/sql-azure/failover_group)"
  type        = list(any)
  default     = []
}
variable "readonly_endpoint_failover_policy" {
  description = "A 'readonly_endpoint_failover_policy' block."
  type        = map(any)
  default     = null
}
#
# readonly_endpoint_failover_policy block structure:
#   mode (bool)                                      : (REQUIRED) Failover policy for the read-only endpoint. Possible values are 'Enabled', and 'Disabled'


variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
