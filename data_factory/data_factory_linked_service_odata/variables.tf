# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Data Factory Linked Service OData. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions."
  type        = string

}
variable "data_factory_id" {
  description = "(REQUIRED) The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource."
  type        = string

}
variable "url" {
  description = "(REQUIRED) The URL of the OData service endpoint."
  type        = string

}

# OPTIONAL VARIABLES

variable "basic_authentication" {
  description = "A 'basic_authentication' block."
  type        = map(any)
  default     = null
}
#
# basic_authentication block structure:
#   username (string)                   : (REQUIRED) The username which can be used to authenticate to the OData endpoint.
#   password (string)                   : (REQUIRED) The password associated with the username, which can be used to authenticate to the OData endpoint.


variable "description" {
  description = "The description for the Data Factory Linked Service OData."
  type        = string
  default     = null
}
variable "integration_runtime_name" {
  description = "The integration runtime reference to associate with the Data Factory Linked Service OData."
  type        = string
  default     = null
}
variable "annotations" {
  description = "List of tags that can be used for describing the Data Factory Linked Service OData."
  type        = string
  default     = null
}
variable "parameters" {
  description = "A map of parameters to associate with the Data Factory Linked Service OData."
  type        = string
  default     = null
}
variable "additional_properties" {
  description = "A map of additional properties to associate with the Data Factory Linked Service OData."
  type        = string
  default     = null
}
