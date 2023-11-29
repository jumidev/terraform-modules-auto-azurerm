# azurerm_search_service

Manages a Search Service.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **location** | string | True | -  |  -  | The Azure Region where the Search Service should exist. Changing this forces a new Search Service to be created. | 
| **name** | string | True | -  |  -  | The Name which should be used for this Search Service. Changing this forces a new Search Service to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Search Service should exist. Changing this forces a new Search Service to be created. | 
| **sku** | string | True | -  |  `basic`, `free`, `standard`, `standard2`, `standard3`, `storage_optimized_l1`, `storage_optimized_l2`  | The SKU which should be used for this Search Service. Possible values include `basic`, `free`, `standard`, `standard2`, `standard3`, `storage_optimized_l1` and `storage_optimized_l2`. Changing this forces a new Search Service to be created. | 
| **allowed_ips** | string | False | -  |  -  | Specifies a list of inbound IPv4 or CIDRs that are allowed to access the Search Service. If the incoming IP request is from an IP address which is not included in the `allowed_ips` it will be blocked by the Search Services firewall. | 
| **authentication_failure_mode** | string | False | -  |  `http401WithBearerChallenge`, `http403`  | Specifies the response that the Search Service should return for requests that fail authentication. Possible values include `http401WithBearerChallenge` or `http403`. | 
| **customer_managed_key_enforcement_enabled** | bool | False | `False`  |  -  | Specifies whether the Search Service should enforce that non-customer resources are encrypted. Defaults to `false`. | 
| **hosting_mode** | string | False | `default`  |  `highDensity`, `default`  | Specifies the Hosting Mode, which allows for High Density partitions (that allow for up to 1000 indexes) should be supported. Possible values are `highDensity` or `default`. Defaults to `default`. Changing this forces a new Search Service to be created. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **local_authentication_enabled** | bool | False | `True`  |  -  | Specifies whether the Search Service allows authenticating using API Keys? Defaults to `true`. | 
| **partition_count** | string | False | `1`  |  `1`, `2`, `3`, `4`, `6`, `12`  | Specifies the number of partitions which should be created. This field cannot be set when using a `free` or `basic` sku ([see the Microsoft documentation](https://learn.microsoft.com/azure/search/search-sku-tier)). Possible values include `1`, `2`, `3`, `4`, `6`, or `12`. Defaults to `1`. | 
| **public_network_access_enabled** | bool | False | `True`  |  -  | Specifies whether Public Network Access is allowed for this resource. Defaults to `true`. | 
| **replica_count** | int | False | -  |  -  | Specifies the number of Replica's which should be created for this Search Service. This field cannot be set when using a `free` sku ([see the Microsoft documentation](https://learn.microsoft.com/azure/search/search-sku-tier)). | 
| **semantic_search_sku** | string | False | -  |  `free`, `standard`  | Specifies the Semantic Search SKU which should be used for this Search Service. Possible values include `free` and `standard`. | 
| **tags** | map | False | -  |  -  | Specifies a mapping of tags which should be assigned to this Search Service. | 

