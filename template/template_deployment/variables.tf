# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the template deployment. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the template deployment. Changing this forces a new resource to be created."
  type        = string

}
variable "deployment_mode" {
  description = "(REQUIRED) Specifies the mode that is used to deploy resources. This value could be either 'Incremental' or 'Complete'. Note that you will almost *always* want this to be set to 'Incremental' otherwise the deployment will destroy all infrastructure not specified within the template, and Terraform will not be aware of this."
  type        = string

}

# OPTIONAL VARIABLES

variable "template_body" {
  description = "Specifies the JSON definition for the template."
  type        = string
  default     = null
}
variable "parameters" {
  description = "Specifies the name and value pairs that define the deployment parameters for the template."
  type        = string
  default     = null
}
variable "parameters_body" {
  description = "Specifies a valid Azure JSON parameters file that define the deployment parameters. It can contain KeyVault references"
  type        = string
  default     = null
}
