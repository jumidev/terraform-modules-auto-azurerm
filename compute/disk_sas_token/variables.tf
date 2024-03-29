# REQUIRED VARIABLES

variable "managed_disk_id" {
  description = "(REQUIRED) The ID of an existing Managed Disk which should be exported. Changing this forces a new resource to be created."
  type        = string

}
variable "duration_in_seconds" {
  description = "(REQUIRED) The duration for which the export should be allowed. Should be between 30 & 4294967295 seconds. Changing this forces a new resource to be created."
  type        = number

}
variable "access_level" {
  description = "(REQUIRED) The level of access required on the disk. Supported are Read, Write. Changing this forces a new resource to be created. Refer to the [SAS creation reference from Azure](https://docs.microsoft.com/rest/api/compute/disks/grant-access) for additional details on the fields above."
  type        = string

}
