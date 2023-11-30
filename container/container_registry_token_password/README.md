# azurerm_container_registry_token_password

Manages a Container Registry Token Password.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.container_registry_token_id** | string | True | The ID of the Container Registry Token that this Container Registry Token Password resides in. Changing this forces a new Container Registry Token Password to be created. | 
| **var.password1** | block | True | One `password` block. | 
| **var.password2** | block | False | One `password` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **container_registry_token_id** | string  | - | 
| **password1** | block  | - | 
| **password2** | block  | - | 
| **id** | string  | The ID of the Container Registry Token Password. | 
| **password1** | block  | One `password` block. | 
| **password2** | block  | One `password` block. | 
| **value** | string  | The value of the password (Sensitive). | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "container/container_registry_token_password" 
}

inputs = {
   container_registry_token_id = "container_registry_token_id of container_registry_token_password" 
   password1 = "password1 of container_registry_token_password" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```