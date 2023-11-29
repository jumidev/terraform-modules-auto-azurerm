# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Stream Analytics Cluster. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Stream Analytics Cluster should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Stream Analytics Cluster should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "streaming_capacity" {
  description = "(REQUIRED) The number of streaming units supported by the Cluster. Accepted values are multiples of '36' in the range of '36' to '216'."
  type        = int

}

# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags which should be assigned to the Stream Analytics."
  type        = map(any)
  default     = null
}
