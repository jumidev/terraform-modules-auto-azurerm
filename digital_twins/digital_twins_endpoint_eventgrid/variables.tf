# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Digital Twins Eventgrid Endpoint. Changing this forces a new Digital Twins Eventgrid Endpoint to be created."
  type        = string

}
variable "digital_twins_id" {
  description = "(REQUIRED) The resource ID of the Digital Twins Instance. Changing this forces a new Digital Twins Eventgrid Endpoint to be created."
  type        = string

}
variable "eventgrid_topic_endpoint" {
  description = "(REQUIRED) The endpoint of the Event Grid Topic."
  type        = string

}
variable "eventgrid_topic_primary_access_key" {
  description = "(REQUIRED) The primary access key of the Event Grid Topic."
  type        = string

}
variable "eventgrid_topic_secondary_access_key" {
  description = "(REQUIRED) The secondary access key of the Event Grid Topic."
  type        = string

}

# OPTIONAL VARIABLES

variable "dead_letter_storage_secret" {
  description = "The storage secret of the dead-lettering, whose format is 'https://<storageAccountname>.blob.core.windows.net/<containerName>?<SASToken>'. When an endpoint can't deliver an event within a certain time period or after trying to deliver the event a certain number of times, it can send the undelivered event to a storage account."
  type        = int
  default     = null
}
