# azurerm_federated_identity_credential

Manages a Federated Identity Credential.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of this Federated Identity Credential. Changing this forces a new Federated Identity Credential to be created. | 
| **var.resource_group_name** | string | True | Specifies the name of the Resource Group within which this Federated Identity Credential should exist. Changing this forces a new Federated Identity Credential to be created. | 
| **var.audience** | string | True | Specifies the audience for this Federated Identity Credential. Changing this forces a new Federated Identity Credential to be created. | 
| **var.issuer** | string | True | Specifies the issuer of this Federated Identity Credential. Changing this forces a new Federated Identity Credential to be created. | 
| **var.parent_id** | string | True | Specifies parent ID of User Assigned Identity for this Federated Identity Credential. Changing this forces a new Federated Identity Credential to be created. | 
| **var.subject** | string | True | Specifies the subject for this Federated Identity Credential. Changing this forces a new Federated Identity Credential to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **audience** | string  | - | 
| **issuer** | string  | - | 
| **parent_id** | string  | - | 
| **subject** | string  | - | 
| **id** | string  | The ID of the Federated Identity Credential. | 