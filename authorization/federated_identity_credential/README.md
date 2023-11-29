# azurerm_federated_identity_credential

Manages a Federated Identity Credential.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of this Federated Identity Credential. Changing this forces a new Federated Identity Credential to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the name of the Resource Group within which this Federated Identity Credential should exist. Changing this forces a new Federated Identity Credential to be created. | 
| **audience** | string | True | -  |  -  | Specifies the audience for this Federated Identity Credential. Changing this forces a new Federated Identity Credential to be created. | 
| **issuer** | string | True | -  |  -  | Specifies the issuer of this Federated Identity Credential. Changing this forces a new Federated Identity Credential to be created. | 
| **parent_id** | string | True | -  |  -  | Specifies parent ID of User Assigned Identity for this Federated Identity Credential. Changing this forces a new Federated Identity Credential to be created. | 
| **subject** | string | True | -  |  -  | Specifies the subject for this Federated Identity Credential. Changing this forces a new Federated Identity Credential to be created. | 

