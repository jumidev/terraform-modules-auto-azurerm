# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Logic App Integration Account Assembly Artifact. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Logic App Integration Account Assembly Artifact should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "integration_account_name" {
  description = "(REQUIRED) The name of the Logic App Integration Account. Changing this forces a new resource to be created."
  type        = string

}
variable "assembly_name" {
  description = "(REQUIRED) The name of the Logic App Integration Account Assembly."
  type        = string

}

# OPTIONAL VARIABLES

variable "assembly_version" {
  description = "The version of the Logic App Integration Account Assembly. Defaults to '0.0.0.0'."
  type        = string
  default     = "0.0.0.0"
}
variable "content" {
  description = "The content of the Logic App Integration Account Assembly."
  type        = string
  default     = null
}
variable "content_link_uri" {
  description = "The content link URI of the Logic App Integration Account Assembly."
  type        = string
  default     = null
}
variable "metadata" {
  description = "The metadata of the Logic App Integration Account Assembly."
  type        = string
  default     = null
}
