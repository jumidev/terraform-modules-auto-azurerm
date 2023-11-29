# REQUIRED VARIABLES

variable "asset_name" {
  description = "(REQUIRED) Asset Name. Changing this forces a new Streaming Locator to be created."
  type        = string

}
variable "media_services_account_name" {
  description = "(REQUIRED) The Media Services account name. Changing this forces a new Streaming Locator to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Streaming Locator. Changing this forces a new Streaming Locator to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Streaming Locator should exist. Changing this forces a new Streaming Locator to be created."
  type        = string

}
variable "streaming_policy_name" {
  description = "(REQUIRED) Name of the Streaming Policy used by this Streaming Locator. Either specify the name of Streaming Policy you created or use one of the predefined Streaming Policies. The predefined Streaming Policies available are: 'Predefined_DownloadOnly', 'Predefined_ClearStreamingOnly', 'Predefined_DownloadAndClearStreaming', 'Predefined_ClearKey', 'Predefined_MultiDrmCencStreaming' and 'Predefined_MultiDrmStreaming'. Changing this forces a new Streaming Locator to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "alternative_media_id" {
  description = "Alternative Media ID of this Streaming Locator. Changing this forces a new Streaming Locator to be created."
  type        = string
  default     = null
}
variable "content_key" {
  description = "One or more 'content_key' blocks. Changing this forces a new Streaming Locator to be created."
  type        = map(map(any))
  default     = null
}
#
# content_key block structure                 :
#   content_key_id (string)                     : ID of Content Key. Changing this forces a new Streaming Locator to be created.
#   label_reference_in_streaming_policy (string): Label of Content Key as specified in the Streaming Policy. Changing this forces a new Streaming Locator to be created.
#   policy_name (string)                        : Content Key Policy used by Content Key. Changing this forces a new Streaming Locator to be created.
#   type (string)                               : Encryption type of Content Key. Supported values are 'CommonEncryptionCbcs', 'CommonEncryptionCenc' or 'EnvelopeEncryption'. Changing this forces a new Streaming Locator to be created.
#   value (string)                              : Value of Content Key. Changing this forces a new Streaming Locator to be created.


variable "default_content_key_policy_name" {
  description = "Name of the default Content Key Policy used by this Streaming Locator.Changing this forces a new Streaming Locator to be created."
  type        = string
  default     = null
}
variable "end_time" {
  description = "The end time of the Streaming Locator. Changing this forces a new Streaming Locator to be created."
  type        = string
  default     = null
}
variable "filter_names" {
  description = "A list of names of asset or account filters which apply to this Streaming Locator. Changing this forces a new Streaming Locator to be created."
  type        = list(any)
  default     = []
}
variable "start_time" {
  description = "The start time of the Streaming Locator. Changing this forces a new Streaming Locator to be created."
  type        = string
  default     = null
}
variable "streaming_locator_id" {
  description = "The ID of the Streaming Locator. Changing this forces a new Streaming Locator to be created."
  type        = string
  default     = null
}
