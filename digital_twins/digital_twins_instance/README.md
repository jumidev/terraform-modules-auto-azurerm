# azurerm_digital_twins_instance

Manages a Digital Twins instance.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Digital Twins instance. Changing this forces a new Digital Twins instance to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Digital Twins instance should exist. Changing this forces a new Digital Twins instance to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Digital Twins instance should exist. Changing this forces a new Digital Twins instance to be created. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Digital Twins instance. | 

