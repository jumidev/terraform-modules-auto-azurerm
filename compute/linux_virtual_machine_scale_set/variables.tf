# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Linux Virtual Machine Scale Set. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure location where the Linux Virtual Machine Scale Set should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group in which the Linux Virtual Machine Scale Set should be exist. Changing this forces a new resource to be created."
  type        = string

}
variable "admin_username" {
  description = "(REQUIRED) The username of the local administrator on each Virtual Machine Scale Set instance. Changing this forces a new resource to be created."
  type        = string

}
variable "sku" {
  description = "(REQUIRED) The Virtual Machine SKU for the Scale Set, such as 'Standard_F2'."
  type        = string

}
variable "network_interface" {
  description = "(REQUIRED) One or more 'network_interface' blocks."
  type        = map(map(any))
}
#
# network_interface block structure   :
#   name (string)                       : (REQUIRED) The Name which should be used for this Network Interface. Changing this forces a new resource to be created.
#   ip_configuration (list)             : (REQUIRED) One or more 'ip_configuration' blocks.
#   dns_servers (list)                  : A list of IP Addresses of DNS Servers which should be assigned to the Network Interface.
#   enable_accelerated_networking (bool): Does this Network Interface support Accelerated Networking? Defaults to 'false'.
#   enable_ip_forwarding (bool)         : Does this Network Interface support IP Forwarding? Defaults to 'false'.
#   network_security_group_id (string)  : The ID of a Network Security Group which should be assigned to this Network Interface.
#   primary (bool)                      : Is this the Primary IP Configuration?


variable "os_disk" {
  description = "(REQUIRED) An 'os_disk' block."
  type        = map(any)
}
#
# os_disk block structure                  :
#   caching (string)                         : (REQUIRED) The Type of Caching which should be used for the Internal OS Disk. Possible values are 'None', 'ReadOnly' and 'ReadWrite'.
#   storage_account_type (string)            : (REQUIRED) The Type of Storage Account which should back this the Internal OS Disk. Possible values include 'Standard_LRS', 'StandardSSD_LRS', 'StandardSSD_ZRS', 'Premium_LRS' and 'Premium_ZRS'. Changing this forces a new resource to be created.
#   diff_disk_settings (block)               : A 'diff_disk_settings' block. Changing this forces a new resource to be created.
#   disk_encryption_set_id (string)          : The ID of the Disk Encryption Set which should be used to encrypt this OS Disk. Conflicts with 'secure_vm_disk_encryption_set_id'. Changing this forces a new resource to be created.
#   disk_size_gb (int)                       : The Size of the Internal OS Disk in GB, if you wish to vary from the size used in the image this Virtual Machine Scale Set is sourced from.
#   secure_vm_disk_encryption_set_id (string): The ID of the Disk Encryption Set which should be used to Encrypt the OS Disk when the Virtual Machine Scale Set is Confidential VMSS. Conflicts with 'disk_encryption_set_id'. Changing this forces a new resource to be created.
#   security_encryption_type (string)        : Encryption Type when the Virtual Machine Scale Set is Confidential VMSS. Possible values are 'VMGuestStateOnly' and 'DiskWithVMGuestState'. Changing this forces a new resource to be created.
#   write_accelerator_enabled (bool)         : Should Write Accelerator be Enabled for this OS Disk? Defaults to 'false'.
#
# diff_disk_settings block structure:
#   option (string)                   : (REQUIRED) Specifies the Ephemeral Disk Settings for the OS Disk. At this time the only possible value is 'Local'. Changing this forces a new resource to be created.
#   placement (string)                : Specifies where to store the Ephemeral Disk. Possible values are 'CacheDisk' and 'ResourceDisk'. Defaults to 'CacheDisk'. Changing this forces a new resource to be created.



# OPTIONAL VARIABLES

variable "instances" {
  description = "The number of Virtual Machines in the Scale Set. Defaults to '0'."
  type        = int
  default     = 0
}
variable "additional_capabilities" {
  description = "An 'additional_capabilities' block."
  type        = map(any)
  default     = null
}
#
# additional_capabilities block structure:
#   ultra_ssd_enabled (bool)               : Should the capacity to enable Data Disks of the 'UltraSSD_LRS' storage account type be supported on this Virtual Machine Scale Set? Possible values are 'true' or 'false'. Defaults to 'false'. Changing this forces a new resource to be created.


variable "admin_ssh_key" {
  description = "One or more 'admin_ssh_key' blocks."
  type        = map(map(any))
  default     = null
}
#
# admin_ssh_key block structure:
#   public_key (string)          : (REQUIRED) The Public Key which should be used for authentication, which needs to be at least 2048-bit and in 'ssh-rsa' format.
#   username (string)            : (REQUIRED) The Username for which this Public SSH Key should be configured.


variable "automatic_os_upgrade_policy" {
  description = "An 'automatic_os_upgrade_policy' block. This can only be specified when 'upgrade_mode' is set to either 'Automatic' or 'Rolling'."
  type        = map(any)
  default     = null
}
#
# automatic_os_upgrade_policy block structure:
#   disable_automatic_rollback (bool)          : (REQUIRED) Should automatic rollbacks be disabled?
#   enable_automatic_os_upgrade (bool)         : (REQUIRED) Should OS Upgrades automatically be applied to Scale Set instances in a rolling fashion when a newer version of the OS Image becomes available?


variable "automatic_instance_repair" {
  description = "An 'automatic_instance_repair' block. To enable the automatic instance repair, this Virtual Machine Scale Set must have a valid 'health_probe_id' or an [Application Health Extension](https://docs.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-health-extension)."
  type        = map(any)
  default     = null
}
#
# automatic_instance_repair block structure:
#   enabled (bool)                           : (REQUIRED) Should the automatic instance repair be enabled on this Virtual Machine Scale Set?
#   grace_period (int)                       : Amount of time (in minutes, between 30 and 90) for which automatic repairs will be delayed. The grace period starts right after the VM is found unhealthy. The time duration should be specified in ISO 8601 format. Defaults to 'PT30M'.


variable "boot_diagnostics" {
  description = "A 'boot_diagnostics' block."
  type        = map(any)
  default     = null
}
#
# boot_diagnostics block structure:
#   storage_account_uri (string)    : The Primary/Secondary Endpoint for the Azure Storage Account which should be used to store Boot Diagnostics, including Console Output and Screenshots from the Hypervisor.


variable "capacity_reservation_group_id" {
  description = "Specifies the ID of the Capacity Reservation Group which the Virtual Machine Scale Set should be allocated to. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "computer_name_prefix" {
  description = "The prefix which should be used for the name of the Virtual Machines in this Scale Set. If unspecified this defaults to the value for the 'name' field. If the value of the 'name' field is not a valid 'computer_name_prefix', then you must specify 'computer_name_prefix'. Changing this forces a new resource to be created."
  type        = string
  default     = "name"
}
variable "custom_data" {
  description = "The Base64-Encoded Custom Data which should be used for this Virtual Machine Scale Set."
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
#   name (string)                          : The name of the Data Disk.
#   caching (string)                       : (REQUIRED) The type of Caching which should be used for this Data Disk. Possible values are 'None', 'ReadOnly' and 'ReadWrite'.
#   create_option (string)                 : The create option which should be used for this Data Disk. Possible values are 'Empty' and 'FromImage'. Defaults to 'Empty'. ('FromImage' should only be used if the source image includes data disks).
#   disk_size_gb (int)                     : (REQUIRED) The size of the Data Disk which should be created.
#   lun (int)                              : (REQUIRED) The Logical Unit Number of the Data Disk, which must be unique within the Virtual Machine.
#   storage_account_type (string)          : (REQUIRED) The Type of Storage Account which should back this Data Disk. Possible values include 'Standard_LRS', 'StandardSSD_LRS', 'StandardSSD_ZRS', 'Premium_LRS', 'PremiumV2_LRS', 'Premium_ZRS' and 'UltraSSD_LRS'.
#   disk_encryption_set_id (string)        : The ID of the Disk Encryption Set which should be used to encrypt this Data Disk. Changing this forces a new resource to be created.
#   ultra_ssd_disk_iops_read_write (string): Specifies the Read-Write IOPS for this Data Disk. Only settable when 'storage_account_type' is 'PremiumV2_LRS' or 'UltraSSD_LRS'.
#   ultra_ssd_disk_mbps_read_write (string): Specifies the bandwidth in MB per second for this Data Disk. Only settable when 'storage_account_type' is 'PremiumV2_LRS' or 'UltraSSD_LRS'.
#   write_accelerator_enabled (bool)       : Should Write Accelerator be enabled for this Data Disk? Defaults to 'false'.


variable "disable_password_authentication" {
  description = "Should Password Authentication be disabled on this Virtual Machine Scale Set? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "do_not_run_extensions_on_overprovisioned_machines" {
  description = "Should Virtual Machine Extensions be run on Overprovisioned Virtual Machines in the Scale Set? Defaults to 'false'."
  type        = bool
  default     = false
}
variable "edge_zone" {
  description = "Specifies the Edge Zone within the Azure Region where this Linux Virtual Machine Scale Set should exist. Changing this forces a new Linux Virtual Machine Scale Set to be created."
  type        = string
  default     = null
}
variable "encryption_at_host_enabled" {
  description = "Should all of the disks (including the temp disk) attached to this Virtual Machine be encrypted by enabling Encryption at Host?"
  type        = bool
  default     = null
}
variable "extension" {
  description = "One or more 'extension' blocks"
  type        = map(map(any))
  default     = null
}
#
# extension block structure                :
#   name (string)                            : (REQUIRED) The name for the Virtual Machine Scale Set Extension.
#   publisher (string)                       : (REQUIRED) Specifies the Publisher of the Extension.
#   type (string)                            : (REQUIRED) Specifies the Type of the Extension.
#   type_handler_version (string)            : (REQUIRED) Specifies the version of the extension to use, available versions can be found using the Azure CLI.
#   auto_upgrade_minor_version (bool)        : Should the latest version of the Extension be used at Deployment Time, if one is available? This won't auto-update the extension on existing installation. Defaults to 'true'.
#   automatic_upgrade_enabled (bool)         : Should the Extension be automatically updated whenever the Publisher releases a new version of this VM Extension?
#   force_update_tag (string)                : A value which, when different to the previous value can be used to force-run the Extension even if the Extension Configuration hasn't changed.
#   protected_settings (string)              : A JSON String which specifies Sensitive Settings (such as Passwords) for the Extension.
#   protected_settings_from_key_vault (block): A 'protected_settings_from_key_vault' block.
#   provision_after_extensions (string)      : An ordered list of Extension names which this should be provisioned after.
#   settings (string)                        : A JSON String which specifies Settings for the Extension.
#
# protected_settings_from_key_vault block structure:
#   secret_url (string)                              : (REQUIRED) The URL to the Key Vault Secret which stores the protected settings.
#   source_vault_id (string)                         : (REQUIRED) The ID of the source Key Vault.


variable "extension_operations_enabled" {
  description = "Should extension operations be allowed on the Virtual Machine Scale Set? Possible values are 'true' or 'false'. Defaults to 'true'. Changing this forces a new Linux Virtual Machine Scale Set to be created."
  type        = bool
  default     = true
}
variable "extensions_time_budget" {
  description = "Specifies the duration allocated for all extensions to start. The time duration should be between '15' minutes and '120' minutes (inclusive) and should be specified in ISO 8601 format. Defaults to 'PT1H30M'."
  type        = string
  default     = "PT1H30M"
}
variable "eviction_policy" {
  description = "Specifies the eviction policy for Virtual Machines in this Scale Set. Possible values are 'Deallocate' and 'Delete'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "gallery_application" {
  description = "One or more 'gallery_application' blocks."
  type        = map(map(any))
  default     = null
}
#
# gallery_application block structure:
#   version_id (string)                : (REQUIRED) Specifies the Gallery Application Version resource ID. Changing this forces a new resource to be created.
#   configuration_blob_uri (string)    : Specifies the URI to an Azure Blob that will replace the default configuration for the package if provided. Changing this forces a new resource to be created.
#   order (string)                     : Specifies the order in which the packages have to be installed. Possible values are between '0' and '2,147,483,647'. Changing this forces a new resource to be created.
#   tag (string)                       : Specifies a passthrough value for more generic context. This field can be any valid 'string' value. Changing this forces a new resource to be created.


variable "health_probe_id" {
  description = "The ID of a Load Balancer Probe which should be used to determine the health of an instance. This is Required and can only be specified when 'upgrade_mode' is set to 'Automatic' or 'Rolling'."
  type        = string
  default     = null
}
variable "host_group_id" {
  description = "Specifies the ID of the dedicated host group that the virtual machine scale set resides in. Changing this forces a new resource to be created."
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
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Linux Virtual Machine Scale Set. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both).
#   identity_ids (string)   : Specifies a list of User Assigned Managed Identity IDs to be assigned to this Linux Virtual Machine Scale Set.


variable "max_bid_price" {
  description = "The maximum price you're willing to pay for each Virtual Machine in this Scale Set, in US Dollars; which must be greater than the current spot price. If this bid price falls below the current spot price the Virtual Machines in the Scale Set will be evicted using the 'eviction_policy'. Defaults to '-1', which means that each Virtual Machine in this Scale Set should not be evicted for price reasons."
  type        = string
  default     = "-1"
}
variable "overprovision" {
  description = "Should Azure over-provision Virtual Machines in this Scale Set? This means that multiple Virtual Machines will be provisioned and Azure will keep the instances which become available first - which improves provisioning success rates and improves deployment time. You're not billed for these over-provisioned VM's and they don't count towards the Subscription Quota. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "plan" {
  description = "A 'plan' block. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# plan block structure:
#   name (string)       : (REQUIRED) Specifies the name of the image from the marketplace. Changing this forces a new resource to be created.
#   publisher (string)  : (REQUIRED) Specifies the publisher of the image. Changing this forces a new resource to be created.
#   product (string)    : (REQUIRED) Specifies the product of the image from the marketplace. Changing this forces a new resource to be created.


variable "platform_fault_domain_count" {
  description = "Specifies the number of fault domains that are used by this Linux Virtual Machine Scale Set. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "priority" {
  description = "The Priority of this Virtual Machine Scale Set. Possible values are 'Regular' and 'Spot'. Defaults to 'Regular'. Changing this value forces a new resource."
  type        = string
  default     = "Regular"
}
variable "provision_vm_agent" {
  description = "Should the Azure VM Agent be provisioned on each Virtual Machine in the Scale Set? Defaults to 'true'. Changing this value forces a new resource to be created."
  type        = bool
  default     = true
}
variable "proximity_placement_group_id" {
  description = "The ID of the Proximity Placement Group in which the Virtual Machine Scale Set should be assigned to. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "rolling_upgrade_policy" {
  description = "A 'rolling_upgrade_policy' block. This is Required and can only be specified when 'upgrade_mode' is set to 'Automatic' or 'Rolling'. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# rolling_upgrade_policy block structure          :
#   cross_zone_upgrades_enabled (string)            : Should the Virtual Machine Scale Set ignore the Azure Zone boundaries when constructing upgrade batches? Possible values are 'true' or 'false'.
#   max_batch_instance_percent (string)             : (REQUIRED) The maximum percent of total virtual machine instances that will be upgraded simultaneously by the rolling upgrade in one batch. As this is a maximum, unhealthy instances in previous or future batches can cause the percentage of instances in a batch to decrease to ensure higher reliability.
#   max_unhealthy_instance_percent (string)         : (REQUIRED) The maximum percentage of the total virtual machine instances in the scale set that can be simultaneously unhealthy, either as a result of being upgraded, or by being found in an unhealthy state by the virtual machine health checks before the rolling upgrade aborts. This constraint will be checked prior to starting any batch.
#   max_unhealthy_upgraded_instance_percent (string): (REQUIRED) The maximum percentage of upgraded virtual machine instances that can be found to be in an unhealthy state. This check will happen after each batch is upgraded. If this percentage is ever exceeded, the rolling update aborts.
#   pause_time_between_batches (string)             : (REQUIRED) The wait time between completing the update for all virtual machines in one batch and starting the next batch. The time duration should be specified in ISO 8601 format.
#   prioritize_unhealthy_instances_enabled (string) : Upgrade all unhealthy instances in a scale set before any healthy instances. Possible values are 'true' or 'false'.


variable "scale_in" {
  description = "A 'scale_in' block."
  type        = map(any)
  default     = null
}
#
# scale_in block structure     :
#   rule (string)                : The scale-in policy rule that decides which virtual machines are chosen for removal when a Virtual Machine Scale Set is scaled in. Possible values for the scale-in policy rules are 'Default', 'NewestVM' and 'OldestVM', defaults to 'Default'. For more information about scale in policy, please [refer to this doc](https://docs.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-scale-in-policy).
#   force_deletion_enabled (bool): Should the virtual machines chosen for removal be force deleted when the virtual machine scale set is being scaled-in? Possible values are 'true' or 'false'. Defaults to 'false'.


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
  description = "Specifies whether secure boot should be enabled on the virtual machine. Changing this forces a new resource to be created."
  type        = bool
  default     = null
}
variable "single_placement_group" {
  description = "Should this Virtual Machine Scale Set be limited to a Single Placement Group, which means the number of instances will be capped at 100 Virtual Machines. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "source_image_id" {
  description = "The ID of an Image which each Virtual Machine in this Scale Set should be based on. Possible Image ID types include 'Image ID', 'Shared Image ID', 'Shared Image Version ID', 'Community Gallery Image ID', 'Community Gallery Image Version ID', 'Shared Gallery Image ID' and 'Shared Gallery Image Version ID'."
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


variable "spot_restore" {
  description = "A 'spot_restore' block."
  type        = map(any)
  default     = null
}
#
# spot_restore block structure:
#   enabled (bool)              : Should the Spot-Try-Restore feature be enabled? The Spot-Try-Restore feature will attempt to automatically restore the evicted Spot Virtual Machine Scale Set VM instances opportunistically based on capacity availability and pricing constraints. Possible values are 'true' or 'false'. Defaults to 'false'. Changing this forces a new resource to be created.
#   timeout (string)            : The length of time that the Virtual Machine Scale Set should attempt to restore the Spot VM instances which have been evicted. The time duration should be between '15' minutes and '120' minutes (inclusive). The time duration should be specified in the ISO 8601 format. Defaults to 'PT1H'. Changing this forces a new resource to be created.


variable "tags" {
  description = "A mapping of tags which should be assigned to this Virtual Machine Scale Set."
  type        = map(any)
  default     = null
}
variable "terminate_notification" {
  description = "A 'terminate_notification' block."
  type        = map(any)
  default     = null
}
#
# terminate_notification block structure:
#   enabled (bool)                        : (REQUIRED) Should the terminate notification be enabled on this Virtual Machine Scale Set?
#   timeout (string)                      : Length of time (in minutes, between 5 and 15) a notification to be sent to the VM on the instance metadata server till the VM gets deleted. The time duration should be specified in ISO 8601 format. Defaults to 'PT5M'.


variable "termination_notification" {
  description = "A 'termination_notification' block."
  type        = map(any)
  default     = null
}
#
# termination_notification block structure:
#   enabled (bool)                          : (REQUIRED) Should the termination notification be enabled on this Virtual Machine Scale Set?
#   timeout (string)                        : Length of time (in minutes, between 5 and 15) a notification to be sent to the VM on the instance metadata server till the VM gets deleted. The time duration should be specified in ISO 8601 format. Defaults to 'PT5M'.


variable "upgrade_mode" {
  description = "Specifies how Upgrades (e.g. changing the Image/SKU) should be performed to Virtual Machine Instances. Possible values are 'Automatic', 'Manual' and 'Rolling'. Defaults to 'Manual'. Changing this forces a new resource to be created."
  type        = string
  default     = "Manual"
}
variable "user_data" {
  description = "The Base64-Encoded User Data which should be used for this Virtual Machine Scale Set."
  type        = string
  default     = null
}
variable "vtpm_enabled" {
  description = "Specifies whether vTPM should be enabled on the virtual machine. Changing this forces a new resource to be created."
  type        = bool
  default     = null
}
variable "zone_balance" {
  description = "Should the Virtual Machines in this Scale Set be strictly evenly distributed across Availability Zones? Defaults to 'false'. Changing this forces a new resource to be created."
  type        = bool
  default     = false
}
variable "zones" {
  description = "Specifies a list of Availability Zones in which this Linux Virtual Machine Scale Set should be located. Changing this forces a new Linux Virtual Machine Scale Set to be created."
  type        = string
  default     = null
}
