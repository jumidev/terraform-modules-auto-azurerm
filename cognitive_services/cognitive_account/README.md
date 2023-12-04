# azurerm_cognitive_account

Manages a Cognitive Services Account.-> **Note:** Version v2.65.0 of the Azure Provider and later will attempt to Purge the Cognitive Account during deletion. This feature can be disabled using the `features` block within the `provider` block, see [the provider documentation on the features block](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/features-block) for more information.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cognitive_services/cognitive_account" 
}

inputs = {
   name = "name of cognitive_account" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   kind = "kind of cognitive_account" 
   sku_name = "sku_name of cognitive_account" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  Specifies the name of the Cognitive Service Account. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the resource group in which the Cognitive Service Account is created. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **kind** | string |  `Academic`, `AnomalyDetector`, `Bing.Autosuggest`, `Bing.Autosuggest.v7`, `Bing.CustomSearch`, `Bing.Search`, `Bing.Search.v7`, `Bing.Speech`, `Bing.SpellCheck`, `Bing.SpellCheck.v7`, `CognitiveServices`, `ComputerVision`, `ContentModerator`, `CustomSpeech`, `CustomVision.Prediction`, `CustomVision.Training`, `Emotion`, `Face`, `FormRecognizer`, `ImmersiveReader`, `LUIS`, `LUIS.Authoring`, `MetricsAdvisor`, `OpenAI`, `Personalizer`, `QnAMaker`, `Recommendations`, `SpeakerRecognition`, `Speech`, `SpeechServices`, `SpeechTranslation`, `TextAnalytics`, `TextTranslation`, `WebLM`  |  Specifies the type of Cognitive Service Account that should be created. Possible values are `Academic`, `AnomalyDetector`, `Bing.Autosuggest`, `Bing.Autosuggest.v7`, `Bing.CustomSearch`, `Bing.Search`, `Bing.Search.v7`, `Bing.Speech`, `Bing.SpellCheck`, `Bing.SpellCheck.v7`, `CognitiveServices`, `ComputerVision`, `ContentModerator`, `CustomSpeech`, `CustomVision.Prediction`, `CustomVision.Training`, `Emotion`, `Face`, `FormRecognizer`, `ImmersiveReader`, `LUIS`, `LUIS.Authoring`, `MetricsAdvisor`, `OpenAI`, `Personalizer`, `QnAMaker`, `Recommendations`, `SpeakerRecognition`, `Speech`, `SpeechServices`, `SpeechTranslation`, `TextAnalytics`, `TextTranslation` and `WebLM`. Changing this forces a new resource to be created. | 
| **sku_name** | string |  `F0`, `F1`, `S0`, `S`, `S1`, `S2`, `S3`, `S4`, `S5`, `S6`, `P0`, `P1`, `P2`, `E0`, `DC0`  |  Specifies the SKU Name for this Cognitive Service Account. Possible values are `F0`, `F1`, `S0`, `S`, `S1`, `S2`, `S3`, `S4`, `S5`, `S6`, `P0`, `P1`, `P2`, `E0` and `DC0`. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **custom_subdomain_name** | string |  -  |  The subdomain name used for token-based authentication. Changing this forces a new resource to be created. | 
| **dynamic_throttling_enabled** | bool |  -  |  Whether to enable the dynamic throttling for this Cognitive Service Account. | 
| **customer_managed_key** | [block](#customer_managed_key-block-structure) |  -  |  A `customer_managed_key` block. | 
| **fqdns** | string |  -  |  List of FQDNs allowed for the Cognitive Account. | 
| **identity** | [block](#identity-block-structure) |  -  |  An `identity` block. | 
| **local_auth_enabled** | bool |  `True`  |  Whether local authentication methods is enabled for the Cognitive Account. Defaults to `true`. | 
| **metrics_advisor_aad_client_id** | string |  -  |  The Azure AD Client ID (Application ID). This attribute is only set when kind is `MetricsAdvisor`. Changing this forces a new resource to be created. | 
| **metrics_advisor_aad_tenant_id** | string |  -  |  The Azure AD Tenant ID. This attribute is only set when kind is `MetricsAdvisor`. Changing this forces a new resource to be created. | 
| **metrics_advisor_super_user_name** | string |  -  |  The super user of Metrics Advisor. This attribute is only set when kind is `MetricsAdvisor`. Changing this forces a new resource to be created. | 
| **metrics_advisor_website_name** | string |  -  |  The website name of Metrics Advisor. This attribute is only set when kind is `MetricsAdvisor`. Changing this forces a new resource to be created. | 
| **network_acls** | [block](#network_acls-block-structure) |  -  |  A `network_acls` block. | 
| **outbound_network_access_restricted** | bool |  `False`  |  Whether outbound network access is restricted for the Cognitive Account. Defaults to `false`. | 
| **public_network_access_enabled** | bool |  `True`  |  Whether public network access is allowed for the Cognitive Account. Defaults to `true`. | 
| **qna_runtime_endpoint** | string |  -  |  A URL to link a QnAMaker cognitive account to a QnA runtime. | 
| **custom_question_answering_search_service_id** | string |  -  |  If `kind` is `TextAnalytics` this specifies the ID of the Search service. | 
| **custom_question_answering_search_service_key** | string |  -  |  If `kind` is `TextAnalytics` this specifies the key of the Search service. | 
| **storage** | [block](#storage-block-structure) |  -  |  A `storage` block. | 
| **tags** | map |  -  |  A mapping of tags to assign to the resource. | 

### `storage` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `storage_account_id` | string | Yes | - | Full resource id of a Microsoft.Storage resource. |
| `identity_client_id` | string | No | - | The client ID of the managed identity associated with the storage resource. |

### `virtual_network_rules` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `subnet_id` | string | Yes | - | The ID of the subnet which should be able to access this Cognitive Account. |
| `ignore_missing_vnet_service_endpoint` | bool | No | False | Whether ignore missing vnet service endpoint or not. Default to 'false'. |

### `customer_managed_key` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `key_vault_key_id` | string | Yes | - | The ID of the Key Vault Key which should be used to Encrypt the data in this Cognitive Account. |
| `identity_client_id` | string | No | - | The Client ID of the User Assigned Identity that has access to the key. This property only needs to be specified when there're multiple identities attached to the Cognitive Account. |

### `network_acls` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `default_action` | string | Yes | - | The Default Action to use when no rules match from 'ip_rules' / 'virtual_network_rules'. Possible values are 'Allow' and 'Deny'. |
| `ip_rules` | list | No | - | One or more IP Addresses, or CIDR Blocks which should be able to access the Cognitive Account. |
| `virtual_network_rules` | [block](#network_acls-block-structure) | No | - | A 'virtual_network_rules' block. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Cognitive Account. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Cognitive Account. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Cognitive Service Account. | 
| **endpoint** | string | No  | The endpoint used to connect to the Cognitive Service Account. | 
| **identity** | block | No  | An `identity` block. | 
| **primary_access_key** | string | Yes  | A primary access key which can be used to connect to the Cognitive Service Account. | 
| **secondary_access_key** | string | Yes  | The secondary access key which can be used to connect to the Cognitive Service Account. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
