# azurerm_disk_sas_token

Manages a Disk SAS Token.Use this resource to obtain a Shared Access Signature (SAS Token) for an existing Managed Disk.Shared access signatures allow fine-grained, ephemeral access control to various aspects of Managed Disk similar to blob/storage account container.With the help of this resource, data from the disk can be copied from managed disk to a storage blob or to some other system without the need of azcopy.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.managed_disk_id** | string | True | -  |  -  | The ID of an existing Managed Disk which should be exported. Changing this forces a new resource to be created. | 
| **var.duration_in_seconds** | int | True | -  |  -  | The duration for which the export should be allowed. Should be between 30 & 4294967295 seconds. Changing this forces a new resource to be created. | 
| **var.access_level** | string | True | -  |  -  | The level of access required on the disk. Supported are Read, Write. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **managed_disk_id** | string  | - | 
| **duration_in_seconds** | int  | - | 
| **access_level** | string  | - | 
| **id** | string  | The ID of the Disk Export resource. | 
| **sas_url** | string  | The computed Shared Access Signature (SAS) of the Managed Disk. | 