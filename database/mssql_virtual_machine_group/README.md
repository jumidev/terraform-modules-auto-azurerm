# azurerm_mssql_virtual_machine_group

Manages a Microsoft SQL Virtual Machine Group.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for the Microsoft SQL Virtual Machine Group. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Microsoft SQL Virtual Machine Group should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | The Azure Region where the Microsoft SQL Virtual Machine Group should exist. Changing this forces a new resource to be created. | 
| **var.sql_image_offer** | string | True | -  |  -  | The offer type of the marketplace image cluster to be used by the SQL Virtual Machine Group. Changing this forces a new resource to be created. | 
| **var.sql_image_sku** | string | True | -  |  `Developer`, `Enterprise`  | The sku type of the marketplace image cluster to be used by the SQL Virtual Machine Group. Possible values are `Developer` and `Enterprise`. | 
| **var.wsfc_domain_profile** | block | True | -  |  -  | A `wsfc_domain_profile` block. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Microsoft SQL Virtual Machine Group. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **sql_image_offer** | string  | - | 
| **sql_image_sku** | string  | - | 
| **wsfc_domain_profile** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Microsoft SQL Virtual Machine Group. | 