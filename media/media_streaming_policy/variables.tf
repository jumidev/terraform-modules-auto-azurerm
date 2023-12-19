# REQUIRED VARIABLES

variable "media_services_account_name" {
  description = "(REQUIRED) The Media Services account name. Changing this forces a new Streaming Policy to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Streaming Policy. Changing this forces a new Streaming Policy to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Streaming Policy should exist. Changing this forces a new Streaming Policy to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "common_encryption_cbcs" {
  description = "A 'common_encryption_cbcs' block. Changing this forces a new Streaming Policy to be created."
  type        = map(any)
  default     = null
}
#
# common_encryption_cbcs block structure:
#   clear_key_encryption (block)          : A 'clear_key_encryption' block. Changing this forces a new Streaming Policy to be created.
#   default_content_key (block)           : A 'default_content_key' block. Changing this forces a new Streaming Policy to be created.
#   drm_fairplay (block)                  : A 'drm_fairplay' block. Changing this forces a new Streaming Policy to be created.
#   enabled_protocols (block)             : A 'enabled_protocols' block. Changing this forces a new Streaming Policy to be created.
#
# drm_fairplay block structure                    :
#   allow_persistent_license (bool)                 : All license to be persistent or not. Changing this forces a new Streaming Policy to be created.
#   custom_license_acquisition_url_template (string): The URL template for the custom service that delivers licenses to the end user. This is not required when using Azure Media Services for issuing licenses. Changing this forces a new Streaming Policy to be created.
#
# enabled_protocols block structure:
#   dash (string)                    : Enable DASH protocol or not. Changing this forces a new Streaming Policy to be created.
#   download (string)                : Enable Download protocol or not. Changing this forces a new Streaming Policy to be created.
#   hls (string)                     : Enable HLS protocol or not. Changing this forces a new Streaming Policy to be created.
#   smooth_streaming (string)        : Enable SmoothStreaming protocol or not. Changing this forces a new Streaming Policy to be created.
#
# default_content_key block structure:
#   label (string)                     : Label can be used to specify Content Key when creating a Streaming Locator. Changing this forces a new Streaming Policy to be created.
#   policy_name (string)               : Policy used by Default Key. Changing this forces a new Streaming Policy to be created.
#
# clear_key_encryption block structure         :
#   custom_keys_acquisition_url_template (string): (REQUIRED) The URL template for the custom service that delivers content keys to the end user. This is not required when using Azure Media Services for issuing keys. Changing this forces a new Streaming Policy to be created.


variable "common_encryption_cenc" {
  description = "A 'common_encryption_cenc' block. Changing this forces a new Streaming Policy to be created."
  type        = map(any)
  default     = null
}
#
# common_encryption_cenc block structure                       :
#   clear_key_encryption (block)                                 : A 'clear_key_encryption' block. Changing this forces a new Streaming Policy to be created.
#   clear_track (block)                                          : One or more 'clear_track' blocks. Changing this forces a new Streaming Policy to be created.
#   content_key_to_track_mapping (block)                         : One or more 'content_key_to_track_mapping' blocks. Changing this forces a new Streaming Policy to be created.
#   default_content_key (block)                                  : A 'default_content_key' block. Changing this forces a new Streaming Policy to be created.
#   drm_playready (block)                                        : A 'drm_playready' block. Changing this forces a new Streaming Policy to be created.
#   drm_widevine_custom_license_acquisition_url_template (string): The URL template for the custom service that delivers licenses to the end user. This is not required when using Azure Media Services for issuing licenses. Changing this forces a new Streaming Policy to be created.
#   enabled_protocols (block)                                    : A 'enabled_protocols' block. Changing this forces a new Streaming Policy to be created.
#
# content_key_to_track_mapping block structure:
#   label (string)                              : Specifies the content key when creating a Streaming Locator. Changing this forces a new Streaming Policy to be created.
#   policy_name (string)                        : The policy used by the default key. Changing this forces a new Streaming Policy to be created.
#   track (block)                               : (REQUIRED) One or more 'track' blocks. Changing this forces a new Streaming Policy to be created.
#
# enabled_protocols block structure:
#   dash (string)                    : Enable DASH protocol or not. Changing this forces a new Streaming Policy to be created.
#   download (string)                : Enable Download protocol or not. Changing this forces a new Streaming Policy to be created.
#   hls (string)                     : Enable HLS protocol or not. Changing this forces a new Streaming Policy to be created.
#   smooth_streaming (string)        : Enable SmoothStreaming protocol or not. Changing this forces a new Streaming Policy to be created.
#
# clear_track block structure:
#   condition (block)          : (REQUIRED) One or more 'condition' blocks. Changing this forces a new Streaming Policy to be created.
#
# default_content_key block structure:
#   label (string)                     : Label can be used to specify Content Key when creating a Streaming Locator. Changing this forces a new Streaming Policy to be created.
#   policy_name (string)               : Policy used by Default Key. Changing this forces a new Streaming Policy to be created.
#
# track block structure:
#   condition (block)    : (REQUIRED) One or more 'condition' blocks. Changing this forces a new Streaming Policy to be created.
#
# condition block structure:
#   operation (string)       : (REQUIRED) The track property condition operation. Possible value is 'Equal'. Changing this forces a new Streaming Policy to be created.
#   property (string)        : (REQUIRED) The track property type. Possible value is 'FourCC'. Changing this forces a new Streaming Policy to be created.
#   value (string)           : (REQUIRED) The track property value. Changing this forces a new Streaming Policy to be created.
#
# drm_playready block structure                   :
#   custom_attributes (string)                      : Custom attributes for PlayReady. Changing this forces a new Streaming Policy to be created.
#   custom_license_acquisition_url_template (string): The URL template for the custom service that delivers licenses to the end user. This is not required when using Azure Media Services for issuing licenses. Changing this forces a new Streaming Policy to be created.
#
# clear_key_encryption block structure         :
#   custom_keys_acquisition_url_template (string): (REQUIRED) The URL template for the custom service that delivers content keys to the end user. This is not required when using Azure Media Services for issuing keys. Changing this forces a new Streaming Policy to be created.


variable "default_content_key_policy_name" {
  description = "Default Content Key used by current Streaming Policy. Changing this forces a new Streaming Policy to be created."
  type        = string
  default     = null
}
variable "envelope_encryption" {
  description = "A 'envelope_encryption' block. Changing this forces a new Streaming Policy to be created."
  type        = map(any)
  default     = null
}
#
# envelope_encryption block structure          :
#   custom_keys_acquisition_url_template (string): The URL template for the custom service that delivers content keys to the end user. This is not required when using Azure Media Services for issuing keys. Changing this forces a new Streaming Policy to be created.
#   default_content_key (block)                  : A 'default_content_key' block. Changing this forces a new Streaming Policy to be created.
#   enabled_protocols (block)                    : A 'enabled_protocols' block. Changing this forces a new Streaming Policy to be created.
#
# default_content_key block structure:
#   label (string)                     : Label can be used to specify Content Key when creating a Streaming Locator. Changing this forces a new Streaming Policy to be created.
#   policy_name (string)               : Policy used by Default Key. Changing this forces a new Streaming Policy to be created.
#
# enabled_protocols block structure:
#   dash (string)                    : Enable DASH protocol or not. Changing this forces a new Streaming Policy to be created.
#   download (string)                : Enable Download protocol or not. Changing this forces a new Streaming Policy to be created.
#   hls (string)                     : Enable HLS protocol or not. Changing this forces a new Streaming Policy to be created.
#   smooth_streaming (string)        : Enable SmoothStreaming protocol or not. Changing this forces a new Streaming Policy to be created.


variable "no_encryption_enabled_protocols" {
  description = "A 'no_encryption_enabled_protocols' block. Changing this forces a new Streaming Policy to be created."
  type        = map(any)
  default     = null
}
#
# no_encryption_enabled_protocols block structure:
#   dash (string)                                  : Enable DASH protocol or not. Changing this forces a new Streaming Policy to be created.
#   download (string)                              : Enable Download protocol or not. Changing this forces a new Streaming Policy to be created.
#   hls (string)                                   : Enable HLS protocol or not. Changing this forces a new Streaming Policy to be created.
#   smooth_streaming (string)                      : Enable SmoothStreaming protocol or not. Changing this forces a new Streaming Policy to be created.


