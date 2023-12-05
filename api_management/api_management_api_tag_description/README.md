# azurerm_api_management_api_tag_description

Manages an API Tag Description within an API Management Service.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "api_management/api_management_api_tag_description"   
}

inputs = {
   api_tag_id = "The The ID of the API Management API Tag"   
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
| **api_tag_id** | string |  The The ID of the API Management API Tag. Changing this forces a new API Management API Tag Description to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  The description of the Tag. | 
| **external_documentation_url** | string |  The URL of external documentation resources describing the tag. | 
| **external_documentation_description** | string |  The description of the external documentation resources describing the tag. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management API Schema. | 

Additionally, all variables are provided as outputs.
