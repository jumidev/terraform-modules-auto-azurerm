# azurerm_cognitive_account

Manages a Cognitive Services Account.-> **Note:** Version v2.65.0 of the Azure Provider and later will attempt to Purge the Cognitive Account during deletion. This feature can be disabled using the `features` block within the `provider` block, see [the provider documentation on the features block](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/features-block) for more information.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the Cognitive Service Account. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which the Cognitive Service Account is created. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.kind** | string | True | -  |  `Academic`, `AnomalyDetector`, `Bing.Autosuggest`, `Bing.Autosuggest.v7`, `Bing.CustomSearch`, `Bing.Search`, `Bing.Search.v7`, `Bing.Speech`, `Bing.SpellCheck`, `Bing.SpellCheck.v7`, `CognitiveServices`, `ComputerVision`, `ContentModerator`, `CustomSpeech`, `CustomVision.Prediction`, `CustomVision.Training`, `Emotion`, `Face`, `FormRecognizer`, `ImmersiveReader`, `LUIS`, `LUIS.Authoring`, `MetricsAdvisor`, `OpenAI`, `Personalizer`, `QnAMaker`, `Recommendations`, `SpeakerRecognition`, `Speech`, `SpeechServices`, `SpeechTranslation`, `TextAnalytics`, `TextTranslation`, `WebLM`  |  Specifies the type of Cognitive Service Account that should be created. Possible values are `Academic`, `AnomalyDetector`, `Bing.Autosuggest`, `Bing.Autosuggest.v7`, `Bing.CustomSearch`, `Bing.Search`, `Bing.Search.v7`, `Bing.Speech`, `Bing.SpellCheck`, `Bing.SpellCheck.v7`, `CognitiveServices`, `ComputerVision`, `ContentModerator`, `CustomSpeech`, `CustomVision.Prediction`, `CustomVision.Training`, `Emotion`, `Face`, `FormRecognizer`, `ImmersiveReader`, `LUIS`, `LUIS.Authoring`, `MetricsAdvisor`, `OpenAI`, `Personalizer`, `QnAMaker`, `Recommendations`, `SpeakerRecognition`, `Speech`, `SpeechServices`, `SpeechTranslation`, `TextAnalytics`, `TextTranslation` and `WebLM`. Changing this forces a new resource to be created. | 
| **var.sku_name** | string | True | -  |  `F0`, `F1`, `S0`, `S`, `S1`, `S2`, `S3`, `S4`, `S5`, `S6`, `P0`, `P1`, `P2`, `E0`, `DC0`  |  Specifies the SKU Name for this Cognitive Service Account. Possible values are `F0`, `F1`, `S0`, `S`, `S1`, `S2`, `S3`, `S4`, `S5`, `S6`, `P0`, `P1`, `P2`, `E0` and `DC0`. | 
| **var.custom_subdomain_name** | string | False | -  |  -  |  The subdomain name used for token-based authentication. Changing this forces a new resource to be created. | 
| **var.dynamic_throttling_enabled** | bool | False | -  |  -  |  Whether to enable the dynamic throttling for this Cognitive Service Account. | 
| **var.customer_managed_key** | block | False | -  |  -  |  A `customer_managed_key` block. | 
| **var.fqdns** | string | False | -  |  -  |  List of FQDNs allowed for the Cognitive Account. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | 
| **var.local_auth_enabled** | bool | False | `True`  |  -  |  Whether local authentication methods is enabled for the Cognitive Account. Defaults to `true`. | 
| **var.metrics_advisor_aad_client_id** | string | False | -  |  -  |  The Azure AD Client ID (Application ID). This attribute is only set when kind is `MetricsAdvisor`. Changing this forces a new resource to be created. | 
| **var.metrics_advisor_aad_tenant_id** | string | False | -  |  -  |  The Azure AD Tenant ID. This attribute is only set when kind is `MetricsAdvisor`. Changing this forces a new resource to be created. | 
| **var.metrics_advisor_super_user_name** | string | False | -  |  -  |  The super user of Metrics Advisor. This attribute is only set when kind is `MetricsAdvisor`. Changing this forces a new resource to be created. | 
| **var.metrics_advisor_website_name** | string | False | -  |  -  |  The website name of Metrics Advisor. This attribute is only set when kind is `MetricsAdvisor`. Changing this forces a new resource to be created. | 
| **var.network_acls** | block | False | -  |  -  |  A `network_acls` block. | 
| **var.outbound_network_access_restricted** | bool | False | `False`  |  -  |  Whether outbound network access is restricted for the Cognitive Account. Defaults to `false`. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  -  |  Whether public network access is allowed for the Cognitive Account. Defaults to `true`. | 
| **var.qna_runtime_endpoint** | string | False | -  |  -  |  A URL to link a QnAMaker cognitive account to a QnA runtime. | 
| **var.custom_question_answering_search_service_id** | string | False | -  |  -  |  If `kind` is `TextAnalytics` this specifies the ID of the Search service. | 
| **var.custom_question_answering_search_service_key** | string | False | -  |  -  |  If `kind` is `TextAnalytics` this specifies the key of the Search service. | 
| **var.storage** | block | False | -  |  -  |  A `storage` block. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **kind** | string  | - | 
| **sku_name** | string  | - | 
| **custom_subdomain_name** | string  | - | 
| **dynamic_throttling_enabled** | bool  | - | 
| **customer_managed_key** | block  | - | 
| **fqdns** | string  | - | 
| **identity** | block  | - | 
| **local_auth_enabled** | bool  | - | 
| **metrics_advisor_aad_client_id** | string  | - | 
| **metrics_advisor_aad_tenant_id** | string  | - | 
| **metrics_advisor_super_user_name** | string  | - | 
| **metrics_advisor_website_name** | string  | - | 
| **network_acls** | block  | - | 
| **outbound_network_access_restricted** | bool  | - | 
| **public_network_access_enabled** | bool  | - | 
| **qna_runtime_endpoint** | string  | - | 
| **custom_question_answering_search_service_id** | string  | - | 
| **custom_question_answering_search_service_key** | string  | - | 
| **storage** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Cognitive Service Account. | 
| **endpoint** | string  | The endpoint used to connect to the Cognitive Service Account. | 
| **identity** | block  | An `identity` block. | 
| **primary_access_key** | string  | A primary access key which can be used to connect to the Cognitive Service Account. | 
| **secondary_access_key** | string  | The secondary access key which can be used to connect to the Cognitive Service Account. | 
| **principal_id** | string  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string  | The Tenant ID associated with this Managed Service Identity. | 