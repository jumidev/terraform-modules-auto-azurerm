# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The namespace of the Resource Provider which should be registered. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "feature" {
  description = "A list of 'feature' blocks."
  type        = map(map(any))
  default     = null
}
#
# feature block structure:
#   registered (string)    : (REQUIRED) Should this feature be Registered or Unregistered?


