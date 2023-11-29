# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Container Registry Webhook. Only Alphanumeric characters allowed. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Container Registry Webhook. Changing this forces a new resource to be created."
  type        = string

}
variable "registry_name" {
  description = "(REQUIRED) The Name of Container registry this Webhook belongs to. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "service_uri" {
  description = "(REQUIRED) Specifies the service URI for the Webhook to post notifications."
  type        = string

}
variable "actions" {
  description = "(REQUIRED) A list of actions that trigger the Webhook to post notifications. At least one action needs to be specified. Valid values are: 'push', 'delete', 'quarantine', 'chart_push', 'chart_delete'"
  type        = string

}

# OPTIONAL VARIABLES

variable "status" {
  description = "Specifies if this Webhook triggers notifications or not. Valid values: 'enabled' and 'disabled'. Default is 'enabled'."
  type        = string
  default     = "enabled"
}
variable "scope" {
  description = "Specifies the scope of repositories that can trigger an event. For example, 'foo:*' means events for all tags under repository 'foo'. 'foo:bar' means events for 'foo:bar' only. 'foo' is equivalent to 'foo:latest'. Empty means all events. Defaults to ''''."
  type        = string
  default     = ""
}
variable "custom_headers" {
  description = "Custom headers that will be added to the webhook notifications request."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
