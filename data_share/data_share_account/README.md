# azurerm_data_share_account

Manages a Data Share Account.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Data Share Account. Changing this forces a new Data Share Account to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Data Share Account should exist. Changing this forces a new Data Share Account to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Data Share Account should exist. Changing this forces a new Data Share Account to be created. | 
| **identity** | block | True | -  |  -  | An `identity` block. Changing this forces a new resource to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Data Share Account. | 

