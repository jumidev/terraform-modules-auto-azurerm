# REQUIRED VARIABLES

variable "type" {
  description = "(REQUIRED) The source control type. Possible values are 'BitBucket', 'Dropbox', 'GitHub' and 'OneDrive'."
  type        = string

}
variable "token" {
  description = "(REQUIRED) The OAuth access token."
  type        = string

}

# OPTIONAL VARIABLES

variable "token_secret" {
  description = "The OAuth access token secret."
  type        = string
  default     = null
}
