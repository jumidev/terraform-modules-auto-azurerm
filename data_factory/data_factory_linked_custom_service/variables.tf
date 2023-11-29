# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions."
  type        = string

}
variable "data_factory_id" {
  description = "(REQUIRED) The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource."
  type        = string

}
variable "type" {
  description = "(REQUIRED) The type of data stores that will be connected to Data Factory. For full list of supported data stores, please refer to [Azure Data Factory connector](https://docs.microsoft.com/azure/data-factory/connector-overview). Changing this forces a new resource to be created."
  type        = string

}
variable "type_properties_json" {
  description = "(REQUIRED) A JSON object that contains the properties of the Data Factory Linked Service."
  type        = string

}

# OPTIONAL VARIABLES

variable "additional_properties" {
  description = "A map of additional properties to associate with the Data Factory Linked Service."
  type        = string
  default     = null
}
variable "annotations" {
  description = "List of tags that can be used for describing the Data Factory Linked Service."
  type        = string
  default     = null
}
variable "description" {
  description = "The description for the Data Factory Linked Service."
  type        = string
  default     = null
}
variable "integration_runtime" {
  description = "An 'integration_runtime' block."
  type        = map(any)
  default     = null
}
#
# integration_runtime block structure:
#   name (string)                      : (REQUIRED) The integration runtime reference to associate with the Data Factory Linked Service.
#   parameters (string)                : A map of parameters to associate with the integration runtime.


variable "parameters" {
  description = "A map of parameters to associate with the Data Factory Linked Service."
  type        = string
  default     = null
}
