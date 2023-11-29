# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Healthcare Med Tech Service. Changing this forces a new Healthcare Med Tech Service to be created."
  type        = string

}
variable "workspace_id" {
  description = "(REQUIRED) Specifies the id of the Healthcare Workspace where the Healthcare Med Tech Service should exist. Changing this forces a new Healthcare Med Tech Service to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the Healthcare Med Tech Service should be created. Changing this forces a new Healthcare Med Tech Service to be created."
  type        = string

}
variable "eventhub_namespace_name" {
  description = "(REQUIRED) Specifies the namespace name of the Event Hub to connect to."
  type        = string

}
variable "eventhub_name" {
  description = "(REQUIRED) Specifies the name of the Event Hub to connect to."
  type        = string

}
variable "eventhub_consumer_group_name" {
  description = "(REQUIRED) Specifies the Consumer Group of the Event Hub to connect to."
  type        = string

}
variable "device_mapping_json" {
  description = "(REQUIRED) Specifies the Device Mappings of the Med Tech Service."
  type        = string

}

# OPTIONAL VARIABLES

variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Healthcare Med Tech Service. Possible values are 'SystemAssigned'.
#   identity_ids (string)   : Specifies a list of User Assigned Managed Identity IDs to be assigned to this Healthcare Med Tech Service.


variable "tags" {
  description = "A mapping of tags to assign to the Healthcare Med Tech Service."
  type        = map(any)
  default     = null
}
variable "eventhub_consumer_group_eventhub_name" {
  description = "Specifies the name of the EventHub..  If not specified, value of var.eventhub_name will be used..  If not specified, value of var.eventhub_name will be used."
  type        = string
  default     = null
}
variable "eventhub_consumer_group_resource_group_name" {
  description = "The name of the resource group in which the EventHub Consumer Group's grandparent Namespace exists..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
