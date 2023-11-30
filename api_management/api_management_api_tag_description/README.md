# azurerm_api_management_api_tag_description

Manages an API Tag Description within an API Management Service.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_api_tag_description" 
}

inputs = {
   api_tag_id = "api_tag_id of api_management_api_tag_description" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.api_tag_id** | string | True | The The ID of the API Management API Tag. Changing this forces a new API Management API Tag Description to be created. | 
| **var.description** | string | False | The description of the Tag. | 
| **var.external_documentation_url** | string | False | The URL of external documentation resources describing the tag. | 
| **var.external_documentation_description** | string | False | The description of the external documentation resources describing the tag. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management API Schema. | 

Additionally, all variables are provided as outputs.
