# REQUIRED VARIABLES

variable "network_manager_id" {
  description = "(REQUIRED) Specifies the ID of the Network Manager. Changing this forces a new Network Manager Deployment to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the location which the configurations will be deployed to. Changing this forces a new Network Manager Deployment to be created."
  type        = string

}
variable "scope_access" {
  description = "(REQUIRED) Specifies the configuration deployment type. Possible values are 'Connectivity' and 'SecurityAdmin'. Changing this forces a new Network Manager Deployment to be created."
  type        = string

}
variable "configuration_ids" {
  description = "(REQUIRED) A list of Network Manager Configuration IDs which should be aligned with 'scope_access'."
  type        = list(any)

}

# OPTIONAL VARIABLES

variable "triggers" {
  description = "A mapping of key values pairs that can be used to keep the deployment up with the Network Manager configurations and rules."
  type        = string
  default     = null
}
