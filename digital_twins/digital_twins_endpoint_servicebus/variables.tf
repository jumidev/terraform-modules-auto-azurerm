# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Digital Twins Service Bus Endpoint. Changing this forces a new Digital Twins Service Bus Endpoint to be created."
  type        = string

}
variable "digital_twins_id" {
  description = "(REQUIRED) The ID of the Digital Twins Instance. Changing this forces a new Digital Twins Service Bus Endpoint to be created."
  type        = string

}
variable "servicebus_primary_connection_string" {
  description = "(REQUIRED) The primary connection string of the Service Bus Topic Authorization Rule with a minimum of 'send' permission. ."
  type        = string

}
variable "servicebus_secondary_connection_string" {
  description = "(REQUIRED) The secondary connection string of the Service Bus Topic Authorization Rule with a minimum of 'send' permission."
  type        = string

}

# OPTIONAL VARIABLES

variable "dead_letter_storage_secret" {
  description = "The storage secret of the dead-lettering, whose format is 'https://<storageAccountname>.blob.core.windows.net/<containerName>?<SASToken>'. When an endpoint can't deliver an event within a certain time period or after trying to deliver the event a certain number of times, it can send the undelivered event to a storage account."
  type        = int
  default     = null
}
