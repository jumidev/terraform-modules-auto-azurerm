# REQUIRED VARIABLES

variable "location" {
  description = "(REQUIRED) The Azure Region where the Data Collection Endpoint should exist. Changing this forces a new Data Collection Endpoint to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Data Collection Endpoint. Changing this forces a new Data Collection Endpoint to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Data Collection Endpoint should exist. Changing this forces a new Data Collection Endpoint to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "Specifies a description for the Data Collection Endpoint."
  type        = string
  default     = null
}
variable "kind" {
  description = "The kind of the Data Collection Endpoint. Possible values are 'Linux' and 'Windows'."
  type        = string
  default     = null
}
variable "public_network_access_enabled" {
  description = "Whether network access from public internet to the Data Collection Endpoint are allowed. Possible values are 'true' and 'false'. Default to 'true'."
  type        = bool
  default     = true
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Data Collection Endpoint."
  type        = map(any)
  default     = null
}

# OPTIONAL VARIABLES

variable "monitor_data_collection_rule_association" {
  type    = map(any)
  default = null
}
