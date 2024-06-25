# azurerm_federated_identity_credential



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "authorization/federated_identity_credential"   
}
inputs = {
   name = "Specifies the name of this Federated Identity Credential..."   
   resource_group_name = "${resource_group}"   
   audience = "Specifies the audience for this Federated Identity Credential..."   
   issuer = "Specifies the issuer of this Federated Identity Credential..."   
   parent_id = "Specifies parent ID of User Assigned Identity for this Federated Identity Creden..."   
   subject = "Specifies the subject for this Federated Identity Credential..."   
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
| **name** | string |  Specifies the name of this Federated Identity Credential. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  Specifies the name of the Resource Group within which this Federated Identity Credential should exist. Changing this forces a new Federated Identity Credential to be created. | 
| **audience** | string |  Specifies the audience for this Federated Identity Credential. | 
| **issuer** | string |  Specifies the issuer of this Federated Identity Credential. | 
| **parent_id** | string |  Specifies parent ID of User Assigned Identity for this Federated Identity Credential. Changing this forces a new Federated Identity Credential to be created. | 
| **subject** | string |  Specifies the subject for this Federated Identity Credential. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **subject** | string | No  | Specifies the subject for this Federated Identity Credential. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Federated Identity Credential. | 

Additionally, all variables are provided as outputs.
