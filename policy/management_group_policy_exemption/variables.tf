# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Policy Exemption. Changing this forces a new resource to be created."
  type        = string

}
variable "management_group_id" {
  description = "(REQUIRED) The Management Group ID where the Policy Exemption should be applied. Changing this forces a new resource to be created."
  type        = string

}
variable "exemption_category" {
  description = "(REQUIRED) The category of this policy exemption. Possible values are 'Waiver' and 'Mitigated'."
  type        = string

}
variable "policy_assignment_id" {
  description = "(REQUIRED) The ID of the Policy Assignment to be exempted at the specified Scope."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "A description to use for this Policy Exemption."
  type        = string
  default     = null
}
variable "display_name" {
  description = "A friendly display name to use for this Policy Exemption."
  type        = string
  default     = null
}
variable "expires_on" {
  description = "The expiration date and time in UTC ISO 8601 format of this policy exemption."
  type        = string
  default     = null
}
variable "policy_definition_reference_ids" {
  description = "The policy definition reference ID list when the associated policy assignment is an assignment of a policy set definition."
  type        = string
  default     = null
}
variable "metadata" {
  description = "The metadata for this policy exemption. This is a JSON string representing additional metadata that should be stored with the policy exemption."
  type        = string
  default     = null
}
