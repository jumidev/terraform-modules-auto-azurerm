# REQUIRED VARIABLES

variable "iothub_name" {
  description = "(REQUIRED) The IoTHub name of the enrichment. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group under which the IoTHub resource is created. Changing this forces a new resource to be created."
  type        = string

}
variable "key" {
  description = "(REQUIRED) The key of the enrichment. Changing this forces a new resource to be created."
  type        = string

}
variable "value" {
  description = "(REQUIRED) The value of the enrichment. Value can be any static string, the name of the IoT hub sending the message (use '$iothubname') or information from the device twin (ex: '$twin.tags.latitude')"
  type        = string

}
variable "endpoint_names" {
  description = "(REQUIRED) The list of endpoints which will be enriched."
  type        = string

}

# OPTIONAL VARIABLES

variable "iothub_resource_group_name" {
  description = "The name of the Resource Group where the IoTHub exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
