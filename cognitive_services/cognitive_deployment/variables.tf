# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Cognitive Services Account Deployment. Changing this forces a new resource to be created."
  type        = string

}
variable "cognitive_account_id" {
  description = "(REQUIRED) The ID of the Cognitive Services Account. Changing this forces a new resource to be created."
  type        = string

}
variable "model" {
  description = "(REQUIRED) A 'model' block. Changing this forces a new resource to be created."
  type        = map(any)
}
#
# model block structure:
#   format (string)      : (REQUIRED) The format of the Cognitive Services Account Deployment model. Changing this forces a new resource to be created. Possible value is 'OpenAI'.
#   name (string)        : (REQUIRED) The name of the Cognitive Services Account Deployment model. Changing this forces a new resource to be created.
#   version (string)     : (REQUIRED) The version of Cognitive Services Account Deployment model.


variable "scale" {
  description = "(REQUIRED) A 'scale' block."
  type        = map(any)
}
#
# scale block structure:
#   type (string)        : (REQUIRED) The name of the SKU. Ex - 'Standard' or 'P3'. It is typically a letter+number code. Changing this forces a new resource to be created.
#   tier (string)        : Possible values are 'Free', 'Basic', 'Standard', 'Premium', 'Enterprise'. Changing this forces a new resource to be created.
#   size (string)        : The SKU size. When the name field is the combination of tier and some other value, this would be the standalone code. Changing this forces a new resource to be created.
#   family (string)      : If the service has different generations of hardware, for the same SKU, then that can be captured here. Changing this forces a new resource to be created.
#   capacity (string)    : Tokens-per-Minute (TPM). The unit of measure for this field is in the thousands of Tokens-per-Minute. Defaults to '1' which means that the limitation is '1000' tokens per minute. If the resources SKU supports scale in/out then the capacity field should be included in the resources' configuration. If the scale in/out is not supported by the resources SKU then this field can be safely omitted. For more information about TPM please see the [product documentation](https://learn.microsoft.com/azure/ai-services/openai/how-to/quota?tabs=rest).



# OPTIONAL VARIABLES

variable "rai_policy_name" {
  description = "The name of RAI policy."
  type        = string
  default     = null
}
variable "version_upgrade_option" {
  description = "Deployment model version upgrade option. Possible values are 'OnceNewDefaultVersionAvailable', 'OnceCurrentVersionExpired', and 'NoAutoUpgrade'. Defaults to 'OnceNewDefaultVersionAvailable'. Changing this forces a new resource to be created."
  type        = string
  default     = "OnceNewDefaultVersionAvailable"
}
