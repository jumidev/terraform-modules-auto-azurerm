# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the virtual machine scale set resource. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the virtual machine scale set. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "network_profile" {
  description = "(REQUIRED) A collection of 'network_profile' blocks."
  type        = map(map(any))
}
#
# network_profile block structure   :
#   name (string)                     : (REQUIRED) Specifies the name of the network interface configuration.
#   primary (string)                  : (REQUIRED) Indicates whether network interfaces created from the network interface configuration will be the primary NIC of the VM.
#   ip_configuration (block)          : (REQUIRED) An 'ip_configuration' block.
#   accelerated_networking (string)   : Specifies whether to enable accelerated networking or not.
#   dns_settings (block)              : A 'dns_settings' block.
#   ip_forwarding (bool)              : Whether IP forwarding is enabled on this NIC. Defaults to 'false'.
#   network_security_group_id (string): Specifies the identifier for the network security group.
#
# ip_configuration block structure                     :
#   name (string)                                        : (REQUIRED) Specifies name of the IP configuration.
#   subnet_id (string)                                   : (REQUIRED) Specifies the identifier of the subnet.
#   application_gateway_backend_address_pool_ids (string): Specifies an array of references to backend address pools of application gateways. A scale set can reference backend address pools of multiple application gateways. Multiple scale sets can use the same application gateway.
#   load_balancer_backend_address_pool_ids (string)      : Specifies an array of references to backend address pools of load balancers. A scale set can reference backend address pools of one public and one internal load balancer. Multiple scale sets cannot use the same load balancer.
#   load_balancer_inbound_nat_rules_ids (string)         : Specifies an array of references to inbound NAT pools for load balancers. A scale set can reference inbound NAT pools of one public and one internal load balancer. Multiple scale sets cannot use the same load balancer.
#   primary (string)                                     : (REQUIRED) Specifies if this ip_configuration is the primary one.
#   application_security_group_ids (string)              : Specifies up to '20' application security group IDs.
#   public_ip_address_configuration (string)             : Describes a virtual machines scale set IP Configuration's PublicIPAddress configuration. The 'public_ip_address_configuration' block is documented below.
#
# dns_settings block structure:
#   dns_servers (string)        : (REQUIRED) Specifies an array of DNS servers.


variable "os_profile" {
  description = "(REQUIRED) A 'os_profile' block."
  type        = map(any)
}
#
# os_profile block structure   :
#   computer_name_prefix (string): (REQUIRED) Specifies the computer name prefix for all of the virtual machines in the scale set. Computer name prefixes must be 1 to 9 characters long for windows images and 1 - 58 for Linux. Changing this forces a new resource to be created.
#   admin_username (string)      : (REQUIRED) Specifies the administrator account name to use for all the instances of virtual machines in the scale set.
#   admin_password (string)      : Specifies the administrator password to use for all the instances of virtual machines in a scale set.
#   custom_data (string)         : Specifies custom data to supply to the machine. On Linux-based systems, this can be used as a cloud-init script. On other systems, this will be copied as a file on disk. Internally, Terraform will base64 encode this value before sending it to the API. The maximum length of the binary array is 65535 bytes.


variable "sku" {
  description = "(REQUIRED) A 'sku' block."
  type        = map(any)
}
#
# sku block structure:
#   name (string)      : (REQUIRED) Specifies the size of virtual machines in a scale set.
#   tier (string)      : Specifies the tier of virtual machines in a scale set. Possible values, 'standard' or 'basic'.
#   capacity (string)  : (REQUIRED) Specifies the number of virtual machines in the scale set.


variable "storage_profile_os_disk" {
  description = "(REQUIRED) A 'storage_profile_os_disk' block."
  type        = map(any)
}
#
# storage_profile_os_disk block structure:
#   name (string)                          : Specifies the disk name. Must be specified when using unmanaged disk ('managed_disk_type' property not set).
#   vhd_containers (string)                : Specifies the VHD URI. Cannot be used when 'image' or 'managed_disk_type' is specified.
#   managed_disk_type (string)             : Specifies the type of managed disk to create. Value you must be either 'Standard_LRS', 'StandardSSD_LRS' or 'Premium_LRS'. Cannot be used when 'vhd_containers' or 'image' is specified.
#   create_option (string)                 : (REQUIRED) Specifies how the virtual machine should be created. The only possible option is 'FromImage'.
#   caching (string)                       : Specifies the caching requirements. Possible values include: 'None' (default), 'ReadOnly', 'ReadWrite'.
#   image (string)                         : Specifies the blob URI for user image. A virtual machine scale set creates an os disk in the same container as the user image. Updating the osDisk image causes the existing disk to be deleted and a new one created with the new image. If the VM scale set is in Manual upgrade mode then the virtual machines are not updated until they have manualUpgrade applied to them. When setting this field 'os_type' needs to be specified. Cannot be used when 'vhd_containers', 'managed_disk_type' or 'storage_profile_image_reference' are specified.
#   os_type (string)                       : Specifies the operating system Type, valid values are windows, Linux.


variable "upgrade_policy_mode" {
  description = "(REQUIRED) Specifies the mode of an upgrade to virtual machines in the scale set. Possible values, 'Rolling', 'Manual', or 'Automatic'. When choosing 'Rolling', you will need to set a health probe."
  type        = string

}

# OPTIONAL VARIABLES

variable "os_profile_windows_config" {
  description = "A 'os_profile_windows_config' block."
  type        = map(any)
  default     = null
}
#
# os_profile_windows_config block structure:
#   provision_vm_agent (string)              : Indicates whether virtual machine agent should be provisioned on the virtual machines in the scale set.
#   enable_automatic_upgrades (bool)         : Indicates whether virtual machines in the scale set are enabled for automatic updates.
#   winrm (block)                            : A collection of 'winrm' blocks.
#   additional_unattend_config (block)       : An 'additional_unattend_config' block.
#
# winrm block structure   :
#   protocol (string)       : (REQUIRED) Specifies the protocol of listener
#   certificate_url (string): Specifies URL of the certificate with which new Virtual Machines is provisioned.
#
# additional_unattend_config block structure:
#   pass (string)                             : (REQUIRED) Specifies the name of the pass that the content applies to. The only allowable value is 'oobeSystem'.
#   component (string)                        : (REQUIRED) Specifies the name of the component to configure with the added content. The only allowable value is 'Microsoft-Windows-Shell-Setup'.
#   setting_name (string)                     : (REQUIRED) Specifies the name of the setting to which the content applies. Possible values are: 'FirstLogonCommands' and 'AutoLogon'.
#   content (string)                          : (REQUIRED) Specifies the base-64 encoded XML formatted content that is added to the unattend.xml file for the specified path and component.


variable "os_profile_linux_config" {
  description = "A 'os_profile_linux_config' block."
  type        = map(any)
  default     = null
}
#
# os_profile_linux_config block structure:
#   disable_password_authentication (bool) : Specifies whether password authentication should be disabled. Defaults to 'false'. Changing this forces a new resource to be created.
#   ssh_keys (block)                       : One or more 'ssh_keys' blocks.
#
# ssh_keys block structure:
#   key_data (string)       : The Public SSH Key which should be written to the 'path' defined above.
#   path (string)           : (REQUIRED) The path of the destination file on the virtual machine


variable "proximity_placement_group_id" {
  description = "The ID of the Proximity Placement Group to which this Virtual Machine should be assigned. Changing this forces a new resource to be created"
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
#   type (string)           : (REQUIRED) Specifies the identity type to be assigned to the scale set. Allowable values are 'SystemAssigned' and 'UserAssigned'. For the 'SystemAssigned' identity the scale set's Service Principal ID (SPN) can be retrieved after the scale set has been created. See [documentation](https://docs.microsoft.com/azure/active-directory/managed-service-identity/overview) for more information. Possible values are 'SystemAssigned', 'UserAssigned' and 'SystemAssigned, UserAssigned'.
#   identity_ids (string)   : Specifies a list of user managed identity ids to be assigned to the VMSS. Required if 'type' is 'UserAssigned'.


variable "automatic_os_upgrade" {
  description = "Automatic OS patches can be applied by Azure to your scaleset. This is particularly useful when 'upgrade_policy_mode' is set to 'Rolling'. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "boot_diagnostics" {
  description = "A 'boot_diagnostics' block as referenced below."
  type        = map(any)
  default     = null
}
#
# boot_diagnostics block structure:
#   enabled (bool)                  : Whether to enable boot diagnostics for the virtual machine. Defaults to 'true'.
#   storage_uri (string)            : (REQUIRED) Blob endpoint for the storage account to hold the virtual machine's diagnostic files. This must be the root of a storage account, and not a storage container.


