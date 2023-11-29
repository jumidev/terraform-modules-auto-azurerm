# azurerm_mobile_network_data_network

Manages a Mobile Network Data Network.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name which should be used for this Mobile Network Data Network. Changing this forces a new Mobile Network Data Network to be created. | 
| **mobile_network_id** | string | True | -  |  -  | Specifies the ID of the Mobile Network. Changing this forces a new Mobile Network Data Network to be created. | 
| **location** | string | True | -  |  -  | Specifies the Azure Region where the Mobile Network Data Network should exist. Changing this forces a new Mobile Network Data Network to be created. | 
| **description** | string | False | -  |  -  | A description of this Mobile Network Data Network. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Mobile Network Data Network. | 

