# azurerm_load_test

Manages a Load Test Service.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **location** | string | True | -  |  -  | The Azure Region where the Load Test should exist. Changing this forces a new Load Test to be created. | 
| **name** | string | True | -  |  -  | Specifies the name of this Load Test. Changing this forces a new Load Test to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the name of the Resource Group within which this Load Test should exist. Changing this forces a new Load Test to be created. | 
| **description** | string | False | -  |  -  | Description of the resource. Changing this forces a new Load Test to be created. | 
| **identity** | block | False | -  |  -  | An `identity` block. Specifies the Managed Identity which should be assigned to this Load Test. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Load Test. | 

