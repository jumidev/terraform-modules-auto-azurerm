# REQUIRED VARIABLES

variable "account_name" {
  description = "(REQUIRED) Name of the account where the application volume group belong to. Changing this forces a new Application Volume Group to be created and data will be lost."
  type        = string

}
variable "application_identifier" {
  description = "(REQUIRED) The SAP System ID, maximum 3 characters, e.g. 'SH9'. Changing this forces a new Application Volume Group to be created and data will be lost."
  type        = string

}
variable "group_description" {
  description = "(REQUIRED) Volume group description. Changing this forces a new Application Volume Group to be created and data will be lost."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Application Volume Group should exist. Changing this forces a new Application Volume Group to be created and data will be lost."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Application Volume Group. Changing this forces a new Application Volume Group to be created and data will be lost."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Application Volume Group should exist. Changing this forces a new Application Volume Group to be created and data will be lost."
  type        = string

}
variable "volume" {
  description = "(REQUIRED) One or more 'volume' blocks."
  type        = map(map(any))
}
#
# volume block structure                 :
#   capacity_pool_id (string)              : (REQUIRED) The ID of the Capacity Pool. Changing this forces a new Application Volume Group to be created and data will be lost.
#   name (string)                          : (REQUIRED) The name which should be used for this volume. Changing this forces a new Application Volume Group to be created and data will be lost.
#   protocols (string)                     : (REQUIRED) The target volume protocol expressed as a list. Changing this forces a new Application Volume Group to be created and data will be lost. Supported values for Application Volume Group include 'NFSv3' or 'NFSv4.1', multi-protocol is not supported and there are certain rules on which protocol is supporteed per volume spec, please check [Configure application volume groups for the SAP HANA REST API](https://learn.microsoft.com/en-us/azure/azure-netapp-files/configure-application-volume-group-sap-hana-api) document for details.
#   proximity_placement_group_id (string)  : The ID of the proximity placement group. Changing this forces a new Application Volume Group to be created and data will be lost. For SAP-HANA application, it is required to have PPG enabled so Azure NetApp Files can pin the volumes next to your compute resources, please check [Requirements and considerations for application volume group for SAP HANA](https://learn.microsoft.com/en-us/azure/azure-netapp-files/application-volume-group-considerations) for details and other requirements.
#   security_style (string)                : (REQUIRED) Volume security style. Possible values are 'ntfs' and 'unix'. Changing this forces a new Application Volume Group to be created and data will be lost.
#   service_level (string)                 : (REQUIRED) Volume security style. Possible values are 'Premium', 'Standard' and 'Ultra'. Changing this forces a new Application Volume Group to be created and data will be lost.
#   snapshot_directory_visible (bool)      : (REQUIRED) Specifies whether the .snapshot (NFS clients) path of a volume is visible. Changing this forces a new Application Volume Group to be created and data will be lost.
#   storage_quota_in_gb (number)           : (REQUIRED) The maximum Storage Quota allowed for a file system in Gigabytes.
#   subnet_id (string)                     : (REQUIRED) The ID of the Subnet the NetApp Volume resides in, which must have the 'Microsoft.NetApp/volumes' delegation. Changing this forces a new Application Volume Group to be created and data will be lost.
#   throughput_in_mibps (string)           : (REQUIRED) Throughput of this volume in Mibps.
#   volume_path (string)                   : (REQUIRED) A unique file path for the volume. Changing this forces a new Application Volume Group to be created and data will be lost.
#   volume_spec_name (string)              : (REQUIRED) Volume specification name. Possible values are 'data', 'log', 'shared', 'data-backup' and 'log-backup'. Changing this forces a new Application Volume Group to be created and data will be lost.
#   tags (map)                             : A mapping of tags which should be assigned to the Application Volume Group.
#   export_policy_rule (block)             : (REQUIRED) One or more 'export_policy_rule' blocks.
#   data_protection_replication (block)    : A 'data_protection_replication' block. Changing this forces a new Application Volume Group to be created and data will be lost.
#   data_protection_snapshot_policy (block): A 'data_protection_snapshot_policy' block.
#
# data_protection_replication block structure:
#   remote_volume_location (string)            : (REQUIRED) Location of the primary volume.
#   remote_volume_resource_id (string)         : (REQUIRED) Resource ID of the primary volume.
#   replication_frequency (string)             : (REQUIRED) eplication frequency. Possible values are '10minutes', 'daily' and 'hourly'.
#   endpoint_type (string)                     : The endpoint type. Possible values are 'dst' and 'src'. Defaults to 'dst'.
#
# export_policy_rule block structure:
#   allowed_clients (string)          : (REQUIRED) A comma-sperated list of allowed client IPv4 addresses.
#   nfsv3_enabled (bool)              : (REQUIRED) Enables NFSv3. Please note that this cannot be enabled if volume has NFSv4.1 as its protocol.
#   nfsv41_enabled (bool)             : (REQUIRED) Enables NFSv4.1. Please note that this cannot be enabled if volume has NFSv3 as its protocol.
#   root_access_enabled (bool)        : Is root access permitted to this volume? Defaults to 'true'.
#   rule_index (number)               : (REQUIRED) The index number of the rule, must start at 1 and maximum 5.
#   unix_read_only (string)           : Is the file system on unix read only? Defaults to 'false.
#   unix_read_write (bool)            : Is the file system on unix read and write? Defaults to 'true'.
#
# data_protection_snapshot_policy block structure:
#   snapshot_policy_id (string)                    : (REQUIRED) Resource ID of the snapshot policy to apply to the volume.


