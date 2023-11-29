# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions."
  type        = string

}
variable "data_factory_id" {
  description = "(REQUIRED) The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource."
  type        = string

}
variable "authentication_type" {
  description = "(REQUIRED) The type of authentication used to connect to the web table source. Valid options are 'Anonymous', 'Basic' and 'ClientCertificate'."
  type        = string

}
variable "url" {
  description = "(REQUIRED) The URL of the web service endpoint (e.g. <https://www.microsoft.com>)."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "The description for the Data Factory Linked Service."
  type        = string
  default     = null
}
variable "integration_runtime_name" {
  description = "The integration runtime reference to associate with the Data Factory Linked Service."
  type        = string
  default     = null
}
variable "annotations" {
  description = "List of tags that can be used for describing the Data Factory Linked Service."
  type        = string
  default     = null
}
variable "parameters" {
  description = "A map of parameters to associate with the Data Factory Linked Service."
  type        = string
  default     = null
}
variable "additional_properties" {
  description = "A map of additional properties to associate with the Data Factory Linked Service."
  type        = string
  default     = null
}
variable "password" {
  description = "The password for Basic authentication. Required if 'authentication_type' sets to 'Basic'."
  type        = string
  default     = null
}
variable "username" {
  description = "The username for Basic authentication. Required if 'authentication_type' sets to 'Basic'."
  type        = string
  default     = null
}
