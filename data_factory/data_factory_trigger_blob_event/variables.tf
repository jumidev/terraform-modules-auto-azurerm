# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Data Factory Blob Event Trigger. Changing this forces a new resource to be created."
  type        = string

}
variable "data_factory_id" {
  description = "(REQUIRED) The ID of Data Factory in which to associate the Trigger with. Changing this forces a new resource."
  type        = string

}
variable "storage_account_id" {
  description = "(REQUIRED) The ID of Storage Account in which blob event will be listened. Changing this forces a new resource."
  type        = string

}
variable "events" {
  description = "(REQUIRED) List of events that will fire this trigger. Possible values are 'Microsoft.Storage.BlobCreated' and 'Microsoft.Storage.BlobDeleted'."
  type        = string

}
variable "pipeline" {
  description = "(REQUIRED) One or more 'pipeline' blocks."
  type        = map(map(any))
}
#
# pipeline block structure:
#   parameters (string)     : The Data Factory Pipeline parameters that the trigger will act on.



# OPTIONAL VARIABLES

variable "activated" {
  description = "Specifies if the Data Factory Blob Event Trigger is activated. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "additional_properties" {
  description = "A map of additional properties to associate with the Data Factory Blob Event Trigger."
  type        = string
  default     = null
}
variable "annotations" {
  description = "List of tags that can be used for describing the Data Factory Blob Event Trigger."
  type        = string
  default     = null
}
variable "blob_path_begins_with" {
  description = "The pattern that blob path starts with for trigger to fire."
  type        = string
  default     = null
}
variable "blob_path_ends_with" {
  description = "The pattern that blob path ends with for trigger to fire."
  type        = string
  default     = null
}
variable "description" {
  description = "The description for the Data Factory Blob Event Trigger."
  type        = string
  default     = null
}
variable "ignore_empty_blobs" {
  description = "are blobs with zero bytes ignored?"
  type        = string
  default     = null
}
