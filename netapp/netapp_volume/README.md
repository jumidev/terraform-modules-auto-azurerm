# azurerm_netapp_volume

Manages a NetApp Volume.## NetApp Volume Usage```hclresource "azurerm_resource_group" "example" {name     = "example-resources"location = "West Europe"}resource "azurerm_virtual_network" "example" {name                = "example-virtualnetwork"location            = azurerm_resource_group.example.locationresource_group_name = azurerm_resource_group.example.nameaddress_space       = ["10.0.0.0/16"]}resource "azurerm_subnet" "example" {name                 = "example-subnet"resource_group_name  = azurerm_resource_group.example.namevirtual_network_name = azurerm_virtual_network.example.nameaddress_prefixes     = ["10.0.2.0/24"]delegation {name = "netapp"service_delegation {name    = "Microsoft.Netapp/volumes"actions = ["Microsoft.Network/networkinterfaces/*", "Microsoft.Network/virtualNetworks/subnets/join/action"]}}}resource "azurerm_netapp_account" "example" {name                = "example-netappaccount"location            = azurerm_resource_group.example.locationresource_group_name = azurerm_resource_group.example.name}resource "azurerm_netapp_pool" "example" {name                = "example-netapppool"location            = azurerm_resource_group.example.locationresource_group_name = azurerm_resource_group.example.nameaccount_name        = azurerm_netapp_account.example.nameservice_level       = "Premium"size_in_tb          = 4}resource "azurerm_netapp_volume" "example" {lifecycle {prevent_destroy = true}name                       = "example-netappvolume"location                   = azurerm_resource_group.example.locationzone                       = "1"resource_group_name        = azurerm_resource_group.example.nameaccount_name               = azurerm_netapp_account.example.namepool_name                  = azurerm_netapp_pool.example.namevolume_path                = "my-unique-file-path"service_level              = "Premium"subnet_id                  = azurerm_subnet.example.idnetwork_features           = "Basic"protocols                  = ["NFSv4.1"]security_style             = "unix"storage_quota_in_gb        = 100snapshot_directory_visible = false# When creating volume from a snapshotcreate_from_snapshot_resource_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1/volumes/volume1/snapshots/snapshot1"# Following section is only required if deploying a data protection volume (secondary)# to enable Cross-Region Replication featuredata_protection_replication {endpoint_type             = "dst"remote_volume_location    = azurerm_resource_group.example.locationremote_volume_resource_id = azurerm_netapp_volume.example.idreplication_frequency     = "10minutes"}# Enabling Snapshot Policy for the volume# Note: this cannot be used in conjunction with data_protection_replication when endpoint_type is dstdata_protection_snapshot_policy {snapshot_policy_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.NetApp/netAppAccounts/account1/snapshotPolicies/snapshotpolicy1"}}```

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "netapp/netapp_volume"   
}

inputs = {
   name = "The name of the NetApp Volume"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   account_name = "The name of the NetApp account in which the NetApp Pool should be created..."   
   volume_path = "A unique file path for the volume"   
   pool_name = "The name of the NetApp pool in which the NetApp Volume should be created..."   
   service_level = "The target performance of the file system"   
   # subnet_id → set in tfstate_inputs
   storage_quota_in_gb = "The maximum Storage Quota allowed for a file system in Gigabytes..."   
}

tfstate_inputs = {
   subnet_id = "path/to/subnet_component:id"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```
## Optional associated resource


### `vmware_netapp_volume_attachment` 

If set, makes a **azurerm_vmware_netapp_volume_attachment** - With the following options:

| attribute | type | required? | default |
| --------- | ---- | --------- | ------- |
| `name` | string | True | null |
| `vmware_cluster_id` | string | True | null |


Example component snippet:

```hcl
inputs = {
   vmware_netapp_volume_attachment = {
      name = "..."      
   }
   
}

tfstate_inputs = {
   vmware_netapp_volume_attachment.vmware_cluster_id = "path/to/vmware_cluster_id_component:id"   
}

```


## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  The name of the NetApp Volume. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the resource group where the NetApp Volume should be created. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **account_name** | string |  -  |  The name of the NetApp account in which the NetApp Pool should be created. Changing this forces a new resource to be created. | 
| **volume_path** | string |  -  |  A unique file path for the volume. Used when creating mount targets. Changing this forces a new resource to be created. | 
| **pool_name** | string |  -  |  The name of the NetApp pool in which the NetApp Volume should be created. Changing this forces a new resource to be created. | 
| **service_level** | string |  `Premium`, `Standard`, `Ultra`  |  The target performance of the file system. Valid values include `Premium`, `Standard`, or `Ultra`. Changing this forces a new resource to be created. | 
| **subnet_id** | string |  -  |  The ID of the Subnet the NetApp Volume resides in, which must have the `Microsoft.NetApp/volumes` delegation. Changing this forces a new resource to be created. | 
| **storage_quota_in_gb** | number |  -  |  The maximum Storage Quota allowed for a file system in Gigabytes. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **zone** | string |  -  |  `1`, `2`, `3`  |  Specifies the Availability Zone in which the Volume should be located. Possible values are `1`, `2` and `3`. Changing this forces a new resource to be created. This feature is currently in preview, for more information on how to enable it, please refer to [Manage availability zone volume placement for Azure NetApp Files](https://learn.microsoft.com/en-us/azure/azure-netapp-files/manage-availability-zone-volume-placement#register-the-feature). | 
| **azure_vmware_data_store_enabled** | bool |  `False`  |  -  |  Is the NetApp Volume enabled for Azure VMware Solution (AVS) datastore purpose. Defaults to `false`. Changing this forces a new resource to be created. | 
| **protocols** | string |  `NFSv3`  |  -  |  The target volume protocol expressed as a list. Supported single value include `CIFS`, `NFSv3`, or `NFSv4.1`. If argument is not defined it will default to `NFSv3`. Changing this forces a new resource to be created and data will be lost. Dual protocol scenario is supported for CIFS and NFSv3, for more information, please refer to [Create a dual-protocol volume for Azure NetApp Files](https://docs.microsoft.com/azure/azure-netapp-files/create-volumes-dual-protocol) document. | 
| **security_style** | string |  `ntfs`  |  -  |  Volume security style, accepted values are `unix` or `ntfs`. If not provided, single-protocol volume is created defaulting to `unix` if it is `NFSv3` or `NFSv4.1` volume, if `CIFS`, it will default to `ntfs`. In a dual-protocol volume, if not provided, its value will be `ntfs`. Changing this forces a new resource to be created. | 
| **network_features** | string |  `Basic`  |  -  |  Indicates which network feature to use, accepted values are `Basic` or `Standard`, it defaults to `Basic` if not defined. This is a feature in public preview and for more information about it and how to register, please refer to [Configure network features for an Azure NetApp Files volume](https://docs.microsoft.com/en-us/azure/azure-netapp-files/configure-network-features). Changing this forces a new resource to be created. | 
| **snapshot_directory_visible** | bool |  -  |  -  |  Specifies whether the .snapshot (NFS clients) or ~snapshot (SMB clients) path of a volume is visible, default value is true. | 
| **create_from_snapshot_resource_id** | string |  -  |  -  |  Creates volume from snapshot. Following properties must be the same as the original volume where the snapshot was taken from: `protocols`, `subnet_id`, `location`, `service_level`, `resource_group_name`, `account_name` and `pool_name`. Changing this forces a new resource to be created. | 
| **data_protection_replication** | [block](#data_protection_replication-block-structure) |  -  |  -  |  A `data_protection_replication` block. Changing this forces a new resource to be created. | 
| **data_protection_snapshot_policy** | [block](#data_protection_snapshot_policy-block-structure) |  -  |  -  |  A `data_protection_snapshot_policy` block. | 
| **export_policy_rule** | list |  -  |  -  |  One or more `export_policy_rule` block defined below. | 
| **throughput_in_mibps** | string |  -  |  -  |  Throughput of this volume in Mibps. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 

### `data_protection_replication` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `endpoint_type` | string | No | dst | The endpoint type, default value is 'dst' for destination. |
| `remote_volume_location` | string | Yes | - | Location of the primary volume. Changing this forces a new resource to be created. |
| `remote_volume_resource_id` | string | Yes | - | Resource ID of the primary volume. |
| `replication_frequency` | string | Yes | - | Replication frequency, supported values are '10minutes', 'hourly', 'daily', values are case sensitive. |

### `data_protection_snapshot_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `snapshot_policy_id` | string | Yes | - | Resource ID of the snapshot policy to apply to the volume. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the NetApp Volume. | 
| **mount_ip_addresses** | list | No  | A list of IPv4 Addresses which should be used to mount the volume. | 

Additionally, all variables are provided as outputs.
