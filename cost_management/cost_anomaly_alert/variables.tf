# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Cost Anomaly Alert. Changing this forces a new resource to be created. The name can contain only lowercase letters, numbers and hyphens."
  type        = string

}
variable "display_name" {
  description = "(REQUIRED) The display name which should be used for this Cost Anomaly Alert."
  type        = string

}
variable "email_addresses" {
  description = "(REQUIRED) Specifies a list of email addresses which the Anomaly Alerts are send to."
  type        = list(any)

}
variable "email_subject" {
  description = "(REQUIRED) The email subject of the Cost Anomaly Alerts. Maximum length of the subject is 70."
  type        = string

}

# OPTIONAL VARIABLES

variable "message" {
  description = "The message of the Cost Anomaly Alert. Maximum length of the message is 250."
  type        = string
  default     = null
}
