# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Dev Test Policy. Possible values are 'GalleryImage', 'LabPremiumVmCount', 'LabTargetCost', 'LabVmCount', 'LabVmSize', 'UserOwnedLabPremiumVmCount', 'UserOwnedLabVmCount' and 'UserOwnedLabVmCountInSubnet'. Changing this forces a new resource to be created."
  type        = string

}
variable "policy_set_name" {
  description = "(REQUIRED) Specifies the name of the Policy Set within the Dev Test Lab where this policy should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "lab_name" {
  description = "(REQUIRED) Specifies the name of the Dev Test Lab in which the Policy should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the Dev Test Lab resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "evaluator_type" {
  description = "(REQUIRED) The Evaluation Type used for this Policy. Possible values include: 'AllowedValuesPolicy', 'MaxValuePolicy'. Changing this forces a new resource to be created."
  type        = string

}
variable "threshold" {
  description = "(REQUIRED) The Threshold for this Policy."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "A description for the Policy."
  type        = string
  default     = null
}
variable "fact_data" {
  description = "The Fact Data for this Policy."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
