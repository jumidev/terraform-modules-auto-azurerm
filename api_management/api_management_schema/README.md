# azurerm_api_management_schema

Manages a Global Schema within an API Management Service.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_schema" 
}

inputs = {
   schema_id = "schema_id of api_management_schema" 
   api_management_name = "api_management_name of api_management_schema" 
   resource_group_name = "${resource_group}" 
   type = "type of api_management_schema" 
   value = "value of api_management_schema" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.schema_id** | string  -  |  A unique identifier for this Schema. Changing this forces a new resource to be created. | 
| **var.api_management_name** | string  -  |  The Name of the API Management Service where the API exists. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  -  |  The Name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 
| **var.type** | string  `xml`, `json`  |  The content type of the Schema. Possible values are `xml` and `json`. | 
| **var.value** | string  -  |  The string defining the document representing the Schema. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.description** | string  The description of the schema. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management API Schema. | 

Additionally, all variables are provided as outputs.
