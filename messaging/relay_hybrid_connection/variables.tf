# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Azure Relay Hybrid Connection. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Azure Relay Hybrid Connection. Changing this forces a new resource to be created."
  type        = string

}
variable "relay_namespace_name" {
  description = "(REQUIRED) The name of the Azure Relay in which to create the Azure Relay Hybrid Connection. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "requires_client_authorization" {
  description = "Specify if client authorization is needed for this hybrid connection. Changing this forces a new resource to be created. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "user_metadata" {
  description = "The usermetadata is a placeholder to store user-defined string data for the hybrid connection endpoint. For example, it can be used to store descriptive data, such as a list of teams and their contact information. Also, user-defined configuration settings can be stored."
  type        = string
  default     = null
}
