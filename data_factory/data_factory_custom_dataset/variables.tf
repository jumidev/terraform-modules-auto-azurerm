# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions."
  type        = string

}
variable "data_factory_id" {
  description = "(REQUIRED) The Data Factory ID in which to associate the Dataset with. Changing this forces a new resource."
  type        = string

}
variable "linked_service" {
  description = "(REQUIRED) A 'linked_service' block."
  type        = map(any)
}
#
# linked_service block structure:
#   name (string)                 : (REQUIRED) The name of the Data Factory Linked Service.
#   parameters (string)           : A map of parameters to associate with the Data Factory Linked Service.


variable "type" {
  description = "(REQUIRED) The type of dataset that will be associated with Data Factory. Changing this forces a new resource to be created."
  type        = string

}
variable "type_properties_json" {
  description = "(REQUIRED) A JSON object that contains the properties of the Data Factory Dataset."
  type        = string

}

# OPTIONAL VARIABLES

variable "additional_properties" {
  description = "A map of additional properties to associate with the Data Factory Dataset."
  type        = string
  default     = null
}
variable "annotations" {
  description = "List of tags that can be used for describing the Data Factory Dataset."
  type        = string
  default     = null
}
variable "description" {
  description = "The description for the Data Factory Dataset."
  type        = string
  default     = null
}
variable "folder" {
  description = "The folder that this Dataset is in. If not specified, the Dataset will appear at the root level."
  type        = string
  default     = null
}
variable "parameters" {
  description = "A map of parameters to associate with the Data Factory Dataset."
  type        = string
  default     = null
}
variable "schema_json" {
  description = "A JSON object that contains the schema of the Data Factory Dataset."
  type        = string
  default     = null
}
