# azurerm_api_management_api_release

Manages a API Management API Release.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_api_release" 
}

inputs = {
   name = "name of api_management_api_release" 
   api_id = "api_id of api_management_api_release" 
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
| **var.name** | string | True | The name which should be used for this API Management API Release. Changing this forces a new API Management API Release to be created. | 
| **var.api_id** | string | True | The ID of the API Management API. Changing this forces a new API Management API Release to be created. | 
| **var.notes** | string | False | The Release Notes. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management API Release. | 

Additionally, all variables are provided as outputs.
