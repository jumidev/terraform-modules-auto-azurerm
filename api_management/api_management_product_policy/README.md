# azurerm_api_management_product_policy

Manages an API Management Product Policy

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "api_management/api_management_product_policy"   
}

inputs = {
   product_id = "product_id of api_management_product_policy"   
   # api_management_name → set in tfstate_inputs
   resource_group_name = "${resource_group}"   
}

tfstate_inputs = {
   api_management_name = "path/to/api_management_component:name"   
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
| **product_id** | string |  The ID of the API Management Product within the API Management Service. Changing this forces a new resource to be created. | 
| **api_management_name** | string |  The name of the API Management Service. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **xml_content** | string |  The XML Content for this Policy. | 
| **xml_link** | string |  A link to a Policy XML Document, which must be publicly available. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Product Policy. | 

Additionally, all variables are provided as outputs.
