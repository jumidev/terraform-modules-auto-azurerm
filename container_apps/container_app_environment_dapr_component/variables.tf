# REQUIRED VARIABLES

variable "container_app_environment_id" {
  description = "(REQUIRED) The ID of the Container App Managed Environment for this Dapr Component. Changing this forces a new resource to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name for this Dapr component. Changing this forces a new resource to be created."
  type        = string

}
variable "component_type" {
  description = "(REQUIRED) The Dapr Component Type. For example 'state.azure.blobstorage'. Changing this forces a new resource to be created."
  type        = string

}
variable "version" {
  description = "(REQUIRED) The version of the component."
  type        = string

}

# OPTIONAL VARIABLES

variable "ignore_errors" {
  description = "Should the Dapr sidecar to continue initialisation if the component fails to load. Defaults to 'false'"
  type        = bool
  default     = false
}
variable "init_timeout" {
  description = "The timeout for component initialisation as a 'ISO8601' formatted string. e.g. '5s', '2h', '1m'. Defaults to '5s'."
  type        = string
  default     = "5s"
}
variable "metadata" {
  description = "One or more 'metadata' blocks as detailed below."
  type        = list(any)
  default     = []
}
variable "scopes" {
  description = "A list of scopes to which this component applies."
  type        = list(any)
  default     = []
}
variable "secret" {
  description = "A 'secret' block as detailed below."
  type        = map(any)
  default     = null
}
#
# secret block structure:
#   value (string)        : (REQUIRED) The value for this secret.


