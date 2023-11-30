# azurerm_managed_disk

Manages a managed disk.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "compute/managed_disk" 
}

inputs = {
   name = "name of managed_disk" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   storage_account_type = "storage_account_type of managed_disk" 
   create_option = "create_option of managed_disk" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.name** | string  -  |  Specifies the name of the Managed Disk. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  -  |  The name of the Resource Group where the Managed Disk should exist. Changing this forces a new resource to be created. | 
| **var.location** | string  -  |  Specified the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.storage_account_type** | string  `Standard_LRS`, `StandardSSD_ZRS`, `Premium_LRS`, `PremiumV2_LRS`, `Premium_ZRS`, `StandardSSD_LRS`, `UltraSSD_LRS`  |  The type of storage to use for the managed disk. Possible values are `Standard_LRS`, `StandardSSD_ZRS`, `Premium_LRS`, `PremiumV2_LRS`, `Premium_ZRS`, `StandardSSD_LRS` or `UltraSSD_LRS`. | 
| **var.create_option** | string  `Import`, `source_uri`, `ImportSecure`, `Empty`, `Copy`, `source_resource_id`, `FromImage`, `image_reference_id`, `Restore`, `Upload`, `upload_size_bytes`  |  The method to use when creating the managed disk. Changing this forces a new resource to be created. Possible values include: * `Import` - Import a VHD file in to the managed disk (VHD specified with `source_uri`). * `ImportSecure` - Securely import a VHD file in to the managed disk (VHD specified with `source_uri`). * `Empty` - Create an empty managed disk. * `Copy` - Copy an existing managed disk or snapshot (specified with `source_resource_id`). * `FromImage` - Copy a Platform Image (specified with `image_reference_id`) * `Restore` - Set by Azure Backup or Site Recovery on a restored disk (specified with `source_resource_id`). * `Upload` - Upload a VHD disk with the help of SAS URL (to be used with `upload_size_bytes`). | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.disk_encryption_set_id** | string  -  |  -  |  The ID of a Disk Encryption Set which should be used to encrypt this Managed Disk. Conflicts with `secure_vm_disk_encryption_set_id`. | 
| **var.disk_iops_read_write** | int  -  |  -  |  The number of IOPS allowed for this disk; only settable for UltraSSD disks and PremiumV2 disks. One operation can transfer between 4k and 256k bytes. | 
| **var.disk_mbps_read_write** | int  -  |  -  |  The bandwidth allowed for this disk; only settable for UltraSSD disks and PremiumV2 disks. MBps means millions of bytes per second. | 
| **var.disk_iops_read_only** | int  -  |  -  |  The number of IOPS allowed across all VMs mounting the shared disk as read-only; only settable for UltraSSD disks and PremiumV2 disks with shared disk enabled. One operation can transfer between 4k and 256k bytes. | 
| **var.disk_mbps_read_only** | int  -  |  -  |  The bandwidth allowed across all VMs mounting the shared disk as read-only; only settable for UltraSSD disks and PremiumV2 disks with shared disk enabled. MBps means millions of bytes per second. | 
| **var.upload_size_bytes** | string  -  |  -  |  Specifies the size of the managed disk to create in bytes. Required when `create_option` is `Upload`. The value must be equal to the source disk to be copied in bytes. Source disk size could be calculated with `ls -l` or `wc -c`. More information can be found at [Copy a managed disk](https://learn.microsoft.com/en-us/azure/virtual-machines/linux/disks-upload-vhd-to-managed-disk-cli#copy-a-managed-disk). Changing this forces a new resource to be created. | 
| **var.disk_size_gb** | int  -  |  -  |  (Optional, Required for a new managed disk) Specifies the size of the managed disk to create in gigabytes. If `create_option` is `Copy` or `FromImage`, then the value must be equal to or greater than the source's size. The size can only be increased. | 
| **var.edge_zone** | string  -  |  -  |  Specifies the Edge Zone within the Azure Region where this Managed Disk should exist. Changing this forces a new Managed Disk to be created. | 
| **var.encryption_settings** | block  -  |  -  |  A `encryption_settings` block. | 
| **var.hyper_v_generation** | string  -  |  `V1`, `V2`  |  The HyperV Generation of the Disk when the source of an `Import` or `Copy` operation targets a source that contains an operating system. Possible values are `V1` and `V2`. For `ImportSecure` it must be set to `V2`. Changing this forces a new resource to be created. | 
| **var.image_reference_id** | string  -  |  -  |  ID of an existing platform/marketplace disk image to copy when `create_option` is `FromImage`. This field cannot be specified if gallery_image_reference_id is specified. Changing this forces a new resource to be created. | 
| **var.gallery_image_reference_id** | string  -  |  -  |  ID of a Gallery Image Version to copy when `create_option` is `FromImage`. This field cannot be specified if image_reference_id is specified. Changing this forces a new resource to be created. | 
| **var.logical_sector_size** | string  `4096`  |  `512`, `4096`  |  Logical Sector Size. Possible values are: `512` and `4096`. Defaults to `4096`. Changing this forces a new resource to be created. | 
| **var.optimized_frequent_attach_enabled** | bool  `False`  |  -  |  Specifies whether this Managed Disk should be optimized for frequent disk attachments (where a disk is attached/detached more than 5 times in a day). Defaults to `false`. | 
| **var.performance_plus_enabled** | bool  `False`  |  -  |  Specifies whether Performance Plus is enabled for this Managed Disk. Defaults to `false`. Changing this forces a new resource to be created. | 
| **var.os_type** | string  -  |  `Linux`, `Windows`  |  Specify a value when the source of an `Import`, `ImportSecure` or `Copy` operation targets a source that contains an operating system. Valid values are `Linux` or `Windows`. | 
| **var.source_resource_id** | string  -  |  -  |  The ID of an existing Managed Disk or Snapshot to copy when `create_option` is `Copy` or the recovery point to restore when `create_option` is `Restore`. Changing this forces a new resource to be created. | 
| **var.source_uri** | string  -  |  -  |  URI to a valid VHD file to be used when `create_option` is `Import` or `ImportSecure`. Changing this forces a new resource to be created. | 
| **var.storage_account_id** | string  -  |  -  |  The ID of the Storage Account where the `source_uri` is located. Required when `create_option` is set to `Import` or `ImportSecure`. Changing this forces a new resource to be created. | 
| **var.tier** | string  -  |  -  |  The disk performance tier to use. Possible values are documented [here](https://docs.microsoft.com/azure/virtual-machines/disks-change-performance). This feature is currently supported only for premium SSDs. | 
| **var.max_shares** | int  -  |  -  |  The maximum number of VMs that can attach to the disk at the same time. Value greater than one indicates a disk that can be mounted on multiple VMs at the same time. | 
| **var.trusted_launch_enabled** | bool  -  |  -  |  Specifies if Trusted Launch is enabled for the Managed Disk. Changing this forces a new resource to be created. | 
| **var.security_type** | string  -  |  `ConfidentialVM_VMGuestStateOnlyEncryptedWithPlatformKey`, `ConfidentialVM_DiskEncryptedWithPlatformKey`, `ConfidentialVM_DiskEncryptedWithCustomerKey`  |  Security Type of the Managed Disk when it is used for a Confidential VM. Possible values are `ConfidentialVM_VMGuestStateOnlyEncryptedWithPlatformKey`, `ConfidentialVM_DiskEncryptedWithPlatformKey` and `ConfidentialVM_DiskEncryptedWithCustomerKey`. Changing this forces a new resource to be created. | 
| **var.secure_vm_disk_encryption_set_id** | string  -  |  -  |  The ID of the Disk Encryption Set which should be used to Encrypt this OS Disk when the Virtual Machine is a Confidential VM. Conflicts with `disk_encryption_set_id`. Changing this forces a new resource to be created. | 
| **var.on_demand_bursting_enabled** | bool  -  |  -  |  Specifies if On-Demand Bursting is enabled for the Managed Disk. | 
| **var.tags** | map  -  |  -  |  A mapping of tags to assign to the resource. | 
| **var.zone** | string  -  |  -  |  Specifies the Availability Zone in which this Managed Disk should be located. Changing this property forces a new resource to be created. | 
| **var.network_access_policy** | string  -  |  `AllowAll`, `AllowPrivate`, `DenyAll`  |  Policy for accessing the disk via network. Allowed values are `AllowAll`, `AllowPrivate`, and `DenyAll`. | 
| **var.disk_access_id** | string  -  |  -  |  The ID of the disk access resource for using private endpoints on disks. | 
| **var.public_network_access_enabled** | bool  `True`  |  -  |  Whether it is allowed to access the disk via public network. Defaults to `true`. | 

### `encryption_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `disk_encryption_key` | block | No | - | A 'disk_encryption_key' block. |
| `key_encryption_key` | block | No | - | A 'key_encryption_key' block. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Managed Disk. | 

Additionally, all variables are provided as outputs.
