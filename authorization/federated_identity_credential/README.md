# azurerm_federated_identity_credential

Manages a Federated Identity Credential.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "authorization/federated_identity_credential"   
}

inputs = {
   name = "name of federated_identity_credential"   
   resource_group_name = "${resource_group}"   
   audience = "audience of federated_identity_credential"   
   issuer = "issuer of federated_identity_credential"   
   parent_id = "parent_id of federated_identity_credential"   
   subject = "subject of federated_identity_credential"   
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
| **name** | string |  Specifies the name of this Federated Identity Credential. Changing this forces a new Federated Identity Credential to be created. | 
| **resource_group_name** | string |  Specifies the name of the Resource Group within which this Federated Identity Credential should exist. Changing this forces a new Federated Identity Credential to be created. | 
| **audience** | string |  Specifies the audience for this Federated Identity Credential. Changing this forces a new Federated Identity Credential to be created. | 
| **issuer** | string |  Specifies the issuer of this Federated Identity Credential. Changing this forces a new Federated Identity Credential to be created. | 
| **parent_id** | string |  Specifies parent ID of User Assigned Identity for this Federated Identity Credential. Changing this forces a new Federated Identity Credential to be created. | 
| **subject** | string |  Specifies the subject for this Federated Identity Credential. Changing this forces a new Federated Identity Credential to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Federated Identity Credential. | 

Additionally, all variables are provided as outputs.
