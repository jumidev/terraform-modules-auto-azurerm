# azurerm_api_management_product

Manages an API Management Product.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_product" 
}

inputs = {
   api_management_name = "api_management_name of api_management_product" 
   display_name = "display_name of api_management_product" 
   product_id = "product_id of api_management_product" 
   published = "published of api_management_product" 
   resource_group_name = "${resource_group}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.api_management_name** | string  The name of the API Management Service. Changing this forces a new resource to be created. | 
| **var.display_name** | string  The Display Name for this API Management Product. | 
| **var.product_id** | string  The Identifier for this Product, which must be unique within the API Management Service. Changing this forces a new resource to be created. | 
| **var.published** | bool  Is this Product Published? | 
| **var.resource_group_name** | string  The name of the Resource Group in which the API Management Service should be exist. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.approval_required** | string  -  |  Do subscribers need to be approved prior to being able to use the Product? | 
| **var.subscription_required** | bool  `True`  |  Is a Subscription required to access API's included in this Product? Defaults to `true`. | 
| **var.description** | string  -  |  A description of this Product, which may include HTML formatting tags. | 
| **var.subscriptions_limit** | int  -  |  The number of subscriptions a user can have to this Product at the same time. | 
| **var.terms** | string  -  |  The Terms and Conditions for this Product, which must be accepted by Developers before they can begin the Subscription process. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Product. | 

Additionally, all variables are provided as outputs.
