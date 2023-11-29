# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the endpoint. The name must be unique across endpoint types. The following names are reserved: 'events', 'operationsMonitoringEvents', 'fileNotifications' and '$default'. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group under which the Cosmos DB Account has been created. Changing this forces a new resource to be created."
  type        = string

}
variable "iothub_id" {
  description = "(REQUIRED) The ID of the IoT Hub to create the endpoint. Changing this forces a new resource to be created."
  type        = string

}
variable "container_name" {
  description = "(REQUIRED) The name of the Cosmos DB Container in the Cosmos DB Database. Changing this forces a new resource to be created."
  type        = string

}
variable "database_name" {
  description = "(REQUIRED) The name of the Cosmos DB Database in the Cosmos DB Account. Changing this forces a new resource to be created."
  type        = string

}
variable "endpoint_uri" {
  description = "(REQUIRED) The URI of the Cosmos DB Account. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "authentication_type" {
  description = "The type used to authenticate against the Cosmos DB Account endpoint. Possible values are 'keyBased' and 'identityBased'. Defaults to 'keyBased'."
  type        = string
  default     = "keyBased"
}
variable "identity_id" {
  description = "The ID of the User Managed Identity used to authenticate against the Cosmos DB Account endpoint."
  type        = string
  default     = null
}
variable "partition_key_name" {
  description = "The name of the partition key associated with the Cosmos DB Container."
  type        = string
  default     = null
}
variable "partition_key_template" {
  description = "The template for generating a synthetic partition key value for use within the Cosmos DB Container."
  type        = string
  default     = null
}
variable "primary_key" {
  description = "The primary key of the Cosmos DB Account."
  type        = string
  default     = null
}
variable "secondary_key" {
  description = "The secondary key of the Cosmos DB Account."
  type        = string
  default     = null
}
