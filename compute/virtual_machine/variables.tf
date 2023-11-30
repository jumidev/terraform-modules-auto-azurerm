# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Virtual Machine. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group in which the Virtual Machine should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the Virtual Machine exists. Changing this forces a new resource to be created."
  type        = string

}
variable "network_interface_ids" {
  description = "(REQUIRED) A list of Network Interface IDs which should be associated with the Virtual Machine."
  type        = list(any)

}
variable "vm_size" {
  description = "(REQUIRED) Specifies the [size of the Virtual Machine](https://docs.microsoft.com/azure/virtual-machines/sizes-general). See also [Azure VM Naming Conventions](https://docs.microsoft.com/azure/virtual-machines/vm-naming-conventions)."
  type        = string

}
variable "storage_os_disk" {
  description = "(REQUIRED) A 'storage_os_disk' block."
  type        = map(any)
}
#
# storage_os_disk block structure :
#   name (string)                   : (REQUIRED) Specifies the name of the OS Disk.
#   create_option (string)          : (REQUIRED) Specifies how the OS Disk should be created. Possible values are 'Attach' (managed disks only) and 'FromImage'.
#   caching (string)                : Specifies the caching requirements for the OS Disk. Possible values include 'None', 'ReadOnly' and 'ReadWrite'.
#   disk_size_gb (int)              : Specifies the size of the OS Disk in gigabytes.
#   image_uri (string)              : Specifies the Image URI in the format 'publisherName:offer:skus:version'. This field can also specify the [VHD URI](https://docs.microsoft.com/azure/virtual-machines/linux/tutorial-custom-images) of a custom VM image to clone. When cloning a Custom (Unmanaged) Disk Image the 'os_type' field must be set.
#   os_type (string)                : Specifies the Operating System on the OS Disk. Possible values are 'Linux' and 'Windows'.
#   write_accelerator_enabled (bool): Specifies if Write Accelerator is enabled on the disk. This can only be enabled on 'Premium_LRS' managed disks with no caching and [M-Series VMs](https://docs.microsoft.com/azure/virtual-machines/workloads/sap/how-to-enable-write-accelerator). Defaults to 'false'.
#   managed_disk_id (string)        : Specifies the ID of an existing Managed Disk which should be attached as the OS Disk of this Virtual Machine. If this is set then the 'create_option' must be set to 'Attach'. Changing this forces a new resource to be created.
#   managed_disk_type (string)      : Specifies the type of Managed Disk which should be created. Possible values are 'Standard_LRS', 'StandardSSD_LRS' or 'Premium_LRS'.
#   vhd_uri (string)                : Specifies the URI of the VHD file backing this Unmanaged OS Disk. Changing this forces a new resource to be created.



# OPTIONAL VARIABLES

variable "os_profile_linux_config" {
  description = "(Required, when a Linux machine) An 'os_profile_linux_config' block."
  type        = map(any)
  default     = null
}
#
# os_profile_linux_config block structure:
#   disable_password_authentication (bool) : (REQUIRED) Specifies whether password authentication should be disabled. If set to 'false', an 'admin_password' must be specified.
#   ssh_keys (block)                       : One or more 'ssh_keys' blocks. This field is required if 'disable_password_authentication' is set to 'true'.
#
# ssh_keys block structure:
#   key_data (string)       : (REQUIRED) The Public SSH Key which should be written to the 'path' defined above.
#   path (string)           : (REQUIRED) The path of the destination file on the virtual machine


variable "os_profile_windows_config" {
  description = "(Required, when a Windows machine) An 'os_profile_windows_config' block."
  type        = map(any)
  default     = null
}
#
# os_profile_windows_config block structure:
#   provision_vm_agent (bool)                : Should the Azure Virtual Machine Guest Agent be installed on this Virtual Machine? Defaults to 'false'.
#   enable_automatic_upgrades (bool)         : Are automatic updates enabled on this Virtual Machine? Defaults to 'false'.
#   timezone (string)                        : Specifies the time zone of the virtual machine, [the possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/). Changing this forces a new resource to be created.
#   winrm (block)                            : One or more 'winrm' blocks.
#   additional_unattend_config (block)       : An 'additional_unattend_config' block.
#
# additional_unattend_config block structure:
#   pass (string)                             : (REQUIRED) Specifies the name of the pass that the content applies to. The only allowable value is 'oobeSystem'.
#   component (string)                        : (REQUIRED) Specifies the name of the component to configure with the added content. The only allowable value is 'Microsoft-Windows-Shell-Setup'.
#   setting_name (string)                     : (REQUIRED) Specifies the name of the setting to which the content applies. Possible values are: 'FirstLogonCommands' and 'AutoLogon'.
#   content (string)                          : (REQUIRED) Specifies the base-64 encoded XML formatted content that is added to the unattend.xml file for the specified path and component.
#
# winrm block structure   :
#   protocol (string)       : (REQUIRED) Specifies the protocol of listener. Possible values are 'HTTP' or 'HTTPS'.
#   certificate_url (string): The ID of the Key Vault Secret which contains the encrypted Certificate which should be installed on the Virtual Machine. This certificate must also be specified in the 'vault_certificates' block within the 'os_profile_secrets' block.


variable "availability_set_id" {
  description = "The ID of the Availability Set in which the Virtual Machine should exist. Changing this forces a new resource to be created."
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
#   enabled (bool)                  : (REQUIRED) Should Boot Diagnostics be enabled for this Virtual Machine?
#   storage_uri (string)            : (REQUIRED) The Storage Account's Blob Endpoint which should hold the virtual machine's diagnostic files.


variable "additional_capabilities" {
  description = "An 'additional_capabilities' block."
  type        = map(any)
  default     = null
}
#
# additional_capabilities block structure:
#   ultra_ssd_enabled (bool)               : (REQUIRED) Should Ultra SSD disk be enabled for this Virtual Machine? Changing this forces a new resource to be created.


variable "delete_os_disk_on_termination" {
  description = "Should the OS Disk (either the Managed Disk / VHD Blob) be deleted when the Virtual Machine is destroyed? Defaults to 'false'."
  type        = bool
  default     = false
}
variable "delete_data_disks_on_termination" {
  description = "Should the Data Disks (either the Managed Disks / VHD Blobs) be deleted when the Virtual Machine is destroyed? Defaults to 'false'."
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
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Virtual Machine. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both).
#   identity_ids (string)   : Specifies a list of User Assigned Managed Identity IDs to be assigned to this Virtual Machine.


variable "license_type" {
  description = "Specifies the BYOL Type for this Virtual Machine. This is only applicable to Windows Virtual Machines. Possible values are 'Windows_Client' and 'Windows_Server'."
  type        = string
  default     = null
}
variable "os_profile" {
  description = "An 'os_profile' block. Required when 'create_option' in the 'storage_os_disk' block is set to 'FromImage'."
  type        = map(any)
  default     = null
}
#
# os_profile block structure:
#   computer_name (string)    : (REQUIRED) Specifies the name of the Virtual Machine. Changing this forces a new resource to be created.
#   admin_username (string)   : (REQUIRED) Specifies the name of the local administrator account.
#   admin_password (string)   : (Optional for Windows, Optional for Linux) The password associated with the local administrator account.
#   custom_data (string)      : Specifies custom data to supply to the machine. On Linux-based systems, this can be used as a cloud-init script. On other systems, this will be copied as a file on disk. Internally, Terraform will base64 encode this value before sending it to the API. The maximum length of the binary array is 65535 bytes. Changing this forces a new resource to be created.


variable "os_profile_secrets" {
  description = "One or more 'os_profile_secrets' blocks."
  type        = map(map(any))
  default     = null
}
#
# os_profile_secrets block structure:
#   source_vault_id (string)          : (REQUIRED) Specifies the ID of the Key Vault to use.
#   vault_certificates (block)        : One or more 'vault_certificates' blocks.
#
# vault_certificates block structure:
#   certificate_url (string)          : (REQUIRED) The ID of the Key Vault Secret. Stored secret is the Base64 encoding of a JSON Object that which is encoded in UTF-8 of which the contents need to be:
#   certificate_store (string)        : (Required, on windows machines) Specifies the certificate store on the Virtual Machine where the certificate should be added to, such as 'My'.


variable "plan" {
  description = "A 'plan' block."
  type        = map(any)
  default     = null
}
#
# plan block structure:
#   name (string)       : (REQUIRED) Specifies the name of the image from the marketplace.
#   publisher (string)  : (REQUIRED) Specifies the publisher of the image.
#   product (string)    : (REQUIRED) Specifies the product of the image from the marketplace.


variable "primary_network_interface_id" {
  description = "The ID of the Network Interface (which must be attached to the Virtual Machine) which should be the Primary Network Interface for this Virtual Machine."
  type        = string
  default     = null
}
variable "proximity_placement_group_id" {
  description = "The ID of the Proximity Placement Group to which this Virtual Machine should be assigned. Changing this forces a new resource to be created"
  type        = string
  default     = null
}
variable "storage_data_disk" {
  description = "One or more 'storage_data_disk' blocks."
  type        = map(map(any))
  default     = null
}
#
# storage_data_disk block structure:
#   name (string)                    : (REQUIRED) The name of the Data Disk.
#   caching (string)                 : Specifies the caching requirements for the Data Disk. Possible values include 'None', 'ReadOnly' and 'ReadWrite'.
#   create_option (string)           : (REQUIRED) Specifies how the data disk should be created. Possible values are 'Attach', 'FromImage' and 'Empty'.
#   disk_size_gb (int)               : Specifies the size of the data disk in gigabytes.
#   lun (int)                        : (REQUIRED) Specifies the logical unit number of the data disk. This needs to be unique within all the Data Disks on the Virtual Machine.
#   write_accelerator_enabled (bool) : Specifies if Write Accelerator is enabled on the disk. This can only be enabled on 'Premium_LRS' managed disks with no caching and [M-Series VMs](https://docs.microsoft.com/azure/virtual-machines/workloads/sap/how-to-enable-write-accelerator). Defaults to 'false'.
#   managed_disk_type (string)       : Specifies the type of managed disk to create. Possible values are either 'Standard_LRS', 'StandardSSD_LRS', 'Premium_LRS' or 'UltraSSD_LRS'.
#   managed_disk_id (string)         : Specifies the ID of an Existing Managed Disk which should be attached to this Virtual Machine. When this field is set 'create_option' must be set to 'Attach'.
#   vhd_uri (string)                 : Specifies the URI of the VHD file backing this Unmanaged Data Disk.


variable "storage_image_reference" {
  description = "A 'storage_image_reference' block. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# storage_image_reference block structure:
#   publisher (string)                     : Specifies the publisher of the image used to create the virtual machine. Changing this forces a new resource to be created.
#   offer (string)                         : Specifies the offer of the image used to create the virtual machine. Changing this forces a new resource to be created.
#   sku (string)                           : Specifies the SKU of the image used to create the virtual machine. Changing this forces a new resource to be created.
#   version (string)                       : Specifies the version of the image used to create the virtual machine. Changing this forces a new resource to be created.


variable "tags" {
  description = "A mapping of tags to assign to the Virtual Machine."
  type        = map(any)
  default     = null
}
variable "zones" {
  description = "A list of a single item of the Availability Zone which the Virtual Machine should be allocated in. Changing this forces a new resource to be created."
  type        = list(any)
  default     = []
}
