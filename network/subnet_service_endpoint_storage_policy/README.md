# azurerm_subnet_service_endpoint_storage_policy

Manages a Subnet Service Endpoint Storage Policy.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Subnet Service Endpoint Storage Policy. Changing this forces a new Subnet Service Endpoint Storage Policy to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Subnet Service Endpoint Storage Policy should exist. Changing this forces a new Subnet Service Endpoint Storage Policy to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Subnet Service Endpoint Storage Policy should exist. Changing this forces a new Subnet Service Endpoint Storage Policy to be created. | 
| **definition** | block | False | -  |  -  | A `definition` block | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Subnet Service Endpoint Storage Policy. | 

