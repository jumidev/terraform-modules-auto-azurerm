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
| **var.model** | block | True | -  |  -  |  A `model` block. Changing this forces a new resource to be created. | | `model` block structure: || 
|   format (string): (REQUIRED) The format of the Cognitive Services Account Deployment model. Changing this forces a new resource to be created. Possible value is 'OpenAI'. ||
|   name (string): (REQUIRED) The name of the Cognitive Services Account Deployment model. Changing this forces a new resource to be created. ||
|   version (string): (REQUIRED) The version of Cognitive Services Account Deployment model. ||

| **var.scale** | block | True | -  |  -  |  A `scale` block. | | `scale` block structure: || 
|   type (string): (REQUIRED) The name of the SKU. Ex - 'Standard' or 'P3'. It is typically a letter+number code. Changing this forces a new resource to be created. ||
|   tier (string): Possible values are 'Free', 'Basic', 'Standard', 'Premium', 'Enterprise'. Changing this forces a new resource to be created. ||
|   size (string): The SKU size. When the name field is the combination of tier and some other value, this would be the standalone code. Changing this forces a new resource to be created. ||
|   family (string): If the service has different generations of hardware, for the same SKU, then that can be captured here. Changing this forces a new resource to be created. ||
|   capacity (string): Tokens-per-Minute (TPM). The unit of measure for this field is in the thousands of Tokens-per-Minute. Defaults to '1' which means that the limitation is '1000' tokens per minute. If the resources SKU supports scale in/out then the capacity field should be included in the resources' configuration. If the scale in/out is not supported by the resources SKU then this field can be safely omitted. For more information about TPM please see the [product documentation](https://learn.microsoft.com/azure/ai-services/openai/how-to/quota?tabs=rest). ||

| **var.rai_policy_name** | string | False | -  |  -  |  The name of RAI policy. | 
| **var.version_upgrade_option** | string | False | `OnceNewDefaultVersionAvailable`  |  `OnceNewDefaultVersionAvailable`, `OnceCurrentVersionExpired`, `NoAutoUpgrade`  |  Deployment model version upgrade option. Possible values are `OnceNewDefaultVersionAvailable`, `OnceCurrentVersionExpired`, and `NoAutoUpgrade`. Defaults to `OnceNewDefaultVersionAvailable`. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Deployment for Azure Cognitive Services Account. | 

Additionally, all variables are provided as outputs.
