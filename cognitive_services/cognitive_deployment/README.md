# azurerm_cognitive_deployment

Manages a Cognitive Services Account Deployment.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the Cognitive Services Account Deployment. Changing this forces a new resource to be created. | 
| **var.cognitive_account_id** | string | True | -  |  -  | The ID of the Cognitive Services Account. Changing this forces a new resource to be created. | 
| **var.model** | block | True | -  |  -  | A `model` block. Changing this forces a new resource to be created. | 
| **var.scale** | block | True | -  |  -  | A `scale` block. | 
| **var.rai_policy_name** | string | False | -  |  -  | The name of RAI policy. | 
| **var.version_upgrade_option** | string | False | `OnceNewDefaultVersionAvailable`  |  `OnceNewDefaultVersionAvailable`, `OnceCurrentVersionExpired`, `NoAutoUpgrade`  | Deployment model version upgrade option. Possible values are `OnceNewDefaultVersionAvailable`, `OnceCurrentVersionExpired`, and `NoAutoUpgrade`. Defaults to `OnceNewDefaultVersionAvailable`. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **cognitive_account_id** | string  | - | 
| **model** | block  | - | 
| **scale** | block  | - | 
| **rai_policy_name** | string  | - | 
| **version_upgrade_option** | string  | - | 
| **id** | string  | The ID of the Deployment for Azure Cognitive Services Account. | 