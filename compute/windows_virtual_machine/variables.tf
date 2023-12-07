# REQUIRED VARIABLES

variable "admin_username" {
  description = "(REQUIRED) The username of the local administrator used for the Virtual Machine. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure location where the Windows Virtual Machine should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name of the Windows Virtual Machine. Changing this forces a new resource to be created."
  type        = string

}
variable "network_interface_ids" {
  description = "(REQUIRED) A list of Network Interface IDs which should be attached to this Virtual Machine. The first Network Interface ID in this list will be the Primary Network Interface on the Virtual Machine."
  type        = list(any)

}
variable "os_disk" {
  description = "(REQUIRED) A 'os_disk' block."
  type        = map(any)
}
#
# os_disk block structure                  :
#   caching (string)                         : (REQUIRED) The Type of Caching which should be used for the Internal OS Disk. Possible values are 'None', 'ReadOnly' and 'ReadWrite'.
#   storage_account_type (string)            : (REQUIRED) The Type of Storage Account which should back this the Internal OS Disk. Possible values are 'Standard_LRS', 'StandardSSD_LRS', 'Premium_LRS', 'StandardSSD_ZRS' and 'Premium_ZRS'. Changing this forces a new resource to be created.
#   diff_disk_settings (block)               : A 'diff_disk_settings' block. Changing this forces a new resource to be created.
#   disk_encryption_set_id (string)          : The ID of the Disk Encryption Set which should be used to Encrypt this OS Disk. Conflicts with 'secure_vm_disk_encryption_set_id'.
#   disk_size_gb (number)                    : The Size of the Internal OS Disk in GB, if you wish to vary from the size used in the image this Virtual Machine is sourced from.
#   name (string)                            : The name which should be used for the Internal OS Disk. Changing this forces a new resource to be created.
#   secure_vm_disk_encryption_set_id (string): The ID of the Disk Encryption Set which should be used to Encrypt this OS Disk when the Virtual Machine is a Confidential VM. Conflicts with 'disk_encryption_set_id'. Changing this forces a new resource to be created.
#   security_encryption_type (string)        : Encryption Type when the Virtual Machine is a Confidential VM. Possible values are 'VMGuestStateOnly' and 'DiskWithVMGuestState'. Changing this forces a new resource to be created.
#   write_accelerator_enabled (bool)         : Should Write Accelerator be Enabled for this OS Disk? Defaults to 'false'.
#
# diff_disk_settings block structure:
#   option (string)                   : (REQUIRED) Specifies the Ephemeral Disk Settings for the OS Disk. At this time the only possible value is 'Local'. Changing this forces a new resource to be created.
#   placement (string)                : Specifies where to store the Ephemeral Disk. Possible values are 'CacheDisk' and 'ResourceDisk'. Defaults to 'CacheDisk'. Changing this forces a new resource to be created.


variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group in which the Windows Virtual Machine should be exist. Changing this forces a new resource to be created."
  type        = string

}
variable "size" {
  description = "(REQUIRED) The SKU which should be used for this Virtual Machine, such as 'Standard_F2'."
  type        = string

}

# OPTIONAL VARIABLES

variable "additional_capabilities" {
  description = "A 'additional_capabilities' block."
  type        = map(any)
  default     = null
}
#
# additional_capabilities block structure:
#   ultra_ssd_enabled (bool)               : Should the capacity to enable Data Disks of the 'UltraSSD_LRS' storage account type be supported on this Virtual Machine? Defaults to 'false'.


variable "additional_unattend_content" {
  description = "One or more 'additional_unattend_content' blocks. Changing this forces a new resource to be created."
  type        = map(map(any))
  default     = null
}
#
# additional_unattend_content block structure:
#   content (string)                           : (REQUIRED) The XML formatted content that is added to the unattend.xml file for the specified path and component. Changing this forces a new resource to be created.
#   setting (string)                           : (REQUIRED) The name of the setting to which the content applies. Possible values are 'AutoLogon' and 'FirstLogonCommands'. Changing this forces a new resource to be created.


variable "allow_extension_operations" {
  description = "Should Extension Operations be allowed on this Virtual Machine? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "availability_set_id" {
  description = "Specifies the ID of the Availability Set in which the Virtual Machine should exist. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "boot_diagnostics" {
  description = "A 'boot_diagnostics' block."
  type        = map(any)
  default     = null
}
#
# boot_diagnostics block structure:
#   storage_account_uri (string)    : The Primary/Secondary Endpoint for the Azure Storage Account which should be used to store Boot Diagnostics, including Console Output and Screenshots from the Hypervisor.


variable "bypass_platform_safety_checks_on_user_schedule_enabled" {
  description = "Specifies whether to skip platform scheduled patching when a user schedule is associated with the VM. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "capacity_reservation_group_id" {
  description = "Specifies the ID of the Capacity Reservation Group which the Virtual Machine should be allocated to."
  type        = string
  default     = null
}
variable "computer_name" {
  description = "Specifies the Hostname which should be used for this Virtual Machine. If unspecified this defaults to the value for the 'name' field. If the value of the 'name' field is not a valid 'computer_name', then you must specify 'computer_name'. Changing this forces a new resource to be created."
  type        = string
  default     = "name"
}
variable "custom_data" {
  description = "The Base64-Encoded Custom Data which should be used for this Virtual Machine. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "dedicated_host_id" {
  description = "The ID of a Dedicated Host where this machine should be run on. Conflicts with 'dedicated_host_group_id'."
  type        = string
  default     = null
}
variable "dedicated_host_group_id" {
  description = "The ID of a Dedicated Host Group that this Windows Virtual Machine should be run within. Conflicts with 'dedicated_host_id'."
  type        = string
  default     = null
}
variable "edge_zone" {
  description = "Specifies the Edge Zone within the Azure Region where this Windows Virtual Machine should exist. Changing this forces a new Windows Virtual Machine to be created."
  type        = string
  default     = null
}
variable "enable_automatic_updates" {
  description = "Specifies if Automatic Updates are Enabled for the Windows Virtual Machine. Changing this forces a new resource to be created. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "encryption_at_host_enabled" {
  description = "Should all of the disks (including the temp disk) attached to this Virtual Machine be encrypted by enabling Encryption at Host?"
  type        = bool
  default     = null
}
variable "eviction_policy" {
  description = "Specifies what should happen when the Virtual Machine is evicted for price reasons when using a Spot instance. Possible values are 'Deallocate' and 'Delete'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "extensions_time_budget" {
  description = "Specifies the duration allocated for all extensions to start. The time duration should be between 15 minutes and 120 minutes (inclusive) and should be specified in ISO 8601 format. Defaults to 'PT1H30M'."
  type        = string
  default     = "PT1H30M"
}
variable "gallery_application" {
  description = "One or more 'gallery_application' blocks."
  type        = map(map(any))
  default     = null
}
#
# gallery_application block structure:
#   version_id (string)                : (REQUIRED) Specifies the Gallery Application Version resource ID.
#   configuration_blob_uri (string)    : Specifies the URI to an Azure Blob that will replace the default configuration for the package if provided.
#   order (string)                     : Specifies the order in which the packages have to be installed. Possible values are between '0' and '2,147,483,647'.
#   tag (string)                       : Specifies a passthrough value for more generic context. This field can be any valid 'string' value.


variable "hotpatching_enabled" {
  description = "Should the VM be patched without requiring a reboot? Possible values are 'true' or 'false'. Defaults to 'false'. For more information about hot patching please see the [product documentation](https://docs.microsoft.com/azure/automanage/automanage-hotpatch)."
  type        = bool
  default     = false
}
variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Windows Virtual Machine. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both).
#   identity_ids (string)   : Specifies a list of User Assigned Managed Identity IDs to be assigned to this Windows Virtual Machine.


variable "license_type" {
  description = "Specifies the type of on-premise license (also known as [Azure Hybrid Use Benefit](https://docs.microsoft.com/windows-server/get-started/azure-hybrid-benefit)) which should be used for this Virtual Machine. Possible values are 'None', 'Windows_Client' and 'Windows_Server'."
  type        = string
  default     = null
}
variable "max_bid_price" {
  description = "The maximum price you're willing to pay for this Virtual Machine, in US Dollars; which must be greater than the current spot price. If this bid price falls below the current spot price the Virtual Machine will be evicted using the 'eviction_policy'. Defaults to '-1', which means that the Virtual Machine should not be evicted for price reasons."
  type        = string
  default     = "-1"
}
variable "patch_assessment_mode" {
  description = "Specifies the mode of VM Guest Patching for the Virtual Machine. Possible values are 'AutomaticByPlatform' or 'ImageDefault'. Defaults to 'ImageDefault'."
  type        = string
  default     = "ImageDefault"
}
variable "patch_mode" {
  description = "Specifies the mode of in-guest patching to this Windows Virtual Machine. Possible values are 'Manual', 'AutomaticByOS' and 'AutomaticByPlatform'. Defaults to 'AutomaticByOS'. For more information on patch modes please see the [product documentation](https://docs.microsoft.com/azure/virtual-machines/automatic-vm-guest-patching#patch-orchestration-modes)."
  type        = string
  default     = "AutomaticByOS"
}
variable "plan" {
  description = "A 'plan' block. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# plan block structure:
#   name (string)       : (REQUIRED) Specifies the Name of the Marketplace Image this Virtual Machine should be created from. Changing this forces a new resource to be created.
#   product (string)    : (REQUIRED) Specifies the Product of the Marketplace Image this Virtual Machine should be created from. Changing this forces a new resource to be created.
#   publisher (string)  : (REQUIRED) Specifies the Publisher of the Marketplace Image this Virtual Machine should be created from. Changing this forces a new resource to be created.


variable "platform_fault_domain" {
  description = "Specifies the Platform Fault Domain in which this Windows Virtual Machine should be created. Defaults to '-1', which means this will be automatically assigned to a fault domain that best maintains balance across the available fault domains. Changing this forces a new Windows Virtual Machine to be created."
  type        = string
  default     = "-1"
}
variable "priority" {
  description = "Specifies the priority of this Virtual Machine. Possible values are 'Regular' and 'Spot'. Defaults to 'Regular'. Changing this forces a new resource to be created."
  type        = string
  default     = "Regular"
}
variable "provision_vm_agent" {
  description = "Should the Azure VM Agent be provisioned on this Virtual Machine? Defaults to 'true'. Changing this forces a new resource to be created."
  type        = bool
  default     = true
}
variable "proximity_placement_group_id" {
  description = "The ID of the Proximity Placement Group which the Virtual Machine should be assigned to."
  type        = string
  default     = null
}
variable "reboot_setting" {
  description = "Specifies the reboot setting for platform scheduled patching. Possible values are 'Always', 'IfRequired' and 'Never'."
  type        = string
  default     = null
}
variable "secret" {
  description = "One or more 'secret' blocks."
  type        = map(map(any))
  default     = null
}
#
# secret block structure:
#   certificate (list)    : (REQUIRED) One or more 'certificate' blocks.
#   key_vault_id (string) : (REQUIRED) The ID of the Key Vault from which all Secrets should be sourced.


variable "secure_boot_enabled" {
  description = "Specifies if Secure Boot and Trusted Launch is enabled for the Virtual Machine. Changing this forces a new resource to be created."
  type        = bool
  default     = null
}
variable "source_image_id" {
  description = "The ID of the Image which this Virtual Machine should be created from. Changing this forces a new resource to be created. Possible Image ID types include 'Image ID's, 'Shared Image ID's, 'Shared Image Version ID's, 'Community Gallery Image ID's, 'Community Gallery Image Version ID's, 'Shared Gallery Image ID's and 'Shared Gallery Image Version ID's."
  type        = string
  default     = null
}
variable "source_image_reference" {
  description = "A 'source_image_reference' block. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# source_image_reference block structure:
#   publisher (string)                    : (REQUIRED) Specifies the publisher of the image used to create the virtual machines. Changing this forces a new resource to be created.
#   offer (string)                        : (REQUIRED) Specifies the offer of the image used to create the virtual machines. Changing this forces a new resource to be created.
#   sku (string)                          : (REQUIRED) Specifies the SKU of the image used to create the virtual machines. Changing this forces a new resource to be created.
#   version (string)                      : (REQUIRED) Specifies the version of the image used to create the virtual machines. Changing this forces a new resource to be created.


variable "tags" {
  description = "A mapping of tags which should be assigned to this Virtual Machine."
  type        = map(any)
  default     = null
}
variable "termination_notification" {
  description = "A 'termination_notification' block."
  type        = map(any)
  default     = null
}
#
# termination_notification block structure:
#   enabled (bool)                          : (REQUIRED) Should the termination notification be enabled on this Virtual Machine?
#   timeout (string)                        : Length of time (in minutes, between '5' and '15') a notification to be sent to the VM on the instance metadata server till the VM gets deleted. The time duration should be specified in ISO 8601 format. Defaults to 'PT5M'.


variable "timezone" {
  description = "Specifies the Time Zone which should be used by the Virtual Machine, [the possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/). Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "user_data" {
  description = "The Base64-Encoded User Data which should be used for this Virtual Machine."
  type        = string
  default     = null
}
variable "virtual_machine_scale_set_id" {
  description = "Specifies the Orchestrated Virtual Machine Scale Set that this Virtual Machine should be created within. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "vtpm_enabled" {
  description = "Specifies if vTPM (virtual Trusted Platform Module) and Trusted Launch is enabled for the Virtual Machine. Changing this forces a new resource to be created."
  type        = bool
  default     = null
}
variable "winrm_listener" {
  description = "One or more 'winrm_listener' blocks. Changing this forces a new resource to be created."
  type        = map(map(any))
  default     = null
}
#
# winrm_listener block structure:
#   protocol (string)             : (REQUIRED) Specifies the protocol of listener. Possible values are 'Http' or 'Https'. Changing this forces a new resource to be created.
#   certificate_url (string)      : The Secret URL of a Key Vault Certificate, which must be specified when 'protocol' is set to 'Https'. Changing this forces a new resource to be created.


variable "zone" {
  description = "* 'zones' -  Specifies the Availability Zone in which this Windows Virtual Machine should be located. Changing this forces a new Windows Virtual Machine to be created."
  type        = string
  default     = null
}

# OPTIONAL VARIABLES

variable "managed_disk_id" {
  description = "The ID of an existing Managed Disk which should be attached. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "lun" {
  description = "The Logical Unit Number of the Data Disk, which needs to be unique within the Virtual Machine. Changing this forces a new resource to be created."
  type        = number
  default     = "3"
}
variable "caching" {
  description = "Specifies the caching requirements for this Data Disk. Possible values include 'None', 'ReadOnly' and 'ReadWrite'."
  type        = string
  default     = "ReadOnly"
}
variable "create_option" {
  description = "The Create Option of the Data Disk, such as 'Empty' or 'Attach'. Defaults to 'Attach'. Changing this forces a new resource to be created."
  type        = string
  default     = "Attach"
}
variable "write_accelerator_enabled" {
  description = "Specifies if Write Accelerator is enabled on the disk. This can only be enabled on 'Premium_LRS' managed disks with no caching and [M-Series VMs](https://docs.microsoft.com/azure/virtual-machines/workloads/sap/how-to-enable-write-accelerator). Defaults to 'false'."
  type        = bool
  default     = false
}
