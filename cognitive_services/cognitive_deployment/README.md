# azurerm_cognitive_deployment

Manages a Cognitive Services Account Deployment.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cognitive_services/cognitive_deployment" 
}

inputs = {
   name = "name of cognitive_deployment" 
   cognitive_account_id = "cognitive_account_id of cognitive_deployment" 
   model = "model of cognitive_deployment" 
   scale = "scale of cognitive_deployment" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name of the Cognitive Services Account Deployment. Changing this forces a new resource to be created. | 
| **var.cognitive_account_id** | string | True | -  |  -  |  The ID of the Cognitive Services Account. Changing this forces a new resource to be created. | 
| **var.model** | block | True | -  |  -  |  A `model` block. Changing this forces a new resource to be created. | 
| **var.scale** | block | True | -  |  -  |  A `scale` block. | 
| **var.rai_policy_name** | string | False | -  |  -  |  The name of RAI policy. | 
| **var.version_upgrade_option** | string | False | `OnceNewDefaultVersionAvailable`  |  `OnceNewDefaultVersionAvailable`, `OnceCurrentVersionExpired`, `NoAutoUpgrade`  |  Deployment model version upgrade option. Possible values are `OnceNewDefaultVersionAvailable`, `OnceCurrentVersionExpired`, and `NoAutoUpgrade`. Defaults to `OnceNewDefaultVersionAvailable`. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Deployment for Azure Cognitive Services Account. | 

Additionally, all variables are provided as outputs.
