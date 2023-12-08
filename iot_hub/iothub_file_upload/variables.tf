# REQUIRED VARIABLES

variable "iothub_id" {
  description = "(REQUIRED) The ID of the IoT Hub. Changing this forces a new IoT Hub to be created."
  type        = string

}
variable "connection_string" {
  description = "(REQUIRED) The connection string for the Azure Storage account to which files are uploaded."
  type        = string

}
variable "container_name" {
  description = "(REQUIRED) The name of the root container where the files should be uploaded to. The container need not exist but should be creatable using the 'connection_string' specified."
  type        = string

}

# OPTIONAL VARIABLES

variable "authentication_type" {
  description = "The type used to authenticate against the storage account. Possible values are 'keyBased' and 'identityBased'. Defaults to 'keyBased'."
  type        = string
  default     = "keyBased"
}
variable "default_ttl" {
  description = "The period of time for which a file upload notification message is available to consume before it expires, specified as an [ISO 8601 timespan duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). This value must be between 1 minute and 48 hours. Defaults to 'PT1H'."
  type        = string
  default     = "PT1H"
}
variable "identity_id" {
  description = "The ID of the User Managed Identity used to authenticate against the storage account."
  type        = string
  default     = null
}
variable "lock_duration" {
  description = "The lock duration for the file upload notifications queue, specified as an [ISO 8601 timespan duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). This value must be between 5 and 300 seconds. Defaults to 'PT1M'."
  type        = string
  default     = "PT1M"
}
variable "max_delivery_count" {
  description = "The number of times the IoT Hub attempts to deliver a file upload notification message. Defaults to '10'."
  type        = number
  default     = 10
}
variable "notifications_enabled" {
  description = "Used to specify whether file notifications are sent to IoT Hub on upload. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "sas_ttl" {
  description = "The period of time for which the SAS URI generated by IoT Hub for file upload is valid, specified as an [ISO 8601 timespan duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). This value must be between 1 minute and 24 hours. Defaults to 'PT1H'."
  type        = string
  default     = "PT1H"
}
