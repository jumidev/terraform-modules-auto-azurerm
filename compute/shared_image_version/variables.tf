# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The version number for this Image Version, such as '1.0.0'. Changing this forces a new resource to be created."
  type        = string

}
variable "gallery_name" {
  description = "(REQUIRED) The name of the Shared Image Gallery in which the Shared Image exists. Changing this forces a new resource to be created."
  type        = string

}
variable "image_name" {
  description = "(REQUIRED) The name of the Shared Image within the Shared Image Gallery in which this Version should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region in which the Shared Image Gallery exists. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group in which the Shared Image Gallery exists. Changing this forces a new resource to be created."
  type        = string

}
variable "target_region" {
  description = "(REQUIRED) One or more 'target_region' blocks."
  type        = list(any)

}

# OPTIONAL VARIABLES

variable "blob_uri" {
  description = "URI of the Azure Storage Blob used to create the Image Version. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "end_of_life_date" {
  description = "The end of life date in RFC3339 format of the Image Version."
  type        = datetime
  default     = null
}
variable "exclude_from_latest" {
  description = "Should this Image Version be excluded from the 'latest' filter? If set to 'true' this Image Version won't be returned for the 'latest' version. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "managed_image_id" {
  description = "The ID of the Managed Image or Virtual Machine ID which should be used for this Shared Image Version. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "os_disk_snapshot_id" {
  description = "The ID of the OS disk snapshot which should be used for this Shared Image Version. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "deletion_of_replicated_locations_enabled" {
  description = "Specifies whether this Shared Image Version can be deleted from the Azure Regions this is replicated to. Defaults to 'false'. Changing this forces a new resource to be created."
  type        = bool
  default     = false
}
variable "replication_mode" {
  description = "Mode to be used for replication. Possible values are 'Full' and 'Shallow'. Defaults to 'Full'. Changing this forces a new resource to be created."
  type        = string
  default     = "Full"
}
variable "storage_account_id" {
  description = "The ID of the Storage Account where the Blob exists. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "tags" {
  description = "A collection of tags which should be applied to this resource."
  type        = map(any)
  default     = null
}
variable "shared_image_gallery_resource_group_name" {
  description = "The name of the Resource Group in which the Shared Image Gallery exists..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
variable "image_resource_group_name" {
  description = "The Name of the Resource Group where this Image exists..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
