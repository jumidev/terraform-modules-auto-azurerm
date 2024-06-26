# azurerm_container_registry_token_password



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "container/container_registry_token_password"   
}
inputs = {
   # container_registry_token_id → set in component_inputs
   password1 = {
   }   
}
component_inputs = {
   container_registry_token_id = "path/to/container_registry_token_component:id"   
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
| **container_registry_token_id** | string |  The ID of the Container Registry Token that this Container Registry Token Password resides in. Changing this forces a new Container Registry Token Password to be created. | 
| **password1** | [block](#password-block-structure) |  One `password` block. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **password2** | [block](#password-block-structure) |  One `password` block. | 

### `password` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `expiry` | string | No | - | The expiration date of the password in RFC3339 format. If not specified, the password never expires. Changing this forces a new resource to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **expiry** | string | No  | The expiration date of the password in RFC3339 format. If not specified, the password never expires. Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Container Registry Token Password. | 
| **password1** | block | No  | One `password` block. | 
| **password2** | block | No  | One `password` block. | 
| **value** | string | No  | The value of the password (Sensitive). | 

Additionally, all variables are provided as outputs.
