# azurerm_bot_healthbot

Manages a Healthbot Service.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies The name of the Healthbot Service resource. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies The name of the Resource Group in which to create the Healthbot Service. changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies The Azure Region where the resource exists. Changing this force a new resource to be created. | 
| **sku_name** | string | True | -  |  `C0`, `F0`, `S1`  | The name which should be used for the SKU of the service. Possible values are `C0`, `F0` and `S1`. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the service. | 

