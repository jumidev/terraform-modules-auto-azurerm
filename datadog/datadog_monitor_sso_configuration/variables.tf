# REQUIRED VARIABLES

variable "datadog_monitor_id" {
  description = "(REQUIRED) The Datadog Monitor Id which should be used for this Datadog Monitor SSO Configuration. Changing this forces a new Datadog Monitor SSO Configuration to be created."
  type        = string

}
variable "single_sign_on_enabled" {
  description = "(REQUIRED) The state of SingleSignOn configuration. Possible values are 'Enable' and 'Disable'."
  type        = bool

}
variable "enterprise_application_id" {
  description = "(REQUIRED) The application Id to perform SSO operation."
  type        = string

}

# OPTIONAL VARIABLES

variable "name" {
  description = "The name of the SingleSignOn configuration. Defaults to 'default'."
  type        = string
  default     = "default"
}
