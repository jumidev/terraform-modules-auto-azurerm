# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the endpoint. The name must be unique across endpoint types. The following names are reserved: 'events', 'operationsMonitoringEvents', 'fileNotifications' and '$default'. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group under which the Service Bus Queue has been created. Changing this forces a new resource to be created."
  type        = string

}
variable "iothub_id" {
  description = "(REQUIRED) The IoTHub ID for the endpoint. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "authentication_type" {
  description = "Type used to authenticate against the Service Bus Queue endpoint. Possible values are 'keyBased' and 'identityBased'. Defaults to 'keyBased'."
  type        = string
  default     = "keyBased"
}
variable "identity_id" {
  description = "ID of the User Managed Identity used to authenticate against the Service Bus Queue endpoint."
  type        = string
  default     = null
}
variable "endpoint_uri" {
  description = "URI of the Service Bus endpoint. This attribute can only be specified and is mandatory when 'authentication_type' is 'identityBased'."
  type        = string
  default     = null
}
variable "entity_path" {
  description = "Name of the Service Bus Queue. This attribute can only be specified and is mandatory when 'authentication_type' is 'identityBased'."
  type        = string
  default     = null
}
variable "connection_string" {
  description = "The connection string for the endpoint. This attribute can only be specified and is mandatory when 'authentication_type' is 'keyBased'."
  type        = string
  default     = null
}
