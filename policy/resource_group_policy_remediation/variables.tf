# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Policy Remediation. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_id" {
  description = "(REQUIRED) The Resource Group ID at which the Policy Remediation should be applied. Changing this forces a new resource to be created."
  type        = string

}
variable "policy_assignment_id" {
  description = "(REQUIRED) The ID of the Policy Assignment that should be remediated."
  type        = string

}

# OPTIONAL VARIABLES

variable "policy_definition_id" {
  description = "The unique ID for the policy definition within the policy set definition that should be remediated. Required when the policy assignment being remediated assigns a policy set definition."
  type        = string
  default     = null
}
variable "policy_definition_reference_id" {
  description = "The unique ID for the policy definition reference within the policy set definition that should be remediated. Required when the policy assignment being remediated assigns a policy set definition."
  type        = string
  default     = null
}
variable "location_filters" {
  description = "A list of the resource locations that will be remediated."
  type        = list(any)
  default     = []
}
variable "resource_discovery_mode" {
  description = "The way that resources to remediate are discovered. Possible values are 'ExistingNonCompliant', 'ReEvaluateCompliance'. Defaults to 'ExistingNonCompliant'."
  type        = string
  default     = "ExistingNonCompliant"
}
variable "failure_percentage" {
  description = "A number between 0.0 to 1.0 representing the percentage failure threshold. The remediation will fail if the percentage of failed remediation operations (i.e. failed deployments) exceeds this threshold."
  type        = string
  default     = null
}
variable "parallel_deployments" {
  description = "Determines how many resources to remediate at any given time. Can be used to increase or reduce the pace of the remediation. If not provided, the default parallel deployments value is used."
  type        = string
  default     = null
}
variable "resource_count" {
  description = "Determines the max number of resources that can be remediated by the remediation job. If not provided, the default resource count is used."
  type        = number
  default     = null
}
