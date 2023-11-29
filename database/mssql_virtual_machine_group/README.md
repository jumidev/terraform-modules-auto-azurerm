# azurerm_mssql_virtual_machine_group

Manages a Microsoft SQL Virtual Machine Group.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for the Microsoft SQL Virtual Machine Group. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Microsoft SQL Virtual Machine Group should exist. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Microsoft SQL Virtual Machine Group should exist. Changing this forces a new resource to be created. | 
| **sql_image_offer** | string | True | -  |  -  | The offer type of the marketplace image cluster to be used by the SQL Virtual Machine Group. Changing this forces a new resource to be created. | 
| **sql_image_sku** | string | True | -  |  `Developer`, `Enterprise`  | The sku type of the marketplace image cluster to be used by the SQL Virtual Machine Group. Possible values are `Developer` and `Enterprise`. | 
| **wsfc_domain_profile** | block | True | -  |  -  | A `wsfc_domain_profile` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Microsoft SQL Virtual Machine Group. | 

