# azurerm_subnet_service_endpoint_storage_policy

Manages a Subnet Service Endpoint Storage Policy.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Subnet Service Endpoint Storage Policy. Changing this forces a new Subnet Service Endpoint Storage Policy to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Subnet Service Endpoint Storage Policy should exist. Changing this forces a new Subnet Service Endpoint Storage Policy to be created. | 
| **var.location** | string | True | -  |  -  | The Azure Region where the Subnet Service Endpoint Storage Policy should exist. Changing this forces a new Subnet Service Endpoint Storage Policy to be created. | 
| **var.definition** | block | False | -  |  -  | A `definition` block | 
| **var.tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Subnet Service Endpoint Storage Policy. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **definition** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Subnet Service Endpoint Storage Policy. | 