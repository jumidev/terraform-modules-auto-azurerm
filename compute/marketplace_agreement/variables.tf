# REQUIRED VARIABLES

variable "offer" {
  description = "(REQUIRED) The Offer of the Marketplace Image. Changing this forces a new resource to be created."
  type        = string

}
variable "plan" {
  description = "(REQUIRED) The Plan of the Marketplace Image. Changing this forces a new resource to be created."
  type        = string

}
variable "publisher" {
  description = "(REQUIRED) The Publisher of the Marketplace Image. Changing this forces a new resource to be created."
  type        = string

}
