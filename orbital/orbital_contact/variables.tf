# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Contact. Changing this forces a new resource to be created. Changing this forces a new resource to be created."
  type        = string

}
variable "spacecraft_id" {
  description = "(REQUIRED) The ID of the spacecraft which the contact will be made to. Changing this forces a new resource to be created."
  type        = string

}
variable "reservation_start_time" {
  description = "(REQUIRED) Reservation start time of the Contact. Changing this forces a new resource to be created."
  type        = string

}
variable "reservation_end_time" {
  description = "(REQUIRED) Reservation end time of the Contact. Changing this forces a new resource to be created."
  type        = string

}
variable "ground_station_name" {
  description = "(REQUIRED) Name of the Azure ground station. Changing this forces a new resource to be created."
  type        = string

}
variable "contact_profile_id" {
  description = "(REQUIRED) ID of the orbital contact profile. Changing this forces a new resource to be created."
  type        = string

}
