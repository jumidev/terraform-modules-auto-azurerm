# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the endpoint. The name must be unique across endpoint types. The following names are reserved: 'events', 'operationsMonitoringEvents', 'fileNotifications' and '$default'. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group under which the Storage Container has been created. Changing this forces a new resource to be created."
  type        = string

}
variable "container_name" {
  description = "(REQUIRED) The name of storage container in the storage account."
  type        = string

}
variable "iothub_id" {
  description = "(REQUIRED) The IoTHub ID for the endpoint. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "authentication_type" {
  description = "Type used to authenticate against the storage endpoint. Possible values are 'keyBased' and 'identityBased'. Defaults to 'keyBased'."
  type        = string
  default     = "keyBased"
}
variable "identity_id" {
  description = "ID of the User Managed Identity used to authenticate against the storage endpoint."
  type        = string
  default     = null
}
variable "endpoint_uri" {
  description = "URI of the Storage Container endpoint. This corresponds to the 'primary_blob_endpoint' of the parent storage account. This attribute can only be specified and is mandatory when 'authentication_type' is 'identityBased'."
  type        = string
  default     = null
}
variable "connection_string" {
  description = "The connection string for the endpoint. This attribute can only be specified and is mandatory when 'authentication_type' is 'keyBased'."
  type        = string
  default     = null
}
variable "batch_frequency_in_seconds" {
  description = "Time interval at which blobs are written to storage. Value should be between 60 and 720 seconds. Default value is 300 seconds."
  type        = int
  default     = null
}
variable "max_chunk_size_in_bytes" {
  description = "Maximum number of bytes for each blob written to storage. Value should be between 10485760(10MB) and 524288000(500MB). Default value is 314572800(300MB)."
  type        = int
  default     = null
}
variable "encoding" {
  description = "Encoding that is used to serialize messages to blobs. Supported values are 'Avro', 'AvroDeflate' and 'JSON'. Default value is 'Avro'. Changing this forces a new resource to be created."
  type        = string
  default     = "Avro"
}
variable "file_name_format" {
  description = "File name format for the blob. All parameters are mandatory but can be reordered. Defaults to '{iothub}/{partition}/{YYYY}/{MM}/{DD}/{HH}/{mm}'."
  type        = string
  default     = "{iothub}/{partition}/{YYYY}/{MM}/{DD}/{HH}/{mm}"
}
