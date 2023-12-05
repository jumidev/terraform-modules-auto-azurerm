# azurerm_image

Manages a custom virtual machine image that can be used to create virtual machines.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "compute/image"   
}

inputs = {
   name = "Specifies the name of the image"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
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
| **name** | string |  Specifies the name of the image. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create. Changing this forces a new resource to be created. the image. Changing this forces a new resource to be created. | 
| **location** | string |  Specified the supported Azure location where the resource exists. Changing this forces a new resource to be created. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **source_virtual_machine_id** | string |  -  |  The Virtual Machine ID from which to create the image. | 
| **os_disk** | [block](#os_disk-block-structure) |  -  |  One or more `os_disk` blocks. Changing this forces a new resource to be created. | 
| **data_disk** | [block](#data_disk-block-structure) |  -  |  One or more `data_disk` blocks. | 
| **tags** | map |  -  |  A mapping of tags to assign to the resource. | 
| **zone_resilient** | bool |  `False`  |  Is zone resiliency enabled? Defaults to `false`. Changing this forces a new resource to be created. | 
| **hyper_v_generation** | string |  `V1`  |  The HyperVGenerationType of the VirtualMachine created from the image as `V1`, `V2`. Defaults to `V1`. Changing this forces a new resource to be created. | 

### `data_disk` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `lun` | int | No | - | Specifies the logical unit number of the data disk. |
| `managed_disk_id` | string | No | - | Specifies the ID of the managed disk resource that you want to use to create the image. Changing this forces a new resource to be created. |
| `blob_uri` | string | No | - | Specifies the URI in Azure storage of the blob that you want to use to create the image. |
| `caching` | string | No | None | Specifies the caching mode as 'ReadWrite', 'ReadOnly', or 'None'. Defaults to 'None'. |
| `size_gb` | int | No | - | Specifies the size of the image to be created. The target size can't be smaller than the source size. |

### `os_disk` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `os_type` | string | No | - | Specifies the type of operating system contained in the virtual machine image. Possible values are: 'Windows' or 'Linux'. |
| `os_state` | string | No | - | Specifies the state of the operating system contained in the blob. Currently, the only value is Generalized. Possible values are 'Generalized' and 'Specialized'. |
| `managed_disk_id` | string | No | - | Specifies the ID of the managed disk resource that you want to use to create the image. |
| `blob_uri` | string | No | - | Specifies the URI in Azure storage of the blob that you want to use to create the image. Changing this forces a new resource to be created. |
| `caching` | string | No | None | Specifies the caching mode as 'ReadWrite', 'ReadOnly', or 'None'. The default is 'None'. |
| `size_gb` | int | No | - | Specifies the size of the image to be created. Changing this forces a new resource to be created. |
| `disk_encryption_set_id` | string | No | - | The ID of the Disk Encryption Set which should be used to encrypt this image. Changing this forces a new resource to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Image. | 

Additionally, all variables are provided as outputs.
