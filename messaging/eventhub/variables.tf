# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the EventHub resource. Changing this forces a new resource to be created."
  type        = string

}
variable "namespace_name" {
  description = "(REQUIRED) Specifies the name of the EventHub Namespace. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the EventHub's parent Namespace exists. Changing this forces a new resource to be created."
  type        = string

}
variable "partition_count" {
  description = "(REQUIRED) Specifies the current number of shards on the Event Hub."
  type        = string

}
variable "message_retention" {
  description = "(REQUIRED) Specifies the number of days to retain the events for this Event Hub."
  type        = string

}

# OPTIONAL VARIABLES

variable "capture_description" {
  description = "A 'capture_description' block."
  type        = map(any)
  default     = null
}
#
# capture_description block structure:
#   enabled (bool)                     : (REQUIRED) Specifies if the Capture Description is Enabled.
#   encoding (string)                  : (REQUIRED) Specifies the Encoding used for the Capture Description. Possible values are 'Avro' and 'AvroDeflate'.
#   interval_in_seconds (string)       : Specifies the time interval in seconds at which the capture will happen. Values can be between '60' and '900' seconds. Defaults to '300' seconds.
#   size_limit_in_bytes (string)       : Specifies the amount of data built up in your EventHub before a Capture Operation occurs. Value should be between '10485760' and '524288000' bytes. Defaults to '314572800' bytes.
#   skip_empty_archives (bool)         : Specifies if empty files should not be emitted if no events occur during the Capture time window. Defaults to 'false'.
#   destination (block)                : (REQUIRED) A 'destination' block.
#
# destination block structure :
#   name (string)               : (REQUIRED) The Name of the Destination where the capture should take place. At this time the only supported value is 'EventHubArchive.AzureBlockBlob'.
#   archive_name_format (string): (REQUIRED) The Blob naming convention for archiving. e.g. '{Namespace}/{EventHub}/{PartitionId}/{Year}/{Month}/{Day}/{Hour}/{Minute}/{Second}'. Here all the parameters (Namespace,EventHub .. etc) are mandatory irrespective of order
#   blob_container_name (string): (REQUIRED) The name of the Container within the Blob Storage Account where messages should be archived.
#   storage_account_id (string) : (REQUIRED) The ID of the Blob Storage Account where messages should be archived.


variable "status" {
  description = "Specifies the status of the Event Hub resource. Possible values are 'Active', 'Disabled' and 'SendDisabled'. Defaults to 'Active'."
  type        = string
  default     = "Active"
}
variable "eventhub_namespace_resource_group_name" {
  description = "The Name of the Resource Group where the EventHub Namespace exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
