# azurerm_data_share_account

Manages a Data Share Account.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Data Share Account. Changing this forces a new Data Share Account to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Data Share Account should exist. Changing this forces a new Data Share Account to be created. | 
| **var.location** | string | True | The Azure Region where the Data Share Account should exist. Changing this forces a new Data Share Account to be created. | 
| **var.identity** | block | True | An `identity` block. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Data Share Account. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **identity** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Data Share Account. | 
| **principal_id** | string  | The Principal ID for the Service Principal associated with the Identity of this Data Share Account. | 
| **tenant_id** | string  | The Tenant ID for the Service Principal associated with the Identity of this Data Share Account. | 