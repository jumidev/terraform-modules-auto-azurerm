# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the NetApp Volume. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group where the NetApp Volume should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "account_name" {
  description = "(REQUIRED) The name of the NetApp account in which the NetApp Pool should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "volume_path" {
  description = "(REQUIRED) A unique file path for the volume. Used when creating mount targets. Changing this forces a new resource to be created."
  type        = string

}
variable "pool_name" {
  description = "(REQUIRED) The name of the NetApp pool in which the NetApp Volume should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "service_level" {
  description = "(REQUIRED) The target performance of the file system. Valid values include 'Premium', 'Standard', or 'Ultra'. Changing this forces a new resource to be created."
  type        = string

}
variable "subnet_id" {
  description = "(REQUIRED) The ID of the Subnet the NetApp Volume resides in, which must have the 'Microsoft.NetApp/volumes' delegation. Changing this forces a new resource to be created."
  type        = string

}
variable "storage_quota_in_gb" {
  description = "(REQUIRED) The maximum Storage Quota allowed for a file system in Gigabytes."
  type        = number

}

# OPTIONAL VARIABLES

variable "zone" {
  description = "Specifies the Availability Zone in which the Volume should be located. Possible values are '1', '2' and '3'. Changing this forces a new resource to be created. This feature is currently in preview, for more information on how to enable it, please refer to [Manage availability zone volume placement for Azure NetApp Files](https://learn.microsoft.com/en-us/azure/azure-netapp-files/manage-availability-zone-volume-placement#register-the-feature)."
  type        = string
  default     = null
}
variable "azure_vmware_data_store_enabled" {
  description = "Is the NetApp Volume enabled for Azure VMware Solution (AVS) datastore purpose. Defaults to 'false'. Changing this forces a new resource to be created."
  type        = bool
  default     = false
}
variable "protocols" {
  description = "The target volume protocol expressed as a list. Supported single value include 'CIFS', 'NFSv3', or 'NFSv4.1'. If argument is not defined it will default to 'NFSv3'. Changing this forces a new resource to be created and data will be lost. Dual protocol scenario is supported for CIFS and NFSv3, for more information, please refer to [Create a dual-protocol volume for Azure NetApp Files](https://docs.microsoft.com/azure/azure-netapp-files/create-volumes-dual-protocol) document."
  type        = string
  default     = "NFSv3"
}
variable "security_style" {
  description = "Volume security style, accepted values are 'unix' or 'ntfs'. If not provided, single-protocol volume is created defaulting to 'unix' if it is 'NFSv3' or 'NFSv4.1' volume, if 'CIFS', it will default to 'ntfs'. In a dual-protocol volume, if not provided, its value will be 'ntfs'. Changing this forces a new resource to be created."
  type        = string
  default     = "ntfs"
}
variable "network_features" {
  description = "Indicates which network feature to use, accepted values are 'Basic' or 'Standard', it defaults to 'Basic' if not defined. This is a feature in public preview and for more information about it and how to register, please refer to [Configure network features for an Azure NetApp Files volume](https://docs.microsoft.com/en-us/azure/azure-netapp-files/configure-network-features). Changing this forces a new resource to be created."
  type        = string
  default     = "Basic"
}
variable "snapshot_directory_visible" {
  description = "Specifies whether the .snapshot (NFS clients) or ~snapshot (SMB clients) path of a volume is visible, default value is true."
  type        = bool
  default     = null
}
variable "create_from_snapshot_resource_id" {
  description = "Creates volume from snapshot. Following properties must be the same as the original volume where the snapshot was taken from: 'protocols', 'subnet_id', 'location', 'service_level', 'resource_group_name', 'account_name' and 'pool_name'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "data_protection_replication" {
  description = "A 'data_protection_replication' block. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# data_protection_replication block structure:
#   endpoint_type (string)                     : The endpoint type, default value is 'dst' for destination.
#   remote_volume_location (string)            : (REQUIRED) Location of the primary volume. Changing this forces a new resource to be created.
#   remote_volume_resource_id (string)         : (REQUIRED) Resource ID of the primary volume.
#   replication_frequency (string)             : (REQUIRED) Replication frequency, supported values are '10minutes', 'hourly', 'daily', values are case sensitive.


variable "data_protection_snapshot_policy" {
  description = "A 'data_protection_snapshot_policy' block."
  type        = map(any)
  default     = null
}
#
# data_protection_snapshot_policy block structure:
#   snapshot_policy_id (string)                    : (REQUIRED) Resource ID of the snapshot policy to apply to the volume.


variable "export_policy_rule" {
  description = "One or more 'export_policy_rule' block defined below."
  type        = list(any)
  default     = []
}
variable "throughput_in_mibps" {
  description = "Throughput of this volume in Mibps."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}

# OPTIONAL VARIABLES

variable "vmware_netapp_volume_attachment" {
  type    = map(any)
  default = null
}
