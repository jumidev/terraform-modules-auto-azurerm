# azurerm_cognitive_account

Manages a Cognitive Services Account.-> **Note:** Version v2.65.0 of the Azure Provider and later will attempt to Purge the Cognitive Account during deletion. This feature can be disabled using the `features` block within the `provider` block, see [the provider documentation on the features block](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/features-block) for more information.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Cognitive Service Account. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Cognitive Service Account is created. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **kind** | string | True | -  |  `Academic`, `AnomalyDetector`, `Bing.Autosuggest`, `Bing.Autosuggest.v7`, `Bing.CustomSearch`, `Bing.Search`, `Bing.Search.v7`, `Bing.Speech`, `Bing.SpellCheck`, `Bing.SpellCheck.v7`, `CognitiveServices`, `ComputerVision`, `ContentModerator`, `CustomSpeech`, `CustomVision.Prediction`, `CustomVision.Training`, `Emotion`, `Face`, `FormRecognizer`, `ImmersiveReader`, `LUIS`, `LUIS.Authoring`, `MetricsAdvisor`, `OpenAI`, `Personalizer`, `QnAMaker`, `Recommendations`, `SpeakerRecognition`, `Speech`, `SpeechServices`, `SpeechTranslation`, `TextAnalytics`, `TextTranslation`, `WebLM`  | Specifies the type of Cognitive Service Account that should be created. Possible values are `Academic`, `AnomalyDetector`, `Bing.Autosuggest`, `Bing.Autosuggest.v7`, `Bing.CustomSearch`, `Bing.Search`, `Bing.Search.v7`, `Bing.Speech`, `Bing.SpellCheck`, `Bing.SpellCheck.v7`, `CognitiveServices`, `ComputerVision`, `ContentModerator`, `CustomSpeech`, `CustomVision.Prediction`, `CustomVision.Training`, `Emotion`, `Face`, `FormRecognizer`, `ImmersiveReader`, `LUIS`, `LUIS.Authoring`, `MetricsAdvisor`, `OpenAI`, `Personalizer`, `QnAMaker`, `Recommendations`, `SpeakerRecognition`, `Speech`, `SpeechServices`, `SpeechTranslation`, `TextAnalytics`, `TextTranslation` and `WebLM`. Changing this forces a new resource to be created. | 
| **sku_name** | string | True | -  |  `F0`, `F1`, `S0`, `S`, `S1`, `S2`, `S3`, `S4`, `S5`, `S6`, `P0`, `P1`, `P2`, `E0`, `DC0`  | Specifies the SKU Name for this Cognitive Service Account. Possible values are `F0`, `F1`, `S0`, `S`, `S1`, `S2`, `S3`, `S4`, `S5`, `S6`, `P0`, `P1`, `P2`, `E0` and `DC0`. | 
| **custom_subdomain_name** | string | False | -  |  -  | The subdomain name used for token-based authentication. Changing this forces a new resource to be created. | 
| **dynamic_throttling_enabled** | bool | False | -  |  -  | Whether to enable the dynamic throttling for this Cognitive Service Account. | 
| **customer_managed_key** | block | False | -  |  -  | A `customer_managed_key` block. | 
| **fqdns** | string | False | -  |  -  | List of FQDNs allowed for the Cognitive Account. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **local_auth_enabled** | bool | False | `True`  |  -  | Whether local authentication methods is enabled for the Cognitive Account. Defaults to `true`. | 
| **metrics_advisor_aad_client_id** | string | False | -  |  -  | The Azure AD Client ID (Application ID). This attribute is only set when kind is `MetricsAdvisor`. Changing this forces a new resource to be created. | 
| **metrics_advisor_aad_tenant_id** | string | False | -  |  -  | The Azure AD Tenant ID. This attribute is only set when kind is `MetricsAdvisor`. Changing this forces a new resource to be created. | 
| **metrics_advisor_super_user_name** | string | False | -  |  -  | The super user of Metrics Advisor. This attribute is only set when kind is `MetricsAdvisor`. Changing this forces a new resource to be created. | 
| **metrics_advisor_website_name** | string | False | -  |  -  | The website name of Metrics Advisor. This attribute is only set when kind is `MetricsAdvisor`. Changing this forces a new resource to be created. | 
| **network_acls** | block | False | -  |  -  | A `network_acls` block. | 
| **outbound_network_access_restricted** | bool | False | `False`  |  -  | Whether outbound network access is restricted for the Cognitive Account. Defaults to `false`. | 
| **public_network_access_enabled** | bool | False | `True`  |  -  | Whether public network access is allowed for the Cognitive Account. Defaults to `true`. | 
| **qna_runtime_endpoint** | string | False | -  |  -  | A URL to link a QnAMaker cognitive account to a QnA runtime. | 
| **custom_question_answering_search_service_id** | string | False | -  |  -  | If `kind` is `TextAnalytics` this specifies the ID of the Search service. | 
| **custom_question_answering_search_service_key** | string | False | -  |  -  | If `kind` is `TextAnalytics` this specifies the key of the Search service. | 
| **storage** | block | False | -  |  -  | A `storage` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

