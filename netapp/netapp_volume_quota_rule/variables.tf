# REQUIRED VARIABLES

variable "location" {
  description = "(REQUIRED) The Azure Region where the Volume Quota Rule should exist. Changing this forces a new Volume Quota Rule to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Volume Quota Rule. Changing this forces a new Volume Quota Rule to be created."
  type        = string

}
variable "volume_id" {
  description = "(REQUIRED) The NetApp volume ID where the Volume Quota Rule is assigned to. Changing this forces a new resource to be created."
  type        = string

}
variable "quota_size_in_kib" {
  description = "(REQUIRED) Quota size in kibibytes."
  type        = string

}
variable "quota_type" {
  description = "(REQUIRED) Quota type. Possible values are 'DefaultGroupQuota', 'DefaultUserQuota', 'IndividualGroupQuota' and 'IndividualUserQuota'. Please note that 'IndividualGroupQuota' and 'DefaultGroupQuota' are not applicable to SMB and dual-protocol volumes. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "quota_target" {
  description = "Quota Target. This can be Unix UID/GID for NFSv3/NFSv4.1 volumes and Windows User SID for CIFS based volumes. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
