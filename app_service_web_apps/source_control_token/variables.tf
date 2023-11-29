# REQUIRED VARIABLES

variable "type" {
  description = "(REQUIRED) The Token type. Possible values include 'Bitbucket', 'Dropbox', 'Github', and 'OneDrive'."
  type        = string

}
variable "token" {
  description = "(REQUIRED) The Access Token."
  type        = string

}

# OPTIONAL VARIABLES

variable "token_secret" {
  description = "The Access Token Secret."
  type        = string
  default     = null
}
