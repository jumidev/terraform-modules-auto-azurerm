# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the image. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create. Changing this forces a new resource to be created. the image. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specified the supported Azure location where the resource exists. Changing this forces a new resource to be created. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "source_virtual_machine_id" {
  description = "The Virtual Machine ID from which to create the image."
  type        = string
  default     = null
}
variable "os_disk" {
  description = "One or more 'os_disk' blocks. Changing this forces a new resource to be created."
  type        = map(map(any))
  default     = null
}
#
# os_disk block structure        :
#   os_type (string)               : Specifies the type of operating system contained in the virtual machine image. Possible values are: 'Windows' or 'Linux'.
#   os_state (string)              : Specifies the state of the operating system contained in the blob. Currently, the only value is Generalized. Possible values are 'Generalized' and 'Specialized'.
#   managed_disk_id (string)       : Specifies the ID of the managed disk resource that you want to use to create the image.
#   blob_uri (string)              : Specifies the URI in Azure storage of the blob that you want to use to create the image. Changing this forces a new resource to be created.
#   caching (string)               : Specifies the caching mode as 'ReadWrite', 'ReadOnly', or 'None'. The default is 'None'.
#   size_gb (number)               : Specifies the size of the image to be created. Changing this forces a new resource to be created.
#   disk_encryption_set_id (string): The ID of the Disk Encryption Set which should be used to encrypt this image. Changing this forces a new resource to be created.


variable "data_disk" {
  description = "One or more 'data_disk' blocks."
  type        = map(map(any))
  default     = null
}
#
# data_disk block structure:
#   lun (number)             : Specifies the logical unit number of the data disk.
#   managed_disk_id (string) : Specifies the ID of the managed disk resource that you want to use to create the image. Changing this forces a new resource to be created.
#   blob_uri (string)        : Specifies the URI in Azure storage of the blob that you want to use to create the image.
#   caching (string)         : Specifies the caching mode as 'ReadWrite', 'ReadOnly', or 'None'. Defaults to 'None'.
#   size_gb (number)         : Specifies the size of the image to be created. The target size can't be smaller than the source size.


variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
variable "zone_resilient" {
  description = "Is zone resiliency enabled? Defaults to 'false'. Changing this forces a new resource to be created."
  type        = bool
  default     = false
}
variable "hyper_v_generation" {
  description = "The HyperVGenerationType of the VirtualMachine created from the image as 'V1', 'V2'. Defaults to 'V1'. Changing this forces a new resource to be created."
  type        = string
  default     = "V1"
}
