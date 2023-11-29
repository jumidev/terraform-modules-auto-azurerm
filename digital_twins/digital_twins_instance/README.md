# azurerm_digital_twins_instance

Manages a Digital Twins instance.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Digital Twins instance. Changing this forces a new Digital Twins instance to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Digital Twins instance should exist. Changing this forces a new Digital Twins instance to be created. | 
| **var.location** | string | True | The Azure Region where the Digital Twins instance should exist. Changing this forces a new Digital Twins instance to be created. | 
| **var.identity** | block | False | An `identity` block. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Digital Twins instance. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **identity** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Digital Twins instance. | 
| **host_name** | string  | The API endpoint to work with this Digital Twins instance. | 
| **identity** | block  | An `identity` block. | 
| **principal_id** | string  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string  | The Tenant ID associated with this Managed Service Identity. | 