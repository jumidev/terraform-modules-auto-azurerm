# azurerm_databricks_access_connector

Manages a Databricks Access Connector

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Databricks Access Connector resource. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group in which the Databricks Access Connector should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created. | 
| **var.identity** | block | False | -  |  -  | An `identity` block. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **identity** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Databricks Access Connector in the Azure management plane. | 
| **identity** | block  | A list of `identity` blocks containing the system-assigned managed identities as defined below. | 
| **type** | string  | The type of Managed Service Identity that is configured on this Access Connector. | 
| **principal_id** | string  | The Principal ID of the System Assigned Managed Service Identity that is configured on this Access Connector. | 
| **tenant_id** | string  | The Tenant ID of the System Assigned Managed Service Identity that is configured on this Access Connector. | 
| **identity_ids** | string  | The list of User Assigned Managed Identity IDs assigned to this Access Connector. | 