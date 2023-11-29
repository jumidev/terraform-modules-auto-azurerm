# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Lab Service User. Changing this forces a new resource to be created."
  type        = string

}
variable "lab_id" {
  description = "(REQUIRED) The resource ID of the Lab Service Lab. Changing this forces a new resource to be created."
  type        = string

}
variable "email" {
  description = "(REQUIRED) The email address of the Lab Service User. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "additional_usage_quota" {
  description = "The amount of usage quota time the Lab Service User gets in addition to the lab usage quota. Defaults to 'PT0S'."
  type        = string
  default     = "PT0S"
}
