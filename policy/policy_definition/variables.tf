# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the policy definition. Changing this forces a new resource to be created."
  type        = string

}
variable "policy_type" {
  description = "(REQUIRED) The policy type. Possible values are 'BuiltIn', 'Custom', 'NotSpecified' and 'Static'. Changing this forces a new resource to be created."
  type        = string

}
variable "mode" {
  description = "(REQUIRED) The policy resource manager mode that allows you to specify which resource types will be evaluated. Possible values are 'All', 'Indexed', 'Microsoft.ContainerService.Data', 'Microsoft.CustomerLockbox.Data', 'Microsoft.DataCatalog.Data', 'Microsoft.KeyVault.Data', 'Microsoft.Kubernetes.Data', 'Microsoft.MachineLearningServices.Data', 'Microsoft.Network.Data' and 'Microsoft.Synapse.Data'. ~> **Note:** Other resource provider modes only support built-in policy definitions but may later become available in custom definitions, these include; 'Microsoft.ContainerService.Data', 'Microsoft.CustomerLockbox.Data', 'Microsoft.DataCatalog.Data', 'Microsoft.KeyVault.Data', 'Microsoft.Kubernetes.Data', 'Microsoft.MachineLearningServices.Data', 'Microsoft.Network.Data' and 'Microsoft.Synapse.Data'. [See here](https://docs.microsoft.com/en-us/azure/governance/policy/concepts/definition-structure#resource-provider-modes) for more details."
  type        = string

}
variable "display_name" {
  description = "(REQUIRED) The display name of the policy definition."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "The description of the policy definition."
  type        = string
  default     = null
}
variable "management_group_id" {
  description = "The id of the Management Group where this policy should be defined. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "policy_rule" {
  description = "The policy rule for the policy definition. This is a JSON string representing the rule that contains an if and a then block."
  type        = string
  default     = null
}
variable "metadata" {
  description = "The metadata for the policy definition. This is a JSON string representing additional metadata that should be stored with the policy definition."
  type        = string
  default     = null
}
variable "parameters" {
  description = "Parameters for the policy definition. This field is a JSON string that allows you to parameterize your policy definition."
  type        = string
  default     = null
}
