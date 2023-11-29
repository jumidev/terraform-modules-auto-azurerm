# azurerm_image

Manages a custom virtual machine image that can be used to create virtual machines.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the image. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create. Changing this forces a new resource to be created. the image. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specified the supported Azure location where the resource exists. Changing this forces a new resource to be created. Changing this forces a new resource to be created. | 
| **source_virtual_machine_id** | string | False | -  |  -  | The Virtual Machine ID from which to create the image. | 
| **os_disk** | block | False | -  |  -  | One or more `os_disk` blocks. Changing this forces a new resource to be created. | 
| **data_disk** | block | False | -  |  -  | One or more `data_disk` blocks. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 
| **zone_resilient** | bool | False | `False`  |  -  | Is zone resiliency enabled? Defaults to `false`. Changing this forces a new resource to be created. | 
| **hyper_v_generation** | string | False | `V1`  |  -  | The HyperVGenerationType of the VirtualMachine created from the image as `V1`, `V2`. Defaults to `V1`. Changing this forces a new resource to be created. | 

