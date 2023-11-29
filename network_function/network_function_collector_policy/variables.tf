# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Network Function Collector Policy. Changing this forces a new Network Function Collector Policy to be created."
  type        = string

}
variable "traffic_collector_id" {
  description = "(REQUIRED) Specifies the Azure Traffic Collector ID of the Network Function Collector Policy. Changing this forces a new Network Function Collector Policy to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the Network Function Collector Policy should exist. Changing this forces a new Network Function Collector Policy to be created."
  type        = string

}
variable "ipfx_emission" {
  description = "(REQUIRED) An 'ipfx_emission' block. Changing this forces a new Network Function Collector Policy to be created."
  type        = map(any)
}
#
# ipfx_emission block structure:
#   destination_types (list)     : (REQUIRED) A list of emission destination types. The only possible value is 'AzureMonitor'. Changing this forces a new Network Function Collector Policy to be created.


variable "ipfx_ingestion" {
  description = "(REQUIRED) An 'ipfx_ingestion' block. Changing this forces a new Network Function Collector Policy to be created."
  type        = map(any)
}
#
# ipfx_ingestion block structure:
#   source_resource_ids (list)    : (REQUIRED) A list of ingestion source resource IDs. Changing this forces a new Network Function Collector Policy to be created.



# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags which should be assigned to the Network Function Collector Policy."
  type        = map(any)
  default     = null
}
