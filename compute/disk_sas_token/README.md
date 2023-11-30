# azurerm_disk_sas_token

Manages a Disk SAS Token.Use this resource to obtain a Shared Access Signature (SAS Token) for an existing Managed Disk.Shared access signatures allow fine-grained, ephemeral access control to various aspects of Managed Disk similar to blob/storage account container.With the help of this resource, data from the disk can be copied from managed disk to a storage blob or to some other system without the need of azcopy.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "compute/disk_sas_token" 
}

inputs = {
   managed_disk_id = "managed_disk_id of disk_sas_token" 
   duration_in_seconds = "duration_in_seconds of disk_sas_token" 
   access_level = "access_level of disk_sas_token" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.managed_disk_id** | string  The ID of an existing Managed Disk which should be exported. Changing this forces a new resource to be created. | 
| **var.duration_in_seconds** | int  The duration for which the export should be allowed. Should be between 30 & 4294967295 seconds. Changing this forces a new resource to be created. | 
| **var.access_level** | string  The level of access required on the disk. Supported are Read, Write. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Disk Export resource. | 
| **sas_url** | string | No  | The computed Shared Access Signature (SAS) of the Managed Disk. | 

Additionally, all variables are provided as outputs.
