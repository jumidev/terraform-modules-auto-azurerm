# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the replication for the replicated VM. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created."
  type        = string

}
variable "recovery_vault_name" {
  description = "(REQUIRED) The name of the vault that should be updated. Changing this forces a new resource to be created."
  type        = string

}
variable "recovery_replication_policy_id" {
  description = "(REQUIRED) Id of the policy to use for this replicated vm. Changing this forces a new resource to be created."
  type        = string

}
variable "source_recovery_fabric_name" {
  description = "(REQUIRED) Name of fabric that should contain this replication. Changing this forces a new resource to be created."
  type        = string

}
variable "source_vm_id" {
  description = "(REQUIRED) Id of the VM to replicate Changing this forces a new resource to be created."
  type        = string

}
variable "source_recovery_protection_container_name" {
  description = "(REQUIRED) Name of the protection container to use. Changing this forces a new resource to be created."
  type        = string

}
variable "target_resource_group_id" {
  description = "(REQUIRED) Id of resource group where the VM should be created when a failover is done. Changing this forces a new resource to be created."
  type        = string

}
variable "target_recovery_fabric_id" {
  description = "(REQUIRED) Id of fabric where the VM replication should be handled when a failover is done. Changing this forces a new resource to be created."
  type        = string

}
variable "target_recovery_protection_container_id" {
  description = "(REQUIRED) Id of protection container where the VM replication should be created when a failover is done. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "target_availability_set_id" {
  description = "Id of availability set that the new VM should belong to when a failover is done."
  type        = string
  default     = null
}
variable "target_zone" {
  description = "Specifies the Availability Zone where the Failover VM should exist. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "managed_disk" {
  description = "One or more 'managed_disk' block. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# managed_disk block structure          :
#   disk_id (string)                      : (REQUIRED) Id of disk that should be replicated. Changing this forces a new resource to be created.
#   staging_storage_account_id (string)   : (REQUIRED) Storage account that should be used for caching. Changing this forces a new resource to be created.
#   target_resource_group_id (string)     : (REQUIRED) Resource group disk should belong to when a failover is done. Changing this forces a new resource to be created.
#   target_disk_type (string)             : (REQUIRED) What type should the disk be when a failover is done. Possible values are 'Standard_LRS', 'Premium_LRS', 'StandardSSD_LRS' and 'UltraSSD_LRS'. Changing this forces a new resource to be created.
#   target_replica_disk_type (string)     : (REQUIRED) What type should the disk be that holds the replication data. Possible values are 'Standard_LRS', 'Premium_LRS', 'StandardSSD_LRS' and 'UltraSSD_LRS'. Changing this forces a new resource to be created.
#   target_disk_encryption_set_id (string): The Disk Encryption Set that the Managed Disk will be associated with. Changing this forces a new resource to be created.
#   target_disk_encryption (block)        : A 'target_disk_encryption' block.
#
# disk_encryption_key block structure:
#   secret_url (string)                : (REQUIRED) The URL to the Key Vault Secret used as the Disk Encryption Key that the Managed Disk will be associated with. This can be found as 'id' on the 'azurerm_key_vault_secret' resource. Changing this forces a new resource to be created.
#   vault_id (string)                  : (REQUIRED) The ID of the Key Vault. This can be found as 'id' on the 'azurerm_key_vault' resource. Changing this forces a new resource to be created.
#
# target_disk_encryption block structure:
#   disk_encryption_key (block)           : (REQUIRED) A 'disk_encryption_key' block.
#   key_encryption_key (block)            : A 'key_encryption_key' block.
#
# key_encryption_key block structure:
#   key_url (string)                  : (REQUIRED) The URL to the Key Vault Key used as the Key Encryption Key that the Managed Disk will be associated with. This can be found as 'id' on the 'azurerm_key_vault_key' resource. Changing this forces a new resource to be created.
#   vault_id (string)                 : (REQUIRED) The ID of the Key Vault. This can be found as 'id' on the 'azurerm_key_vault' resource. Changing this forces a new resource to be created.


variable "unmanaged_disk" {
  description = "One or more 'unmanaged_disk' block. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# unmanaged_disk block structure     :
#   disk_uri (string)                  : (REQUIRED) Id of disk that should be replicated. Changing this forces a new resource to be created.
#   staging_storage_account_id (string): (REQUIRED) Storage account that should be used for caching. Changing this forces a new resource to be created.
#   target_storage_account_id (string) : (REQUIRED) Storage account disk should belong to when a failover is done. Changing this forces a new resource to be created.


variable "target_edge_zone" {
  description = "Specifies the Edge Zone within the Azure Region where this Managed Kubernetes Cluster should exist. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "target_proximity_placement_group_id" {
  description = "Id of Proximity Placement Group the new VM should belong to when a failover is done."
  type        = string
  default     = null
}
variable "target_boot_diagnostic_storage_account_id" {
  description = "Id of the storage account which the new VM should used for boot diagnostic when a failover is done."
  type        = string
  default     = null
}
variable "target_capacity_reservation_group_id" {
  description = "Id of the Capacity reservation group where the new VM should belong to when a failover is done."
  type        = string
  default     = null
}
variable "target_virtual_machine_scale_set_id" {
  description = "Id of the Virtual Machine Scale Set which the new Vm should belong to when a failover is done."
  type        = string
  default     = null
}
variable "target_network_id" {
  description = "Network to use when a failover is done (recommended to set if any network_interface is configured for failover)."
  type        = string
  default     = null
}
variable "test_network_id" {
  description = "Network to use when a test failover is done."
  type        = string
  default     = null
}
variable "network_interface" {
  description = "One or more 'network_interface' block."
  type        = map(any)
  default     = null
}
#
# network_interface block structure          :
#   source_network_interface_id (string)       : (Required if the network_interface block is specified) Id source network interface.
#   target_static_ip (string)                  : Static IP to assign when a failover is done.
#   target_subnet_name (string)                : Name of the subnet to to use when a failover is done.
#   recovery_public_ip_address_id (string)     : Id of the public IP object to use when a failover is done.
#   failover_test_static_ip (string)           : Static IP to assign when a test failover is done.
#   failover_test_subnet_name (string)         : Name of the subnet to to use when a test failover is done.
#   failover_test_public_ip_address_id (string): Id of the public IP object to use when a test failover is done.


variable "multi_vm_group_name" {
  description = "Name of group in which all machines will replicate together and have shared crash consistent and app-consistent recovery points when failed over."
  type        = string
  default     = null
}
