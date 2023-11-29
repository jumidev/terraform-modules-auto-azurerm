# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Managed Private Endpoint. Changing this forces a new resource to be created."
  type        = string

}
variable "data_factory_id" {
  description = "(REQUIRED) The ID of the Data Factory on which to create the Managed Private Endpoint. Changing this forces a new resource to be created."
  type        = string

}
variable "target_resource_id" {
  description = "(REQUIRED) The ID of the Private Link Enabled Remote Resource which this Data Factory Private Endpoint should be connected to. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "subresource_name" {
  description = "Specifies the sub resource name which the Data Factory Private Endpoint is able to connect to. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "fqdns" {
  description = "Fully qualified domain names. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
