# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of this Logger, which must be unique within the API Management Service. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created."
  type        = string

}
variable "api_management_name" {
  description = "(REQUIRED) The name of the API Management Service. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "application_insights" {
  description = "An 'application_insights' block. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# application_insights block structure:
#   instrumentation_key (string)        : (REQUIRED) The instrumentation key used to push data to Application Insights.


variable "buffered" {
  description = "Specifies whether records should be buffered in the Logger prior to publishing. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "description" {
  description = "A description of this Logger."
  type        = string
  default     = null
}
variable "eventhub" {
  description = "An 'eventhub' block. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# eventhub block structure                 :
#   name (string)                            : (REQUIRED) The name of an EventHub.
#   connection_string (string)               : The connection string of an EventHub Namespace.
#   user_assigned_identity_client_id (string): The Client Id of the User Assigned Identity  with the 'Azure Event Hubs Data Sender' role to the target EventHub Namespace. Required when 'endpoint_uri' is set. If not specified the System Assigned Identity will be used.
#   endpoint_uri (string)                    : The endpoint address of an EventHub Namespace. Required when 'client_id' is set.


variable "resource_id" {
  description = "The target resource id which will be linked in the API-Management portal page. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "api_management_resource_group_name" {
  description = "The Name of the Resource Group in which the API Management Service exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
