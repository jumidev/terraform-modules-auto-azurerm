# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Spring Cloud Build Pack Binding. Changing this forces a new Spring Cloud Build Pack Binding to be created."
  type        = string

}
variable "spring_cloud_builder_id" {
  description = "(REQUIRED) The ID of the Spring Cloud Builder. Changing this forces a new Spring Cloud Build Pack Binding to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "binding_type" {
  description = "Specifies the Build Pack Binding Type. Allowed values are 'ApacheSkyWalking', 'AppDynamics', 'ApplicationInsights', 'Dynatrace', 'ElasticAPM' and 'NewRelic'."
  type        = string
  default     = null
}
variable "launch" {
  description = "A 'launch' block."
  type        = map(any)
  default     = null
}
#
# launch block structure:
#   properties (string)   : Specifies a map of non-sensitive properties for launchProperties.
#   secrets (string)      : Specifies a map of sensitive properties for launchProperties.


