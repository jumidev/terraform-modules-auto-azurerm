# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this SAS Definition."
  type        = string

}
variable "managed_storage_account_id" {
  description = "(REQUIRED) The ID of the Managed Storage Account."
  type        = string

}
variable "sas_template_uri" {
  description = "(REQUIRED) The SAS definition token template signed with an arbitrary key. Tokens created according to the SAS definition will have the same properties as the template, but regenerated with a new validity period."
  type        = string

}
variable "sas_type" {
  description = "(REQUIRED) The type of SAS token the SAS definition will create. Possible values are 'account' and 'service'."
  type        = string

}
variable "validity_period" {
  description = "(REQUIRED) Validity period of SAS token. Value needs to be in [ISO 8601 duration format](https://en.wikipedia.org/wiki/ISO_8601#Durations)."
  type        = string

}

# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags which should be assigned to the SAS Definition. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
