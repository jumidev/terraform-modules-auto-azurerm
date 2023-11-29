# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name to use for this Notification Hub. Changing this forces a new resource to be created."
  type        = string

}
variable "namespace_name" {
  description = "(REQUIRED) The name of the Notification Hub Namespace in which to create this Notification Hub. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group in which the Notification Hub Namespace exists. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region in which this Notification Hub Namespace exists. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "apns_credential" {
  description = "A 'apns_credential' block."
  type        = map(any)
  default     = null
}
#
# apns_credential block structure:
#   application_mode (string)      : (REQUIRED) The Application Mode which defines which server the APNS Messages should be sent to. Possible values are 'Production' and 'Sandbox'.
#   bundle_id (string)             : (REQUIRED) The Bundle ID of the iOS/macOS application to send push notifications for, such as 'com.hashicorp.example'.
#   key_id (string)                : (REQUIRED) The Apple Push Notifications Service (APNS) Key.
#   team_id (string)               : (REQUIRED) The ID of the team the Token.
#   token (string)                 : (REQUIRED) The Push Token associated with the Apple Developer Account. This is the contents of the 'key' downloaded from [the Apple Developer Portal](https://developer.apple.com/account/ios/authkey/) between the '-----BEGIN PRIVATE KEY-----' and '-----END PRIVATE KEY-----' blocks.


variable "gcm_credential" {
  description = "A 'gcm_credential' block."
  type        = map(any)
  default     = null
}
#
# gcm_credential block structure:
#   api_key (string)              : (REQUIRED) The API Key associated with the Google Cloud Messaging service.


variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
variable "eventhub_namespace_resource_group_name" {
  description = "The Name of the Resource Group where the EventHub Namespace exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
