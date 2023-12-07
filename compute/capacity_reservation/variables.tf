# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of this Capacity Reservation. Changing this forces a new resource to be created."
  type        = string

}
variable "capacity_reservation_group_id" {
  description = "(REQUIRED) The ID of the Capacity Reservation Group where the Capacity Reservation exists. Changing this forces a new resource to be created."
  type        = string

}
variable "sku" {
  description = "(REQUIRED) A 'sku' block."
  type        = map(any)
}
#
# sku block structure:
#   name (string)      : (REQUIRED) Name of the sku, such as 'Standard_F2'. Changing this forces a new resource to be created.
#   capacity (string)  : (REQUIRED) Specifies the number of instances to be reserved. It must be a positive 'integer' and not exceed the quota in the subscription.



# OPTIONAL VARIABLES

variable "zone" {
  description = "Specifies the Availability Zone for this Capacity Reservation. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
