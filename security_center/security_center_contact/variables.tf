# REQUIRED VARIABLES

variable "alert_notifications" {
  description = "(REQUIRED) Whether to send security alerts notifications to the security contact."
  type        = string

}
variable "alerts_to_admins" {
  description = "(REQUIRED) Whether to send security alerts notifications to subscription admins."
  type        = string

}
variable "email" {
  description = "(REQUIRED) The email of the Security Center Contact."
  type        = string

}

# OPTIONAL VARIABLES

variable "name" {
  description = "The name of the Security Center Contact. Defaults to 'default1'."
  type        = string
  default     = "default1"
}
variable "phone" {
  description = "The phone number of the Security Center Contact."
  type        = int
  default     = null
}
