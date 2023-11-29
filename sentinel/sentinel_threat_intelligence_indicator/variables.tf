# REQUIRED VARIABLES

variable "display_name" {
  description = "(REQUIRED) The display name of the Threat Intelligence Indicator."
  type        = string

}
variable "pattern_type" {
  description = "(REQUIRED) The type of pattern used by the Threat Intelligence Indicator. Possible values are 'domain-name', 'file', 'ipv4-addr', 'ipv6-addr' and 'url'."
  type        = string

}
variable "pattern" {
  description = "(REQUIRED) The pattern used by the Threat Intelligence Indicator. When 'pattern_type' set to 'file', 'pattern' must be specified with '<HashName>:<Value>' format, such as 'MD5:78ecc5c05cd8b79af480df2f8fba0b9d'."
  type        = string

}
variable "source" {
  description = "(REQUIRED) Source of the Threat Intelligence Indicator. Changing this forces a new resource to be created."
  type        = string

}
variable "validate_from_utc" {
  description = "(REQUIRED) The start of validate date in RFC3339."
  type        = string

}
variable "workspace_id" {
  description = "(REQUIRED) The ID of the Log Analytics Workspace. Changing this forces a new Sentinel Threat Intelligence Indicator to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "confidence" {
  description = "Confidence levels of the Threat Intelligence Indicator."
  type        = string
  default     = null
}
variable "created_by" {
  description = "The creator of the Threat Intelligence Indicator."
  type        = string
  default     = null
}
variable "description" {
  description = "The description of the Threat Intelligence Indicator."
  type        = string
  default     = null
}
variable "extension" {
  description = "The extension config of the Threat Intelligence Indicator in JSON format."
  type        = string
  default     = null
}
variable "external_reference" {
  description = "One or more 'external_reference' blocks."
  type        = map(map(any))
  default     = null
}
#
# external_reference block structure:
#   description (string)              : The description of the external reference of the Threat Intelligence Indicator.
#   hashes (string)                   : The list of hashes of the external reference of the Threat Intelligence Indicator.
#   source_name (string)              : The source name of the external reference of the Threat Intelligence Indicator.
#   url (string)                      : The url of the external reference of the Threat Intelligence Indicator.


variable "granular_marking" {
  description = "One or more 'granular_marking' blocks."
  type        = map(map(any))
  default     = null
}
#
# granular_marking block structure:
#   language (string)               : The language of granular marking of the Threat Intelligence Indicator.
#   marking_ref (string)            : The reference of the granular marking of the Threat Intelligence Indicator.
#   selectors (list)                : A list of selectors of the granular marking of the Threat Intelligence Indicator.


variable "kill_chain_phase" {
  description = "One or more 'kill_chain_phase' blocks."
  type        = map(map(any))
  default     = null
}
#
# kill_chain_phase block structure:
#   name (string)                   : The name which should be used for the Lockheed Martin cyber kill chain phase.


variable "tags" {
  description = "Specifies a list of tags of the Threat Intelligence Indicator."
  type        = map(any)
  default     = null
}
variable "language" {
  description = "The language of the Threat Intelligence Indicator."
  type        = string
  default     = null
}
variable "object_marking_refs" {
  description = "Specifies a list of Threat Intelligence marking references."
  type        = string
  default     = null
}
variable "pattern_version" {
  description = "The version of a Threat Intelligence entity."
  type        = string
  default     = null
}
variable "revoked" {
  description = "Whether the Threat Intelligence entity revoked."
  type        = bool
  default     = null
}
variable "threat_types" {
  description = "Specifies a list of threat types of this Threat Intelligence Indicator."
  type        = string
  default     = null
}
variable "validate_until_utc" {
  description = "The end of validate date of the Threat Intelligence Indicator in RFC3339 format."
  type        = string
  default     = null
}
