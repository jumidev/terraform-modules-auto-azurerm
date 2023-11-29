# REQUIRED VARIABLES

variable "input" {
  description = "(REQUIRED) A 'input' block."
  type        = map(any)
}
#
# input block structure               :
#   access_token (string)               : A UUID in string form to uniquely identify the stream. If omitted, the service will generate a unique value. Changing this forces a new value to be created.
#   ip_access_control_allow (block)     : One or more 'ip_access_control_allow' blocks.
#   key_frame_interval_duration (string): ISO 8601 time duration of the key frame interval duration of the input. This value sets the 'EXT-X-TARGETDURATION' property in the HLS output. For example, use PT2S to indicate 2 seconds. This field cannot be set when 'type' is set to 'Encoding'.
#   streaming_protocol (string)         : The input protocol for the live event. Allowed values are 'FragmentedMP4' and 'RTMP'. Changing this forces a new resource to be created.
#
# ip_access_control_allow block structure:
#   address (string)                       : The IP address or CIDR range.
#   name (string)                          : The friendly name for the IP address range.
#   subnet_prefix_length (string)          : The subnet mask prefix length (see CIDR notation).


variable "location" {
  description = "(REQUIRED) The Azure Region where the Live Event should exist. Changing this forces a new Live Event to be created."
  type        = string

}
variable "media_services_account_name" {
  description = "(REQUIRED) The Media Services account name. Changing this forces a new Live Event to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Live Event. Changing this forces a new Live Event to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Live Event should exist. Changing this forces a new Live Event to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "auto_start_enabled" {
  description = "The flag indicates if the resource should be automatically started on creation. Changing this forces a new resource to be created."
  type        = bool
  default     = null
}
variable "cross_site_access_policy" {
  description = "A 'cross_site_access_policy' block."
  type        = map(any)
  default     = null
}
#
# cross_site_access_policy block structure:
#   client_access_policy (string)           : The content of clientaccesspolicy.xml used by Silverlight.
#   cross_domain_policy (string)            : The content of the Cross Domain Policy ('crossdomain.xml').


variable "description" {
  description = "A description for the live event."
  type        = string
  default     = null
}
variable "encoding" {
  description = "A 'encoding' block."
  type        = map(any)
  default     = null
}
#
# encoding block structure   :
#   key_frame_interval (string): Use an 'ISO 8601' time value between 0.5 to 20 seconds to specify the output fragment length for the video and audio tracks of an encoding live event. For example, use 'PT2S' to indicate 2 seconds. For the video track it also defines the key frame interval, or the length of a GoP (group of pictures). The value cannot be set for pass-through live events. Defaults to 'PT2S'.
#   preset_name (string)       : The optional encoding preset name, used when 'type' is not 'None'. If the 'type' is set to 'Standard', then the default preset name is 'Default720p'. Else if the 'type' is set to 'Premium1080p', Changing this forces a new resource to be created.
#   stretch_mode (string)      : Specifies how the input video will be resized to fit the desired output resolution(s). Allowed values are 'None', 'AutoFit' or 'AutoSize'. Default is 'None'.
#   type (string)              : Live event type. Possible values are 'None', 'Premium1080p', 'PassthroughBasic', 'PassthroughStandard' and 'Standard'. When set to 'None', the service simply passes through the incoming video and audio layer(s) to the output. When 'type' is set to 'Standard' or 'Premium1080p', a live encoder transcodes the incoming stream into multiple bitrates or layers. Defaults to 'None'. Changing this forces a new resource to be created.


variable "hostname_prefix" {
  description = "When 'use_static_hostname' is set to true, the 'hostname_prefix' specifies the first part of the hostname assigned to the live event preview and ingest endpoints. The final hostname would be a combination of this prefix, the media service account name and a short code for the Azure Media Services data center."
  type        = string
  default     = null
}
variable "preview" {
  description = "A 'preview' block."
  type        = map(any)
  default     = null
}
#
# preview block structure       :
#   alternative_media_id (string) : An alternative media identifier associated with the streaming locator created for the preview. The identifier can be used in the 'CustomLicenseAcquisitionUrlTemplate' or the 'CustomKeyAcquisitionUrlTemplate' of the Streaming Policy specified in the 'streaming_policy_name' field.
#   ip_access_control_allow (list): One or more 'ip_access_control_allow' blocks.
#   preview_locator (string)      : The identifier of the preview locator in GUID format. Specifying this at creation time allows the caller to know the preview locator url before the event is created. If omitted, the service will generate a random identifier. Changing this forces a new resource to be created.
#   streaming_policy_name (string): The name of streaming policy used for the live event preview. Changing this forces a new resource to be created.


variable "stream_options" {
  description = "A list of options to use for the LiveEvent. Possible values are 'Default', 'LowLatency', 'LowLatencyV2'. Please see more at this [document](https://learn.microsoft.com/en-us/azure/media-services/latest/live-event-latency-reference#lowlatency-and-lowlatencyv2-options). Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Live Event."
  type        = map(any)
  default     = null
}
variable "transcription_languages" {
  description = "Specifies a list of languages (locale) to be used for speech-to-text transcription – it should match the spoken language in the audio track. The value should be in 'BCP-47' format (e.g: 'en-US'). [See the Microsoft Documentation for more information about the live transcription feature and the list of supported languages](https://go.microsoft.com/fwlink/?linkid=2133742 )."
  type        = string
  default     = null
}
variable "use_static_hostname" {
  description = "Specifies whether a static hostname would be assigned to the live event preview and ingest endpoints. Changing this forces a new Live Event to be created."
  type        = bool
  default     = null
}
