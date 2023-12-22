# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The version name of the Gallery Application Version, such as '1.0.0'. Changing this forces a new resource to be created."
  type        = string

}
variable "gallery_application_id" {
  description = "(REQUIRED) The ID of the Gallery Application. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Gallery Application Version exists. Changing this forces a new resource to be created."
  type        = string

}
variable "manage_action" {
  description = "(REQUIRED) A 'manage_action' block."
  type        = map(any)
}
#
# manage_action block structure:
#   install (string)             : (REQUIRED) The command to install the Gallery Application. Changing this forces a new resource to be created.
#   remove (string)              : (REQUIRED) The command to remove the Gallery Application. Changing this forces a new resource to be created.
#   update (string)              : The command to update the Gallery Application. Changing this forces a new resource to be created.


variable "source" {
  description = "(REQUIRED) A 'source' block."
  type        = map(any)
}
#
# source block structure             :
#   media_link (string)                : (REQUIRED) The Storage Blob URI of the source application package. Changing this forces a new resource to be created.
#   default_configuration_link (string): The Storage Blob URI of the default configuration. Changing this forces a new resource to be created.


variable "target_region" {
  description = "(REQUIRED) One or more 'target_region' blocks."
  type        = map(map(any))
}
#
# target_region block structure  :
#   name (string)                  : (REQUIRED) The Azure Region in which the Gallery Application Version exists.
#   regional_replica_count (number): (REQUIRED) The number of replicas of the Gallery Application Version to be created per region. Possible values are between '1' and '10'.
#   exclude_from_latest (bool)     : Specifies whether this Gallery Application Version should be excluded from the 'latest' filter. If set to 'true', this Gallery Application Version won't be returned for the 'latest' version. Defaults to 'false'.
#   storage_account_type (string)  : The storage account type for the Gallery Application Version. Possible values are 'Standard_LRS', 'Premium_LRS' and 'Standard_ZRS'. Defaults to 'Standard_LRS'.



# OPTIONAL VARIABLES

variable "config_file" {
  description = "Specifies the name of the config file on the VM. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "enable_health_check" {
  description = "Should the Gallery Application reports health. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "end_of_life_date" {
  description = "The end of life date in RFC3339 format of the Gallery Application Version."
  type        = string
  default     = null
}
variable "exclude_from_latest" {
  description = "Should the Gallery Application Version be excluded from the 'latest' filter? If set to 'true' this Gallery Application Version won't be returned for the 'latest' version. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "package_file" {
  description = "Specifies the name of the package file on the VM. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the Gallery Application Version."
  type        = map(any)
  default     = null
}
