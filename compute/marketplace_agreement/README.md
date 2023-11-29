# azurerm_marketplace_agreement

Allows accepting the Legal Terms for a Marketplace Image.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.offer** | string | True | -  |  -  | The Offer of the Marketplace Image. Changing this forces a new resource to be created. | 
| **var.plan** | string | True | -  |  -  | The Plan of the Marketplace Image. Changing this forces a new resource to be created. | 
| **var.publisher** | string | True | -  |  -  | The Publisher of the Marketplace Image. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **offer** | string  | - | 
| **plan** | string  | - | 
| **publisher** | string  | - | 
| **id** | string  | The ID of the Marketplace Agreement. | 