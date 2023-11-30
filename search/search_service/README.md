# azurerm_search_service

Manages a Search Service.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "search/search_service" 
}

inputs = {
   location = "${location}" 
   name = "name of search_service" 
   resource_group_name = "${resource_group}" 
   sku = "sku of search_service" 
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
| **var.location** | string | True | -  |  -  |  The Azure Region where the Search Service should exist. Changing this forces a new Search Service to be created. | 
| **var.name** | string | True | -  |  -  |  The Name which should be used for this Search Service. Changing this forces a new Search Service to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group where the Search Service should exist. Changing this forces a new Search Service to be created. | 
| **var.sku** | string | True | -  |  `basic`, `free`, `standard`, `standard2`, `standard3`, `storage_optimized_l1`, `storage_optimized_l2`  |  The SKU which should be used for this Search Service. Possible values include `basic`, `free`, `standard`, `standard2`, `standard3`, `storage_optimized_l1` and `storage_optimized_l2`. Changing this forces a new Search Service to be created. | 
| **var.allowed_ips** | string | False | -  |  -  |  Specifies a list of inbound IPv4 or CIDRs that are allowed to access the Search Service. If the incoming IP request is from an IP address which is not included in the `allowed_ips` it will be blocked by the Search Services firewall. | 
| **var.authentication_failure_mode** | string | False | -  |  `http401WithBearerChallenge`, `http403`  |  Specifies the response that the Search Service should return for requests that fail authentication. Possible values include `http401WithBearerChallenge` or `http403`. | 
| **var.customer_managed_key_enforcement_enabled** | bool | False | `False`  |  -  |  Specifies whether the Search Service should enforce that non-customer resources are encrypted. Defaults to `false`. | 
| **var.hosting_mode** | string | False | `default`  |  `highDensity`, `default`  |  Specifies the Hosting Mode, which allows for High Density partitions (that allow for up to 1000 indexes) should be supported. Possible values are `highDensity` or `default`. Defaults to `default`. Changing this forces a new Search Service to be created. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | 
| **var.local_authentication_enabled** | bool | False | `True`  |  -  |  Specifies whether the Search Service allows authenticating using API Keys? Defaults to `true`. | 
| **var.partition_count** | string | False | `1`  |  `1`, `2`, `3`, `4`, `6`, `12`  |  Specifies the number of partitions which should be created. This field cannot be set when using a `free` or `basic` sku ([see the Microsoft documentation](https://learn.microsoft.com/azure/search/search-sku-tier)). Possible values include `1`, `2`, `3`, `4`, `6`, or `12`. Defaults to `1`. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  -  |  Specifies whether Public Network Access is allowed for this resource. Defaults to `true`. | 
| **var.replica_count** | int | False | -  |  -  |  Specifies the number of Replica's which should be created for this Search Service. This field cannot be set when using a `free` sku ([see the Microsoft documentation](https://learn.microsoft.com/azure/search/search-sku-tier)). | 
| **var.semantic_search_sku** | string | False | -  |  `free`, `standard`  |  Specifies the Semantic Search SKU which should be used for this Search Service. Possible values include `free` and `standard`. | 
| **var.tags** | map | False | -  |  -  |  Specifies a mapping of tags which should be assigned to this Search Service. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Search Service. The only possible value is 'SystemAssigned'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Search Service. | 
| **primary_key** | string | No  | The Primary Key used for Search Service Administration. | 
| **query_keys** | block | No  | A `query_keys` block. | 
| **secondary_key** | string | No  | The Secondary Key used for Search Service Administration. | 
| **key** | string | No  | The value of this Query Key. | 
| **name** | string | No  | The name of this Query Key. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
