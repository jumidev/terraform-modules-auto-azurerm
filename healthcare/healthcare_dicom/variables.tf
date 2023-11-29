# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Healthcare DICOM Service. Changing this forces a new Healthcare DICOM Service to be created."
  type        = string

}
variable "workspace_id" {
  description = "(REQUIRED) Specifies the id of the Healthcare Workspace where the Healthcare DICOM Service should exist. Changing this forces a new Healthcare DICOM Service to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the Healthcare DICOM Service should be created. Changing this forces a new Healthcare DICOM Service to be created."
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
#   type (string)           : (REQUIRED) The type of identity used for the Healthcare DICOM service. Possible values are 'UserAssigned', 'SystemAssigned' and 'SystemAssigned, UserAssigned'. If 'UserAssigned' is set, an 'identity_ids' must be set as well.
#   identity_ids (list)     : A list of User Assigned Identity IDs which should be assigned to this Healthcare DICOM service.


variable "public_network_access_enabled" {
  description = "Whether to enabled public networks when data plane traffic coming from public networks while private endpoint is enabled. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "tags" {
  description = "A mapping of tags to assign to the Healthcare DICOM Service."
  type        = map(any)
  default     = null
}
