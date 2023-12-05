# azurerm_virtual_machine_data_disk_attachment

Manages attaching a Disk to a Virtual Machine.~> **NOTE:** Data Disks can be attached either directly on the `azurerm_virtual_machine` resource, or using the `azurerm_virtual_machine_data_disk_attachment` resource - but the two cannot be used together. If both are used against the same Virtual Machine, spurious changes will occur.-> **Please Note:** only Managed Disks are supported via this separate resource, Unmanaged Disks can be attached using the `storage_data_disk` block in the `azurerm_virtual_machine` resource.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "compute/virtual_machine_data_disk_attachment"   
}

inputs = {
   # virtual_machine_id → set in tfstate_inputs
   # managed_disk_id → set in tfstate_inputs
   lun = "lun of virtual_machine_data_disk_attachment"   
   caching = "caching of virtual_machine_data_disk_attachment"   
}

tfstate_inputs = {
   virtual_machine_id = "path/to/virtual_machine_component:id"   
   managed_disk_id = "path/to/managed_disk_component:id"   
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
| **virtual_machine_id** | string |  -  |  The ID of the Virtual Machine to which the Data Disk should be attached. Changing this forces a new resource to be created. | 
| **managed_disk_id** | string |  -  |  The ID of an existing Managed Disk which should be attached. Changing this forces a new resource to be created. | 
| **lun** | int |  -  |  The Logical Unit Number of the Data Disk, which needs to be unique within the Virtual Machine. Changing this forces a new resource to be created. | 
| **caching** | string |  `None`, `ReadOnly`, `ReadWrite`  |  Specifies the caching requirements for this Data Disk. Possible values include `None`, `ReadOnly` and `ReadWrite`. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **create_option** | string |  `Attach`  |  The Create Option of the Data Disk, such as `Empty` or `Attach`. Defaults to `Attach`. Changing this forces a new resource to be created. | 
| **write_accelerator_enabled** | bool |  `False`  |  Specifies if Write Accelerator is enabled on the disk. This can only be enabled on `Premium_LRS` managed disks with no caching and [M-Series VMs](https://docs.microsoft.com/azure/virtual-machines/workloads/sap/how-to-enable-write-accelerator). Defaults to `false`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Virtual Machine Data Disk attachment. | 

Additionally, all variables are provided as outputs.
