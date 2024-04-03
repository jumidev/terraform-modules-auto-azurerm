# azurerm_key_vault_secret



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "key_vault/key_vault_secret"   
}
inputs = {
   name = "Specifies the name of the Key Vault Secret"   
   value = "Specifies the value of the Key Vault Secret"   
   # key_vault_id → set in component_inputs
}
component_inputs = {
   key_vault_id = "path/to/key_vault_component:id"   
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
| **name** | string |  -  |  Specifies the name of the Key Vault Secret. Changing this forces a new resource to be created. | 
| **value** | string |  `\n`, `replace(file(my_secret_file), /\n/, \n)`, `base64encode(file(my_secret_file))`  |  Specifies the value of the Key Vault Secret. Changing this will create a new version of the Key Vault Secret. ~> **Note:** Key Vault strips newlines. To preserve newlines in multi-line secrets try replacing them with `\n` or by base 64 encoding them with `replace(file("my_secret_file"), "/\n/", "\n")` or `base64encode(file("my_secret_file"))`, respectively. | 
| **key_vault_id** | string |  -  |  The ID of the Key Vault where the Secret should be created. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **content_type** | string |  Specifies the content type for the Key Vault Secret. | 
| **tags** | map |  A mapping of tags to assign to the resource. | 
| **not_before_date** | string |  Key not usable before the provided UTC datetime (Y-m-d'T'H:M:S'Z'). | 
| **expiration_date** | string |  Expiration UTC datetime (Y-m-d'T'H:M:S'Z'). | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **expiration_date** | string | No  | Expiration UTC datetime (Y-m-d'T'H:M:S'Z'). In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The Key Vault Secret ID. | 
| **resource_id** | string | No  | The (Versioned) ID for this Key Vault Secret. This property points to a specific version of a Key Vault Secret, as such using this won't auto-rotate values if used in other Azure Services. | 
| **resource_versionless_id** | string | No  | The Versionless ID of the Key Vault Secret. This property allows other Azure Services (that support it) to auto-rotate their value when the Key Vault Secret is updated. | 
| **version** | string | No  | The current version of the Key Vault Secret. | 
| **versionless_id** | string | No  | The Base ID of the Key Vault Secret. | 

Additionally, all variables are provided as outputs.
