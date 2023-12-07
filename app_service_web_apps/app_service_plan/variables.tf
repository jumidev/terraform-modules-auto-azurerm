# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the App Service Plan component. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the App Service Plan component. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "sku" {
  description = "(REQUIRED) A 'sku' block."
  type        = map(any)
}
#
# sku block structure:
#   tier (string)      : (REQUIRED) Specifies the plan's pricing tier.
#   size (string)      : (REQUIRED) Specifies the plan's instance size.
#   capacity (string)  : Specifies the number of workers associated with this App Service Plan.



# OPTIONAL VARIABLES

variable "kind" {
  description = "The kind of the App Service Plan to create. Possible values are 'Windows' (also available as 'App'), 'Linux', 'elastic' (for Premium Consumption), 'xenon' and 'FunctionApp' (for a Consumption Plan). Defaults to 'Windows'. Changing this forces a new resource to be created."
  type        = string
  default     = "Windows"
}
variable "maximum_elastic_worker_count" {
  description = "The maximum number of total workers allowed for this ElasticScaleEnabled App Service Plan."
  type        = int
  default     = null
}
variable "app_service_environment_id" {
  description = "The ID of the App Service Environment where the App Service Plan should be located. Changing forces a new resource to be created."
  type        = string
  default     = null
}
variable "reserved" {
  description = "Is this App Service Plan 'Reserved'."
  type        = string
  default     = null
}
variable "per_site_scaling" {
  description = "Can Apps assigned to this App Service Plan be scaled independently? If set to 'false' apps assigned to this plan will scale to all instances of the plan."
  type        = string
  default     = null
}
variable "is_xenon" {
  description = "Whether to create a xenon App Service Plan."
  type        = string
  default     = null
}
variable "zone_redundant" {
  description = "Specifies if the App Service Plan should be Zone Redundant. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
