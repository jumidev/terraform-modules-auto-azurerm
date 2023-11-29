# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for the Microsoft SQL Virtual Machine Availability Group Listener. Changing this forces a new resource to be created."
  type        = string

}
variable "sql_virtual_machine_group_id" {
  description = "(REQUIRED) The ID of the SQL Virtual Machine Group to create the listener. Changing this forces a new resource to be created."
  type        = string

}
variable "replica" {
  description = "(REQUIRED) One or more 'replica' blocks. Changing this forces a new resource to be created."
  type        = map(map(any))
}
#
# replica block structure        :
#   commit (string)                : (REQUIRED) The replica commit mode for the availability group. Possible values are 'Synchronous_Commit' and 'Asynchronous_Commit'. Changing this forces a new resource to be created.
#   failover_mode (string)         : (REQUIRED) The replica failover mode for the availability group. Possible values are 'Manual' and 'Automatic'. Changing this forces a new resource to be created.
#   readable_secondary (string)    : (REQUIRED) The replica readable secondary mode for the availability group. Possible values are 'No', 'Read_Only' and 'All'. Changing this forces a new resource to be created.
#   role (string)                  : (REQUIRED) The replica role for the availability group. Possible values are 'Primary' and 'Secondary'. Changing this forces a new resource to be created.
#   sql_virtual_machine_id (string): (REQUIRED) The ID of the SQL Virtual Machine. Changing this forces a new resource to be created.



# OPTIONAL VARIABLES

variable "availability_group_name" {
  description = "The name of the Availability Group. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "load_balancer_configuration" {
  description = "A 'load_balancer_configuration' block. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# load_balancer_configuration block structure:
#   load_balancer_id (string)                  : (REQUIRED) The ID of the Load Balancer. Changing this forces a new resource to be created.
#   private_ip_address (string)                : (REQUIRED) The private IP Address of the listener. Changing this forces a new resource to be created.
#   probe_port (string)                        : (REQUIRED) The probe port of the listener. Changing this forces a new resource to be created.
#   sql_virtual_machine_ids (string)           : (REQUIRED) Specifies a list of SQL Virtual Machine IDs. Changing this forces a new resource to be created.
#   subnet_id (string)                         : (REQUIRED) The ID of the Subnet to create the listener. Changing this forces a new resource to be created.


variable "multi_subnet_ip_configuration" {
  description = "One or more 'multi_subnet_ip_configuration' blocks. Changing this forces a new resource to be created."
  type        = map(map(any))
  default     = null
}
#
# multi_subnet_ip_configuration block structure:
#   private_ip_address (string)                  : (REQUIRED) The private IP Address of the listener. Changing this forces a new resource to be created.
#   sql_virtual_machine_id (string)              : (REQUIRED) The ID of the Sql Virtual Machine. Changing this forces a new resource to be created.
#   subnet_id (string)                           : (REQUIRED) The ID of the Subnet to create the listener. Changing this forces a new resource to be created.


variable "port" {
  description = "The port of the listener. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
