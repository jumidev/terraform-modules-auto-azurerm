# azurerm_cognitive_deployment

Manages a Cognitive Services Account Deployment.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "cognitive_services/cognitive_deployment"   
}

inputs = {
   name = "The name of the Cognitive Services Account Deployment..."   
   # cognitive_account_id → set in tfstate_inputs
   model = {
      format = "..."      
      name = "..."      
      version = "..."      
   }
   
   scale = {
      type = "..."      
   }
   
}

tfstate_inputs = {
   cognitive_account_id = "path/to/cognitive_account_component:id"   
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
| **name** | string |  The name of the Cognitive Services Account Deployment. Changing this forces a new resource to be created. | 
| **cognitive_account_id** | string |  The ID of the Cognitive Services Account. Changing this forces a new resource to be created. | 
| **model** | [block](#model-block-structure) |  A `model` block. Changing this forces a new resource to be created. | 
| **scale** | [block](#scale-block-structure) |  A `scale` block. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **rai_policy_name** | string |  -  |  -  |  The name of RAI policy. | 
| **version_upgrade_option** | string |  `OnceNewDefaultVersionAvailable`  |  `OnceNewDefaultVersionAvailable`, `OnceCurrentVersionExpired`, `NoAutoUpgrade`  |  Deployment model version upgrade option. Possible values are `OnceNewDefaultVersionAvailable`, `OnceCurrentVersionExpired`, and `NoAutoUpgrade`. Defaults to `OnceNewDefaultVersionAvailable`. Changing this forces a new resource to be created. | 

### `model` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `format` | string | Yes | - | The format of the Cognitive Services Account Deployment model. Changing this forces a new resource to be created. Possible value is 'OpenAI'. |
| `name` | string | Yes | - | The name of the Cognitive Services Account Deployment model. Changing this forces a new resource to be created. |
| `version` | string | Yes | - | The version of Cognitive Services Account Deployment model. |

### `scale` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The name of the SKU. Ex - 'Standard' or 'P3'. It is typically a letter+number code. Changing this forces a new resource to be created. |
| `tier` | string | No | - | Possible values are 'Free', 'Basic', 'Standard', 'Premium', 'Enterprise'. Changing this forces a new resource to be created. |
| `size` | string | No | - | The SKU size. When the name field is the combination of tier and some other value, this would be the standalone code. Changing this forces a new resource to be created. |
| `family` | string | No | - | If the service has different generations of hardware, for the same SKU, then that can be captured here. Changing this forces a new resource to be created. |
| `capacity` | string | No | 1 | Tokens-per-Minute (TPM). The unit of measure for this field is in the thousands of Tokens-per-Minute. Defaults to '1' which means that the limitation is '1000' tokens per minute. If the resources SKU supports scale in/out then the capacity field should be included in the resources' configuration. If the scale in/out is not supported by the resources SKU then this field can be safely omitted. For more information about TPM please see the [product documentation](https://learn.microsoft.com/azure/ai-services/openai/how-to/quota?tabs=rest). |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Deployment for Azure Cognitive Services Account. | 

Additionally, all variables are provided as outputs.
