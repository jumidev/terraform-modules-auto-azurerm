# azurerm_cognitive_deployment

Manages a Cognitive Services Account Deployment.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Cognitive Services Account Deployment. Changing this forces a new resource to be created. | 
| **cognitive_account_id** | string | True | -  |  -  | The ID of the Cognitive Services Account. Changing this forces a new resource to be created. | 
| **model** | block | True | -  |  -  | A `model` block. Changing this forces a new resource to be created. | 
| **scale** | block | True | -  |  -  | A `scale` block. | 
| **rai_policy_name** | string | False | -  |  -  | The name of RAI policy. | 
| **version_upgrade_option** | string | False | `OnceNewDefaultVersionAvailable`  |  `OnceNewDefaultVersionAvailable`, `OnceCurrentVersionExpired`, `NoAutoUpgrade`  | Deployment model version upgrade option. Possible values are `OnceNewDefaultVersionAvailable`, `OnceCurrentVersionExpired`, and `NoAutoUpgrade`. Defaults to `OnceNewDefaultVersionAvailable`. Changing this forces a new resource to be created. | 

