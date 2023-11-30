# azurerm_image

Manages a custom virtual machine image that can be used to create virtual machines.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "compute/image" 
}

inputs = {
   name = "name of image" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the image. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group in which to create. Changing this forces a new resource to be created. the image. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specified the supported Azure location where the resource exists. Changing this forces a new resource to be created. Changing this forces a new resource to be created. | 
| **var.source_virtual_machine_id** | string | False | -  |  The Virtual Machine ID from which to create the image. | 
| **var.os_disk** | block | False | -  |  One or more `os_disk` blocks. Changing this forces a new resource to be created. | 
| **var.data_disk** | block | False | -  |  One or more `data_disk` blocks. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. | 
| **var.zone_resilient** | bool | False | `False`  |  Is zone resiliency enabled? Defaults to `false`. Changing this forces a new resource to be created. | 
| **var.hyper_v_generation** | string | False | `V1`  |  The HyperVGenerationType of the VirtualMachine created from the image as `V1`, `V2`. Defaults to `V1`. Changing this forces a new resource to be created. | 

### `os_disk` block structure

>`os_type` (string): Specifies the type of operating system contained in the virtual machine image. Possible values are: 'Windows' or 'Linux'.
>`os_state` (string): Specifies the state of the operating system contained in the blob. Currently, the only value is Generalized. Possible values are 'Generalized' and 'Specialized'.
>`managed_disk_id` (string): Specifies the ID of the managed disk resource that you want to use to create the image.
>`blob_uri` (string): Specifies the URI in Azure storage of the blob that you want to use to create the image. Changing this forces a new resource to be created.
>`caching` (string): Specifies the caching mode as 'ReadWrite', 'ReadOnly', or 'None'. The default is 'None'.
>`size_gb` (int): Specifies the size of the image to be created. Changing this forces a new resource to be created.
>`disk_encryption_set_id` (string): The ID of the Disk Encryption Set which should be used to encrypt this image. Changing this forces a new resource to be created.

### `data_disk` block structure

>`lun` (int): Specifies the logical unit number of the data disk.
>`managed_disk_id` (string): Specifies the ID of the managed disk resource that you want to use to create the image. Changing this forces a new resource to be created.
>`blob_uri` (string): Specifies the URI in Azure storage of the blob that you want to use to create the image.
>`caching` (string): Specifies the caching mode as 'ReadWrite', 'ReadOnly', or 'None'. Defaults to 'None'.
>`size_gb` (int): Specifies the size of the image to be created. The target size can't be smaller than the source size.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Image. | 

Additionally, all variables are provided as outputs.
