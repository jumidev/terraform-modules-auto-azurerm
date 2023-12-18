# azurerm_managed_disk

Manages a managed disk.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "compute/managed_disk"   
}

inputs = {
   name = "Specifies the name of the Managed Disk"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   storage_account_type = "The type of storage to use for the managed disk"   
   create_option = "The method to use when creating the managed disk"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```
## Optional associated resource


### `virtual_machine_data_disk_attachment` 

If set, makes a **azurerm_virtual_machine_data_disk_attachment** - With the following options:

| attribute | type | required? | default |
| --------- | ---- | --------- | ------- |
| `virtual_machine_id` | string | True | null |
| `lun` | number | True | 3 |
| `caching` | string | True | "ReadOnly" |
| `create_option` | string | False | "Attach" |
| `write_accelerator_enabled` | bool | False | false |


Example component snippet:

```hcl
inputs = {
   virtual_machine_data_disk_attachment = {
      lun = 3      
      caching = "ReadOnly"      
      create_option = "Attach"      
      write_accelerator_enabled = false      
   }
   
}

tfstate_inputs = {
   virtual_machine_data_disk_attachment.virtual_machine_id = "path/to/virtual_machine_component:id"   
}

```


## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  Specifies the name of the Managed Disk. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the Resource Group where the Managed Disk should exist. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  Specified the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **storage_account_type** | string |  `Standard_LRS`, `StandardSSD_ZRS`, `Premium_LRS`, `PremiumV2_LRS`, `Premium_ZRS`, `StandardSSD_LRS`, `UltraSSD_LRS`  |  The type of storage to use for the managed disk. Possible values are `Standard_LRS`, `StandardSSD_ZRS`, `Premium_LRS`, `PremiumV2_LRS`, `Premium_ZRS`, `StandardSSD_LRS` or `UltraSSD_LRS`. | 
| **create_option** | string |  `Import`, `source_uri`, `ImportSecure`, `Empty`, `Copy`, `source_resource_id`, `FromImage`, `image_reference_id`, `Restore`, `Upload`, `upload_size_bytes`  |  The method to use when creating the managed disk. Changing this forces a new resource to be created. Possible values include: * `Import` - Import a VHD file in to the managed disk (VHD specified with `source_uri`). * `ImportSecure` - Securely import a VHD file in to the managed disk (VHD specified with `source_uri`). * `Empty` - Create an empty managed disk. * `Copy` - Copy an existing managed disk or snapshot (specified with `source_resource_id`). * `FromImage` - Copy a Platform Image (specified with `image_reference_id`) * `Restore` - Set by Azure Backup or Site Recovery on a restored disk (specified with `source_resource_id`). * `Upload` - Upload a VHD disk with the help of SAS URL (to be used with `upload_size_bytes`). | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **disk_encryption_set_id** | string |  -  |  -  |  The ID of a Disk Encryption Set which should be used to encrypt this Managed Disk. Conflicts with `secure_vm_disk_encryption_set_id`. | 
| **disk_iops_read_write** | number |  -  |  -  |  The number of IOPS allowed for this disk; only settable for UltraSSD disks and PremiumV2 disks. One operation can transfer between 4k and 256k bytes. | 
| **disk_mbps_read_write** | number |  -  |  -  |  The bandwidth allowed for this disk; only settable for UltraSSD disks and PremiumV2 disks. MBps means millions of bytes per second. | 
| **disk_iops_read_only** | number |  -  |  -  |  The number of IOPS allowed across all VMs mounting the shared disk as read-only; only settable for UltraSSD disks and PremiumV2 disks with shared disk enabled. One operation can transfer between 4k and 256k bytes. | 
| **disk_mbps_read_only** | number |  -  |  -  |  The bandwidth allowed across all VMs mounting the shared disk as read-only; only settable for UltraSSD disks and PremiumV2 disks with shared disk enabled. MBps means millions of bytes per second. | 
| **upload_size_bytes** | string |  -  |  `create_option`, `Upload`  |  Specifies the size of the managed disk to create in bytes. Required when `create_option` is `Upload`. The value must be equal to the source disk to be copied in bytes. Source disk size could be calculated with `ls -l` or `wc -c`. More information can be found at [Copy a managed disk](https://learn.microsoft.com/en-us/azure/virtual-machines/linux/disks-upload-vhd-to-managed-disk-cli#copy-a-managed-disk). Changing this forces a new resource to be created. | 
| **disk_size_gb** | string |  -  |  `create_option`, `Copy`, `FromImage`  |  (Optional, Required for a new managed disk) Specifies the size of the managed disk to create in gigabytes. If `create_option` is `Copy` or `FromImage`, then the value must be equal to or greater than the source's size. The size can only be increased. | 
| **edge_zone** | string |  -  |  -  |  Specifies the Edge Zone within the Azure Region where this Managed Disk should exist. Changing this forces a new Managed Disk to be created. | 
| **encryption_settings** | [block](#encryption_settings-block-structure) |  -  |  -  |  A `encryption_settings` block. | 
| **hyper_v_generation** | string |  -  |  `V1`, `V2`  |  The HyperV Generation of the Disk when the source of an `Import` or `Copy` operation targets a source that contains an operating system. Possible values are `V1` and `V2`. For `ImportSecure` it must be set to `V2`. Changing this forces a new resource to be created. | 
| **image_reference_id** | string |  -  |  -  |  ID of an existing platform/marketplace disk image to copy when `create_option` is `FromImage`. This field cannot be specified if gallery_image_reference_id is specified. Changing this forces a new resource to be created. | 
| **gallery_image_reference_id** | string |  -  |  -  |  ID of a Gallery Image Version to copy when `create_option` is `FromImage`. This field cannot be specified if image_reference_id is specified. Changing this forces a new resource to be created. | 
| **logical_sector_size** | string |  `4096`  |  `512`, `4096`  |  Logical Sector Size. Possible values are: `512` and `4096`. Defaults to `4096`. Changing this forces a new resource to be created. | 
| **optimized_frequent_attach_enabled** | bool |  `False`  |  -  |  Specifies whether this Managed Disk should be optimized for frequent disk attachments (where a disk is attached/detached more than 5 times in a day). Defaults to `false`. | 
| **performance_plus_enabled** | bool |  `False`  |  -  |  Specifies whether Performance Plus is enabled for this Managed Disk. Defaults to `false`. Changing this forces a new resource to be created. | 
| **os_type** | string |  -  |  `Linux`, `Windows`  |  Specify a value when the source of an `Import`, `ImportSecure` or `Copy` operation targets a source that contains an operating system. Valid values are `Linux` or `Windows`. | 
| **source_resource_id** | string |  -  |  -  |  The ID of an existing Managed Disk or Snapshot to copy when `create_option` is `Copy` or the recovery point to restore when `create_option` is `Restore`. Changing this forces a new resource to be created. | 
| **source_uri** | string |  -  |  -  |  URI to a valid VHD file to be used when `create_option` is `Import` or `ImportSecure`. Changing this forces a new resource to be created. | 
| **storage_account_id** | string |  -  |  -  |  The ID of the Storage Account where the `source_uri` is located. Required when `create_option` is set to `Import` or `ImportSecure`. Changing this forces a new resource to be created. | 
| **tier** | string |  -  |  -  |  The disk performance tier to use. Possible values are documented [here](https://docs.microsoft.com/azure/virtual-machines/disks-change-performance). This feature is currently supported only for premium SSDs. | 
| **max_shares** | string |  -  |  -  |  The maximum number of VMs that can attach to the disk at the same time. Value greater than one indicates a disk that can be mounted on multiple VMs at the same time. | 
| **trusted_launch_enabled** | bool |  -  |  -  |  Specifies if Trusted Launch is enabled for the Managed Disk. Changing this forces a new resource to be created. | 
| **security_type** | string |  -  |  `ConfidentialVM_VMGuestStateOnlyEncryptedWithPlatformKey`, `ConfidentialVM_DiskEncryptedWithPlatformKey`, `ConfidentialVM_DiskEncryptedWithCustomerKey`  |  Security Type of the Managed Disk when it is used for a Confidential VM. Possible values are `ConfidentialVM_VMGuestStateOnlyEncryptedWithPlatformKey`, `ConfidentialVM_DiskEncryptedWithPlatformKey` and `ConfidentialVM_DiskEncryptedWithCustomerKey`. Changing this forces a new resource to be created. | 
| **secure_vm_disk_encryption_set_id** | string |  -  |  -  |  The ID of the Disk Encryption Set which should be used to Encrypt this OS Disk when the Virtual Machine is a Confidential VM. Conflicts with `disk_encryption_set_id`. Changing this forces a new resource to be created. | 
| **on_demand_bursting_enabled** | bool |  -  |  -  |  Specifies if On-Demand Bursting is enabled for the Managed Disk. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 
| **zone** | string |  -  |  -  |  Specifies the Availability Zone in which this Managed Disk should be located. Changing this property forces a new resource to be created. | 
| **network_access_policy** | string |  -  |  `AllowAll`, `AllowPrivate`, `DenyAll`  |  Policy for accessing the disk via network. Allowed values are `AllowAll`, `AllowPrivate`, and `DenyAll`. | 
| **disk_access_id** | string |  -  |  -  |  The ID of the disk access resource for using private endpoints on disks. | 
| **public_network_access_enabled** | bool |  `True`  |  -  |  Whether it is allowed to access the disk via public network. Defaults to `true`. | 

### `encryption_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `disk_encryption_key` | [block](#disk_encryption_key-block-structure) | No | - | A 'disk_encryption_key' block. |
| `key_encryption_key` | [block](#key_encryption_key-block-structure) | No | - | A 'key_encryption_key' block. |

### `disk_encryption_key` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `secret_url` | string | Yes | - | The URL to the Key Vault Secret used as the Disk Encryption Key. This can be found as 'id' on the 'azurerm_key_vault_secret' resource. |
| `source_vault_id` | string | Yes | - | The ID of the source Key Vault. This can be found as 'id' on the 'azurerm_key_vault' resource. |

### `key_encryption_key` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `key_url` | string | Yes | - | The URL to the Key Vault Key used as the Key Encryption Key. This can be found as 'id' on the 'azurerm_key_vault_key' resource. |
| `source_vault_id` | string | Yes | - | The ID of the source Key Vault. This can be found as 'id' on the 'azurerm_key_vault' resource. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Managed Disk. | 

Additionally, all variables are provided as outputs.
