# azurerm_dev_test_lab

Manages a Dev Test Lab.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Dev Test Lab. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group under which the Dev Test Lab resource has to be created. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the Dev Test Lab should exist. Changing this forces a new resource to be created. | 
| **storage_type** | string | False | `Premium`  |  `Standard`, `Premium`  | The type of storage used by the Dev Test Lab. Possible values are `Standard` and `Premium`. Defaults to `Premium`. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

