# azurerm_api_management_product

Manages an API Management Product.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **api_management_name** | string | True | -  |  -  | The name of the API Management Service. Changing this forces a new resource to be created. | 
| **approval_required** | string | False | -  |  -  | Do subscribers need to be approved prior to being able to use the Product? | 
| **display_name** | string | True | -  |  -  | The Display Name for this API Management Product. | 
| **product_id** | string | True | -  |  -  | The Identifier for this Product, which must be unique within the API Management Service. Changing this forces a new resource to be created. | 
| **published** | bool | True | -  |  -  | Is this Product Published? | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group in which the API Management Service should be exist. Changing this forces a new resource to be created. | 
| **subscription_required** | bool | False | `True`  |  -  | Is a Subscription required to access API's included in this Product? Defaults to `true`. | 
| **description** | string | False | -  |  -  | A description of this Product, which may include HTML formatting tags. | 
| **subscriptions_limit** | int | False | -  |  -  | The number of subscriptions a user can have to this Product at the same time. | 
| **terms** | string | False | -  |  -  | The Terms and Conditions for this Product, which must be accepted by Developers before they can begin the Subscription process. | 

