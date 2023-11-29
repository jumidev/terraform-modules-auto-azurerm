# azurerm_mobile_network

Manages a Mobile Network.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name which should be used for this Mobile Network. Changing this forces a new Mobile Network to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | Specifies the name of the Resource Group where the Mobile Network should exist. Changing this forces a new Mobile Network to be created. | 
| **var.location** | string | True | -  |  `eastus`, `northeurope`  | Specifies the Azure Region where the Mobile Network should exist. Changing this forces a new Mobile Network to be created. The possible values are `eastus` and `northeurope`. | 
| **var.mobile_country_code** | string | True | -  |  -  | Mobile country code (MCC), defined in https://www.itu.int/rec/T-REC-E.212 . Changing this forces a new resource to be created. | 
| **var.mobile_network_code** | string | True | -  |  -  | Mobile network code (MNC), defined in https://www.itu.int/rec/T-REC-E.212 . Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Mobile Network. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **mobile_country_code** | string  | - | 
| **mobile_network_code** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Mobile Network. | 
| **service_key** | string  | The mobile network resource identifier. | 