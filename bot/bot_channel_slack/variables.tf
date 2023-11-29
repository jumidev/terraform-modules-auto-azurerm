# REQUIRED VARIABLES

variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Bot Channel. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "bot_name" {
  description = "(REQUIRED) The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created."
  type        = string

}
variable "client_id" {
  description = "(REQUIRED) The Client ID that will be used to authenticate with Slack."
  type        = string

}
variable "client_secret" {
  description = "(REQUIRED) The Client Secret that will be used to authenticate with Slack."
  type        = string

}
variable "verification_token" {
  description = "(REQUIRED) The Verification Token that will be used to authenticate with Slack."
  type        = string

}

# OPTIONAL VARIABLES

variable "landing_page_url" {
  description = "The Slack Landing Page URL."
  type        = string
  default     = null
}
variable "signing_secret" {
  description = "The Signing Secret that will be used to sign the requests."
  type        = string
  default     = null
}
