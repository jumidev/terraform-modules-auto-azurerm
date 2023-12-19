# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Managed Disk. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Managed Disk should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specified the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "storage_account_type" {
  description = "(REQUIRED) The type of storage to use for the managed disk. Possible values are 'Standard_LRS', 'StandardSSD_ZRS', 'Premium_LRS', 'PremiumV2_LRS', 'Premium_ZRS', 'StandardSSD_LRS' or 'UltraSSD_LRS'."
  type        = string

}
variable "create_option" {
  description = "(REQUIRED) The method to use when creating the managed disk. Changing this forces a new resource to be created. Possible values include: * 'Import' - Import a VHD file in to the managed disk (VHD specified with 'source_uri'). * 'ImportSecure' - Securely import a VHD file in to the managed disk (VHD specified with 'source_uri'). * 'Empty' - Create an empty managed disk. * 'Copy' - Copy an existing managed disk or snapshot (specified with 'source_resource_id'). * 'FromImage' - Copy a Platform Image (specified with 'image_reference_id') * 'Restore' - Set by Azure Backup or Site Recovery on a restored disk (specified with 'source_resource_id'). * 'Upload' - Upload a VHD disk with the help of SAS URL (to be used with 'upload_size_bytes')."
  type        = string

}

# OPTIONAL VARIABLES

variable "disk_encryption_set_id" {
  description = "The ID of a Disk Encryption Set which should be used to encrypt this Managed Disk. Conflicts with 'secure_vm_disk_encryption_set_id'."
  type        = string
  default     = null
}
variable "disk_iops_read_write" {
  description = "The number of IOPS allowed for this disk; only settable for UltraSSD disks and PremiumV2 disks. One operation can transfer between 4k and 256k bytes."
  type        = number
  default     = null
}
variable "disk_mbps_read_write" {
  description = "The bandwidth allowed for this disk; only settable for UltraSSD disks and PremiumV2 disks. MBps means millions of bytes per second."
  type        = number
  default     = null
}
variable "disk_iops_read_only" {
  description = "The number of IOPS allowed across all VMs mounting the shared disk as read-only; only settable for UltraSSD disks and PremiumV2 disks with shared disk enabled. One operation can transfer between 4k and 256k bytes."
  type        = number
  default     = null
}
variable "disk_mbps_read_only" {
  description = "The bandwidth allowed across all VMs mounting the shared disk as read-only; only settable for UltraSSD disks and PremiumV2 disks with shared disk enabled. MBps means millions of bytes per second."
  type        = number
  default     = null
}
variable "upload_size_bytes" {
  description = "Specifies the size of the managed disk to create in bytes. Required when 'create_option' is 'Upload'. The value must be equal to the source disk to be copied in bytes. Source disk size could be calculated with 'ls -l' or 'wc -c'. More information can be found at [Copy a managed disk](https://learn.microsoft.com/en-us/azure/virtual-machines/linux/disks-upload-vhd-to-managed-disk-cli#copy-a-managed-disk). Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "disk_size_gb" {
  description = "(Optional, Required for a new managed disk) Specifies the size of the managed disk to create in gigabytes. If 'create_option' is 'Copy' or 'FromImage', then the value must be equal to or greater than the source's size. The size can only be increased."
  type        = string
  default     = null
}
variable "edge_zone" {
  description = "Specifies the Edge Zone within the Azure Region where this Managed Disk should exist. Changing this forces a new Managed Disk to be created."
  type        = string
  default     = null
}
variable "encryption_settings" {
  description = "A 'encryption_settings' block."
  type        = map(any)
  default     = null
}
#
# encryption_settings block structure:
#   disk_encryption_key (block)        : A 'disk_encryption_key' block.
#   key_encryption_key (block)         : A 'key_encryption_key' block.
#
# key_encryption_key block structure:
#   key_url (string)                  : (REQUIRED) The URL to the Key Vault Key used as the Key Encryption Key. This can be found as 'id' on the 'azurerm_key_vault_key' resource.
#   source_vault_id (string)          : (REQUIRED) The ID of the source Key Vault. This can be found as 'id' on the 'azurerm_key_vault' resource.
#
# disk_encryption_key block structure:
#   secret_url (string)                : (REQUIRED) The URL to the Key Vault Secret used as the Disk Encryption Key. This can be found as 'id' on the 'azurerm_key_vault_secret' resource.
#   source_vault_id (string)           : (REQUIRED) The ID of the source Key Vault. This can be found as 'id' on the 'azurerm_key_vault' resource.


variable "hyper_v_generation" {
  description = "The HyperV Generation of the Disk when the source of an 'Import' or 'Copy' operation targets a source that contains an operating system. Possible values are 'V1' and 'V2'. For 'ImportSecure' it must be set to 'V2'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "image_reference_id" {
  description = "ID of an existing platform/marketplace disk image to copy when 'create_option' is 'FromImage'. This field cannot be specified if gallery_image_reference_id is specified. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "gallery_image_reference_id" {
  description = "ID of a Gallery Image Version to copy when 'create_option' is 'FromImage'. This field cannot be specified if image_reference_id is specified. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "logical_sector_size" {
  description = "Logical Sector Size. Possible values are: '512' and '4096'. Defaults to '4096'. Changing this forces a new resource to be created."
  type        = string
  default     = "4096"
}
variable "optimized_frequent_attach_enabled" {
  description = "Specifies whether this Managed Disk should be optimized for frequent disk attachments (where a disk is attached/detached more than 5 times in a day). Defaults to 'false'."
  type        = bool
  default     = false
}
variable "performance_plus_enabled" {
  description = "Specifies whether Performance Plus is enabled for this Managed Disk. Defaults to 'false'. Changing this forces a new resource to be created."
  type        = bool
  default     = false
}
variable "os_type" {
  description = "Specify a value when the source of an 'Import', 'ImportSecure' or 'Copy' operation targets a source that contains an operating system. Valid values are 'Linux' or 'Windows'."
  type        = string
  default     = null
}
variable "source_resource_id" {
  description = "The ID of an existing Managed Disk or Snapshot to copy when 'create_option' is 'Copy' or the recovery point to restore when 'create_option' is 'Restore'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "source_uri" {
  description = "URI to a valid VHD file to be used when 'create_option' is 'Import' or 'ImportSecure'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "storage_account_id" {
  description = "The ID of the Storage Account where the 'source_uri' is located. Required when 'create_option' is set to 'Import' or 'ImportSecure'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "tier" {
  description = "The disk performance tier to use. Possible values are documented [here](https://docs.microsoft.com/azure/virtual-machines/disks-change-performance). This feature is currently supported only for premium SSDs."
  type        = string
  default     = null
}
variable "max_shares" {
  description = "The maximum number of VMs that can attach to the disk at the same time. Value greater than one indicates a disk that can be mounted on multiple VMs at the same time."
  type        = string
  default     = null
}
variable "trusted_launch_enabled" {
  description = "Specifies if Trusted Launch is enabled for the Managed Disk. Changing this forces a new resource to be created."
  type        = bool
  default     = null
}
variable "security_type" {
  description = "Security Type of the Managed Disk when it is used for a Confidential VM. Possible values are 'ConfidentialVM_VMGuestStateOnlyEncryptedWithPlatformKey', 'ConfidentialVM_DiskEncryptedWithPlatformKey' and 'ConfidentialVM_DiskEncryptedWithCustomerKey'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "secure_vm_disk_encryption_set_id" {
  description = "The ID of the Disk Encryption Set which should be used to Encrypt this OS Disk when the Virtual Machine is a Confidential VM. Conflicts with 'disk_encryption_set_id'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "on_demand_bursting_enabled" {
  description = "Specifies if On-Demand Bursting is enabled for the Managed Disk."
  type        = bool
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
variable "zone" {
  description = "Specifies the Availability Zone in which this Managed Disk should be located. Changing this property forces a new resource to be created."
  type        = string
  default     = null
}
variable "network_access_policy" {
  description = "Policy for accessing the disk via network. Allowed values are 'AllowAll', 'AllowPrivate', and 'DenyAll'."
  type        = string
  default     = null
}
variable "disk_access_id" {
  description = "The ID of the disk access resource for using private endpoints on disks."
  type        = string
  default     = null
}
variable "public_network_access_enabled" {
  description = "Whether it is allowed to access the disk via public network. Defaults to 'true'."
  type        = bool
  default     = true
}

# OPTIONAL VARIABLES

variable "virtual_machine_data_disk_attachment" {
  type    = map(any)
  default = null
}
