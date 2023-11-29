# REQUIRED VARIABLES

variable "location" {
  description = "(REQUIRED) The Azure Region where the Subscription Template Deployment should exist. Changing this forces a new Subscription Template Deployment to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Subscription Template Deployment. Changing this forces a new Subscription Template Deployment to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "debug_level" {
  description = "The Debug Level which should be used for this Subscription Template Deployment. Possible values are 'none', 'requestContent', 'responseContent' and 'requestContent, responseContent'."
  type        = string
  default     = null
}
variable "template_content" {
  description = "The contents of the ARM Template which should be deployed into this Subscription."
  type        = string
  default     = null
}
variable "template_spec_version_id" {
  description = "The ID of the Template Spec Version to deploy into the Subscription. Cannot be specified with 'template_content'."
  type        = string
  default     = null
}
variable "parameters_content" {
  description = "The contents of the ARM Template parameters file - containing a JSON list of parameters."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Subscription Template Deployment."
  type        = map(any)
  default     = null
}
