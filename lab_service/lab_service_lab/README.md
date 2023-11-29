# azurerm_lab_service_lab

Manages a Lab Service Lab.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Lab Service Lab. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Lab Service Lab should exist. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Lab Service Lab should exist. Changing this forces a new resource to be created. | 
| **security** | block | True | -  |  -  | A `security` block. | 
| **title** | string | True | -  |  -  | The title of the Lab Service Lab. | 
| **virtual_machine** | block | True | -  |  -  | A `virtual_machine` block. | 
| **auto_shutdown** | block | False | -  |  -  | An `auto_shutdown` block. | 
| **connection_setting** | block | False | -  |  -  | A `connection_setting` block. | 
| **description** | string | False | -  |  -  | The description of the Lab Service Lab. | 
| **lab_plan_id** | string | False | -  |  -  | The resource ID of the Lab Plan that is used during resource creation to provide defaults and acts as a permission container when creating a Lab Service Lab via `labs.azure.com`. | 
| **network** | block | False | -  |  -  | A `network` block. | 
| **roster** | block | False | -  |  -  | A `roster` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Lab Service Lab. | 

