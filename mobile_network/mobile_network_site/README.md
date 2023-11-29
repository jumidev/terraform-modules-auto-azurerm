# azurerm_mobile_network_site

Manages a Mobile Network Site.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Mobile Network Site. Changing this forces a new Mobile Network Site to be created. | 
| **mobile_network_id** | string | True | -  |  -  | the ID of the Mobile Network which the Mobile Network Site belongs to. Changing this forces a new Mobile Network Site to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Mobile Network Site should exist. Changing this forces a new Mobile Network Site to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Mobile Network Site. | 

