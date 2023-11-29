# REQUIRED VARIABLES

variable "location" {
  description = "(REQUIRED) The Azure Region where the Template should exist. Changing this forces a new Template to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Template. Changing this forces a new Template to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "debug_level" {
  description = "The Debug Level which should be used for this Resource Group Template Deployment. Possible values are 'none', 'requestContent', 'responseContent' and 'requestContent, responseContent'."
  type        = string
  default     = null
}
variable "parameters_content" {
  description = "The contents of the ARM Template parameters file - containing a JSON list of parameters."
  type        = string
  default     = null
}
variable "template_content" {
  description = "The contents of the ARM Template which should be deployed into this Resource Group. Cannot be specified with 'template_spec_version_id'."
  type        = string
  default     = null
}
variable "template_spec_version_id" {
  description = "The ID of the Template Spec Version to deploy. Cannot be specified with 'template_content'."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Template."
  type        = map(any)
  default     = null
}
