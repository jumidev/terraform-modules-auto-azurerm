# azurerm_container_registry_token_password

Manages a Container Registry Token Password.

## Example minimal component.hclt

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

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.container_registry_token_id** | string | True | The ID of the Container Registry Token that this Container Registry Token Password resides in. Changing this forces a new Container Registry Token Password to be created. | 
| **var.password1** | block | True | One `password` block. | 
| `password1` block structure: || 
|   expiry (string): The expiration date of the password in RFC3339 format. Changing this forces a new resource to be created. ||
| **var.password2** | block | False | One `password` block. | 
| `password2` block structure: || 
|   expiry (string): The expiration date of the password in RFC3339 format. Changing this forces a new resource to be created. ||



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Container Registry Token Password. | 
| **password1** | block | No  | One `password` block. | 
| **password2** | block | No  | One `password` block. | 
| **value** | string | No  | The value of the password (Sensitive). | 

Additionally, all variables are provided as outputs.
