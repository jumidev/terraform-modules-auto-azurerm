# azurerm_virtual_machine_data_disk_attachment

Manages attaching a Disk to a Virtual Machine.~> **NOTE:** Data Disks can be attached either directly on the `azurerm_virtual_machine` resource, or using the `azurerm_virtual_machine_data_disk_attachment` resource - but the two cannot be used together. If both are used against the same Virtual Machine, spurious changes will occur.-> **Please Note:** only Managed Disks are supported via this separate resource, Unmanaged Disks can be attached using the `storage_data_disk` block in the `azurerm_virtual_machine` resource.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **virtual_machine_id** | string | True | -  |  -  | The ID of the Virtual Machine to which the Data Disk should be attached. Changing this forces a new resource to be created. | 
| **managed_disk_id** | string | True | -  |  -  | The ID of an existing Managed Disk which should be attached. Changing this forces a new resource to be created. | 
| **lun** | int | True | -  |  -  | The Logical Unit Number of the Data Disk, which needs to be unique within the Virtual Machine. Changing this forces a new resource to be created. | 
| **caching** | string | True | -  |  `None`, `ReadOnly`, `ReadWrite`  | Specifies the caching requirements for this Data Disk. Possible values include `None`, `ReadOnly` and `ReadWrite`. | 
| **create_option** | string | False | `Attach`  |  -  | The Create Option of the Data Disk, such as `Empty` or `Attach`. Defaults to `Attach`. Changing this forces a new resource to be created. | 
| **write_accelerator_enabled** | bool | False | `False`  |  -  | Specifies if Write Accelerator is enabled on the disk. This can only be enabled on `Premium_LRS` managed disks with no caching and [M-Series VMs](https://docs.microsoft.com/azure/virtual-machines/workloads/sap/how-to-enable-write-accelerator). Defaults to `false`. | 

