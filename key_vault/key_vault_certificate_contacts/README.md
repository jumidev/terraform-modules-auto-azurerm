# azurerm_key_vault_certificate_contacts



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "key_vault/key_vault_certificate_contacts"   
}
inputs = {
   # key_vault_id → set in component_inputs
   contacts = {
      item_1 = {
         email = "..."         
         phone = "..."         
      }      
      item_2 = {
         ...
      }      
   }   
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

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **key_vault_id** | string |  The ID of the Key Vault. Changing this forces a new resource to be created. | 
| **contacts** | [block](#contact-block-structure) |  One or more `contact` blocks. | 

### `contact` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `email` | string | Yes | - | E-mail address of the contact. |
| `name` | string | No | - | Name of the contact. |
| `phone` | number | No | - | Phone number of the contact. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **phone** | number | No  | Phone number of the contact. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Key Vault Certificate Contacts. | 

Additionally, all variables are provided as outputs.
