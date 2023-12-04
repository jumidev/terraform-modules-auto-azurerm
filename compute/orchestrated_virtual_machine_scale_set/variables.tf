# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Orchestrated Virtual Machine Scale Set. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure location where the Orchestrated Virtual Machine Scale Set should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group in which the Orchestrated Virtual Machine Scale Set should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "platform_fault_domain_count" {
  description = "(REQUIRED) Specifies the number of fault domains that are used by this Orchestrated Virtual Machine Scale Set. Changing this forces a new resource to be created."
  type        = int

}

# OPTIONAL VARIABLES

variable "sku_name" {
  description = "The 'name' of the SKU to be used by this Orcestrated Virtual Machine Scale Set. Valid values include: any of the [General purpose](https://docs.microsoft.com/azure/virtual-machines/sizes-general), [Compute optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-compute), [Memory optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-memory), [Storage optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-storage), [GPU optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-gpu), [FPGA optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-field-programmable-gate-arrays), [High performance](https://docs.microsoft.com/azure/virtual-machines/sizes-hpc), or [Previous generation](https://docs.microsoft.com/azure/virtual-machines/sizes-previous-gen) virtual machine SKUs."
  type        = string
  default     = null
}
variable "additional_capabilities" {
  description = "An 'additional_capabilities' block."
  type        = map(any)
  default     = null
}
#
# additional_capabilities block structure:
#   ultra_ssd_enabled (bool)               : Should the capacity to enable Data Disks of the 'UltraSSD_LRS' storage account type be supported on this Orchestrated Virtual Machine Scale Set? Defaults to 'false'. Changing this forces a new resource to be created.


variable "encryption_at_host_enabled" {
  description = "Should disks attached to this Virtual Machine Scale Set be encrypted by enabling Encryption at Host?"
  type        = bool
  default     = null
}
variable "instances" {
  description = "The number of Virtual Machines in the Orcestrated Virtual Machine Scale Set."
  type        = int
  default     = null
}
variable "network_interface" {
  description = "One or more 'network_interface' blocks."
  type        = map(map(any))
  default     = null
}
#
# network_interface block structure   :
#   ip_configuration (list)             : (REQUIRED) One or more 'ip_configuration' blocks.
#   dns_servers (list)                  : A list of IP Addresses of DNS Servers which should be assigned to the Network Interface.
#   enable_accelerated_networking (bool): Does this Network Interface support Accelerated Networking? Possible values are 'true' and 'false'. Defaults to 'false'.
#   enable_ip_forwarding (bool)         : Does this Network Interface support IP Forwarding? Possible values are 'true' and 'false'. Defaults to 'false'.
#   network_security_group_id (string)  : The ID of a Network Security Group which should be assigned to this Network Interface.
#   primary (bool)                      : Is this the Primary IP Configuration? Possible values are 'true' and 'false'. Defaults to 'false'.


variable "os_profile" {
  description = "An 'os_profile' block."
  type        = map(any)
  default     = null
}
#
# os_profile block structure   :
#   custom_data (string)         : The Base64-Encoded Custom Data which should be used for this Orchestrated Virtual Machine Scale Set.
#   windows_configuration (block): A 'windows_configuration' block.
#   linux_configuration (block)  : A 'linux_configuration' block.
#
# admin_ssh_key block structure:
#   public_key (string)          : (REQUIRED) The Public Key which should be used for authentication, which needs to be at least 2048-bit and in ssh-rsa format.
#   username (string)            : (REQUIRED) The Username for which this Public SSH Key should be configured.
#
# secret block structure:
#   key_vault_id (string) : (REQUIRED) The ID of the Key Vault from which all Secrets should be sourced.
#   certificate (block)   : (REQUIRED) One or more 'certificate' blocks.
#
# certificate block structure:
#   store (string)             : (REQUIRED) The certificate store on the Virtual Machine where the certificate should be added.
#   url (string)               : (REQUIRED) The Secret URL of a Key Vault Certificate.
#
# linux_configuration block structure   :
#   admin_username (string)               : (REQUIRED) The username of the local administrator on each Orchestrated Virtual Machine Scale Set instance. Changing this forces a new resource to be created.
#   admin_password (string)               : The Password which should be used for the local-administrator on this Virtual Machine. Changing this forces a new resource to be created.
#   admin_ssh_key (block)                 : A 'admin_ssh_key' block.
#   computer_name_prefix (string)         : The prefix which should be used for the name of the Virtual Machines in this Scale Set. If unspecified this defaults to the value for the name field. If the value of the name field is not a valid 'computer_name_prefix', then you must specify 'computer_name_prefix'. Changing this forces a new resource to be created.
#   disable_password_authentication (bool): When an 'admin_password' is specified 'disable_password_authentication' must be set to 'false'. Defaults to 'true'.
#   patch_assessment_mode (string)        : Specifies the mode of VM Guest Patching for the virtual machines that are associated to the Orchestrated Virtual Machine Scale Set. Possible values are 'AutomaticByPlatform' or 'ImageDefault'. Defaults to 'ImageDefault'.
#   patch_mode (string)                   : Specifies the mode of in-guest patching of this Windows Virtual Machine. Possible values are 'ImageDefault' or 'AutomaticByPlatform'. Defaults to 'ImageDefault'. For more information on patch modes please see the [product documentation](https://docs.microsoft.com/azure/virtual-machines/automatic-vm-guest-patching#patch-orchestration-modes).
#   provision_vm_agent (bool)             : Should the Azure VM Agent be provisioned on each Virtual Machine in the Scale Set? Defaults to 'true'. Changing this value forces a new resource to be created.
#   secret (block)                        : One or more 'secret' blocks.
#
# winrm_listener block structure:
#   protocol (string)             : (REQUIRED) Specifies the protocol of listener. Possible values are 'Http' or 'Https'. Changing this forces a new resource to be created.
#   certificate_url (string)      : The Secret URL of a Key Vault Certificate, which must be specified when protocol is set to 'Https'. Changing this forces a new resource to be created.
#
# windows_configuration block structure:
#   admin_username (string)              : (REQUIRED) The username of the local administrator on each Orchestrated Virtual Machine Scale Set instance. Changing this forces a new resource to be created.
#   admin_password (string)              : (REQUIRED) The Password which should be used for the local-administrator on this Virtual Machine. Changing this forces a new resource to be created.
#   computer_name_prefix (string)        : The prefix which should be used for the name of the Virtual Machines in this Scale Set. If unspecified this defaults to the value for the 'name' field. If the value of the 'name' field is not a valid 'computer_name_prefix', then you must specify 'computer_name_prefix'. Changing this forces a new resource to be created.
#   enable_automatic_updates (bool)      : Are automatic updates enabled for this Virtual Machine? Defaults to 'true'.
#   hotpatching_enabled (bool)           : Should the VM be patched without requiring a reboot? Possible values are 'true' or 'false'. Defaults to 'false'. For more information about hot patching please see the [product documentation](https://docs.microsoft.com/azure/automanage/automanage-hotpatch).
#   patch_assessment_mode (string)       : Specifies the mode of VM Guest Patching for the virtual machines that are associated to the Orchestrated Virtual Machine Scale Set. Possible values are 'AutomaticByPlatform' or 'ImageDefault'. Defaults to 'ImageDefault'.
#   patch_mode (string)                  : Specifies the mode of in-guest patching of this Windows Virtual Machine. Possible values are 'Manual', 'AutomaticByOS' and 'AutomaticByPlatform'. Defaults to 'AutomaticByOS'. For more information on patch modes please see the [product documentation](https://docs.microsoft.com/azure/virtual-machines/automatic-vm-guest-patching#patch-orchestration-modes).
#   provision_vm_agent (bool)            : Should the Azure VM Agent be provisioned on each Virtual Machine in the Scale Set? Defaults to 'true'. Changing this value forces a new resource to be created.
#   secret (block)                       : One or more 'secret' blocks.
#   timezone (string)                    : Specifies the time zone of the virtual machine, the possible values are defined [here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/).
#   winrm_listener (block)               : One or more 'winrm_listener' blocks. Changing this forces a new resource to be created.


variable "os_disk" {
  description = "An 'os_disk' block."
  type        = map(any)
  default     = null
}
#
# os_disk block structure         :
#   caching (string)                : (REQUIRED) The Type of Caching which should be used for the Internal OS Disk. Possible values are 'None', 'ReadOnly' and 'ReadWrite'.
#   storage_account_type (string)   : (REQUIRED) The Type of Storage Account which should back this the Internal OS Disk. Possible values include 'Standard_LRS', 'StandardSSD_LRS', 'StandardSSD_ZRS', 'Premium_LRS' and 'Premium_ZRS'. Changing this forces a new resource to be created.
#   diff_disk_settings (block)      : A 'diff_disk_settings' block. Changing this forces a new resource to be created.
#   disk_encryption_set_id (string) : The ID of the Disk Encryption Set which should be used to encrypt this OS Disk. Changing this forces a new resource to be created.
#   disk_size_gb (int)              : The Size of the Internal OS Disk in GB, if you wish to vary from the size used in the image this Virtual Machine Scale Set is sourced from.
#   write_accelerator_enabled (bool): Specifies if Write Accelerator is enabled on the OS Disk. Defaults to 'false'.
#
# diff_disk_settings block structure:
#   option (string)                   : (REQUIRED) Specifies the Ephemeral Disk Settings for the OS Disk. At this time the only possible value is 'Local'. Changing this forces a new resource to be created.
#   placement (string)                : Specifies where to store the Ephemeral Disk. Possible values are 'CacheDisk' and 'ResourceDisk'. Defaults to 'CacheDisk'. Changing this forces a new resource to be created.


variable "automatic_instance_repair" {
  description = "An 'automatic_instance_repair' block."
  type        = map(any)
  default     = null
}
#
# automatic_instance_repair block structure:
#   enabled (string)                         : (REQUIRED) Should the automatic instance repair be enabled on this Orchestrated Virtual Machine Scale Set? Possible values are 'true' and 'false'.
#   grace_period (string)                    : Amount of time for which automatic repairs will be delayed. The grace period starts right after the VM is found unhealthy. Possible values are between '30' and '90' minutes. The time duration should be specified in 'ISO 8601' format (e.g. 'PT30M' to 'PT90M'). Defaults to 'PT30M'.


variable "boot_diagnostics" {
  description = "A 'boot_diagnostics' block."
  type        = map(any)
  default     = null
}
#
# boot_diagnostics block structure:
#   storage_account_uri (string)    : The Primary/Secondary Endpoint for the Azure Storage Account which should be used to store Boot Diagnostics, including Console Output and Screenshots from the Hypervisor. By including a 'boot_diagnostics' block without passing the 'storage_account_uri' field will cause the API to utilize a Managed Storage Account to store the Boot Diagnostics output.


variable "capacity_reservation_group_id" {
  description = "Specifies the ID of the Capacity Reservation Group which the Virtual Machine Scale Set should be allocated to. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "data_disk" {
  description = "One or more 'data_disk' blocks."
  type        = map(map(any))
  default     = null
}
#
# data_disk block structure              :
#   caching (string)                       : (REQUIRED) The type of Caching which should be used for this Data Disk. Possible values are None, ReadOnly and ReadWrite.
#   create_option (string)                 : The create option which should be used for this Data Disk. Possible values are Empty and FromImage. Defaults to 'Empty'. (FromImage should only be used if the source image includes data disks).
#   disk_size_gb (int)                     : (REQUIRED) The size of the Data Disk which should be created.
#   lun (int)                              : (REQUIRED) The Logical Unit Number of the Data Disk, which must be unique within the Virtual Machine.
#   storage_account_type (string)          : (REQUIRED) The Type of Storage Account which should back this Data Disk. Possible values include 'Standard_LRS', 'StandardSSD_LRS', 'StandardSSD_ZRS', 'Premium_LRS', 'PremiumV2_LRS', 'Premium_ZRS' and 'UltraSSD_LRS'.
#   disk_encryption_set_id (string)        : The ID of the Disk Encryption Set which should be used to encrypt the Data Disk. Changing this forces a new resource to be created.
#   ultra_ssd_disk_iops_read_write (string): Specifies the Read-Write IOPS for this Data Disk. Only settable when 'storage_account_type' is 'PremiumV2_LRS' or 'UltraSSD_LRS'.
#   ultra_ssd_disk_mbps_read_write (int)   : Specifies the bandwidth in MB per second for this Data Disk. Only settable when 'storage_account_type' is 'PremiumV2_LRS' or 'UltraSSD_LRS'.
#   write_accelerator_enabled (bool)       : Specifies if Write Accelerator is enabled on the Data Disk. Defaults to 'false'.


variable "extension" {
  description = "One or more 'extension' blocks"
  type        = map(map(any))
  default     = null
}
#
# extension block structure                         :
#   publisher (string)                                : (REQUIRED) Specifies the Publisher of the Extension.
#   type (string)                                     : (REQUIRED) Specifies the Type of the Extension.
#   type_handler_version (string)                     : (REQUIRED) Specifies the version of the extension to use, available versions can be found using the Azure CLI.
#   auto_upgrade_minor_version_enabled (bool)         : Should the latest version of the Extension be used at Deployment Time, if one is available? This won't auto-update the extension on existing installation. Defaults to 'true'.
#   extensions_to_provision_after_vm_creation (string): An ordered list of Extension names which Orchestrated Virtual Machine Scale Set should provision after VM creation.
#   force_extension_execution_on_change (string)      : A value which, when different to the previous value can be used to force-run the Extension even if the Extension Configuration hasn't changed.
#   protected_settings (string)                       : A JSON String which specifies Sensitive Settings (such as Passwords) for the Extension.
#   protected_settings_from_key_vault (block)         : A 'protected_settings_from_key_vault' block.
#   failure_suppression_enabled (string)              : Should failures from the extension be suppressed? Possible values are 'true' or 'false'.
#   settings (string)                                 : A JSON String which specifies Settings for the Extension.
#
# protected_settings_from_key_vault block structure:
#   secret_url (string)                              : (REQUIRED) The URL to the Key Vault Secret which stores the protected settings.
#   source_vault_id (string)                         : (REQUIRED) The ID of the source Key Vault.


variable "extension_operations_enabled" {
  description = "Should extension operations be allowed on the Virtual Machine Scale Set? Possible values are 'true' or 'false'. Defaults to 'true'. Changing this forces a new Orchestrated Virtual Machine Scale Set to be created."
  type        = bool
  default     = true
}
variable "extensions_time_budget" {
  description = "Specifies the time alloted for all extensions to start. The time duration should be between 15 minutes and 120 minutes (inclusive) and should be specified in ISO 8601 format. Defaults to 'PT1H30M'."
  type        = string
  default     = "PT1H30M"
}
variable "eviction_policy" {
  description = "The Policy which should be used Virtual Machines are Evicted from the Scale Set. Possible values are 'Deallocate' and 'Delete'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) The type of Managed Identity that should be configured on this Orchestrated Windows Virtual Machine Scale Set. Only possible value is 'UserAssigned'.
#   identity_ids (string)   : (REQUIRED) Specifies a list of User Managed Identity IDs to be assigned to this Orchestrated Windows Virtual Machine Scale Set.


variable "license_type" {
  description = "Specifies the type of on-premise license (also known as Azure Hybrid Use Benefit) which should be used for this Orchestrated Virtual Machine Scale Set. Possible values are 'None', 'Windows_Client' and 'Windows_Server'."
  type        = string
  default     = null
}
variable "max_bid_price" {
  description = "The maximum price you're willing to pay for each Orchestrated Virtual Machine in this Scale Set, in US Dollars; which must be greater than the current spot price. If this bid price falls below the current spot price the Virtual Machines in the Scale Set will be evicted using the eviction_policy. Defaults to '-1', which means that each Virtual Machine in the Orchestrated Scale Set should not be evicted for price reasons."
  type        = string
  default     = "-1"
}
variable "plan" {
  description = "A 'plan' block. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# plan block structure:
#   publisher (string)  : (REQUIRED) Specifies the publisher of the image. Changing this forces a new resource to be created.
#   product (string)    : (REQUIRED) Specifies the product of the image from the marketplace. Changing this forces a new resource to be created.


variable "priority" {
  description = "The Priority of this Orchestrated Virtual Machine Scale Set. Possible values are 'Regular' and 'Spot'. Defaults to 'Regular'. Changing this value forces a new resource."
  type        = string
  default     = "Regular"
}
variable "single_placement_group" {
  description = "Should this Virtual Machine Scale Set be limited to a Single Placement Group, which means the number of instances will be capped at 100 Virtual Machines. Possible values are 'true' or 'false'."
  type        = string
  default     = null
}
variable "source_image_id" {
  description = "The ID of an Image which each Virtual Machine in this Scale Set should be based on. Possible Image ID types include 'Image ID's, 'Shared Image ID's, 'Shared Image Version ID's, 'Community Gallery Image ID's, 'Community Gallery Image Version ID's, 'Shared Gallery Image ID's and 'Shared Gallery Image Version ID's."
  type        = string
  default     = null
}
variable "source_image_reference" {
  description = "A 'source_image_reference' block."
  type        = map(any)
  default     = null
}
#
# source_image_reference block structure:
#   publisher (string)                    : (REQUIRED) Specifies the publisher of the image used to create the virtual machines. Changing this forces a new resource to be created.
#   offer (string)                        : (REQUIRED) Specifies the offer of the image used to create the virtual machines. Changing this forces a new resource to be created.
#   sku (string)                          : (REQUIRED) Specifies the SKU of the image used to create the virtual machines.
#   version (string)                      : (REQUIRED) Specifies the version of the image used to create the virtual machines.


variable "termination_notification" {
  description = "A 'termination_notification' block."
  type        = map(any)
  default     = null
}
#
# termination_notification block structure:
#   enabled (string)                        : (REQUIRED) Should the termination notification be enabled on this Virtual Machine Scale Set? Possible values 'true' or 'false'
#   timeout (string)                        : Length of time (in minutes, between '5' and '15') a notification to be sent to the VM on the instance metadata server till the VM gets deleted. The time duration should be specified in 'ISO 8601' format. Defaults to 'PT5M'.


variable "user_data_base64" {
  description = "The Base64-Encoded User Data which should be used for this Virtual Machine Scale Set."
  type        = string
  default     = null
}
variable "proximity_placement_group_id" {
  description = "The ID of the Proximity Placement Group which the Orchestrated Virtual Machine should be assigned to. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "zone_balance" {
  description = "Should the Virtual Machines in this Scale Set be strictly evenly distributed across Availability Zones? Defaults to 'false'. Changing this forces a new resource to be created."
  type        = bool
  default     = false
}
variable "zones" {
  description = "Specifies a list of Availability Zones in which this Orchestrated Virtual Machine should be located. Changing this forces a new Orchestrated Virtual Machine to be created."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to this Orchestrated Virtual Machine Scale Set."
  type        = map(any)
  default     = null
}
variable "priority_mix" {
  description = "a 'priority_mix' block"
  type        = map(any)
  default     = null
}
#
# priority_mix block structure          :
#   base_regular_count (string)           : Specifies the base number of VMs of 'Regular' priority that will be created before any VMs of priority 'Spot' are created. Possible values are integers between '0' and '1000'. Defaults to '0'.
#   regular_percentage_above_base (string): Specifies the desired percentage of VM instances that are of 'Regular' priority after the base count has been reached. Possible values are integers between '0' and '100'. Defaults to '0'.


