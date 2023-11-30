# azurerm_api_management_named_value

Manages an API Management Named Value.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_named_value" 
}

inputs = {
   name = "name of api_management_named_value" 
   resource_group_name = "${resource_group}" 
   api_management_name = "api_management_name of api_management_named_value" 
   display_name = "display_name of api_management_named_value" 
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
| **var.name** | string  The name of the API Management Named Value. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  The name of the Resource Group in which the API Management Named Value should exist. Changing this forces a new resource to be created. | 
| **var.api_management_name** | string  The name of the [API Management Service](api_management.html) in which the API Management Named Value should exist. Changing this forces a new resource to be created. | 
| **var.display_name** | string  The display name of this API Management Named Value. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.value** | string  -  |  The value of this API Management Named Value. | 
| **var.value_from_key_vault** | block  -  |  A `value_from_key_vault` block. | 
| **var.secret** | string  `true`, `false`  |  Specifies whether the API Management Named Value is secret. Valid values are `true` or `false`. The default value is `false`. | 
| **var.tags** | map  -  |  A list of tags to be applied to the API Management Named Value. | 

### `value_from_key_vault` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `secret_id` | string | Yes | - | The resource ID of the Key Vault Secret. |
| `identity_client_id` | string | No | - | The client ID of User Assigned Identity, for the API Management Service, which will be used to access the key vault secret. The System Assigned Identity will be used in absence. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Named Value. | 

Additionally, all variables are provided as outputs.
