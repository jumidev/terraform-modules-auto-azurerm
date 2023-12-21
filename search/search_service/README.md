# azurerm_search_service

Manages a Search Service.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "search/search_service"   
}

inputs = {
   location = "${location}"   
   name = "The Name which should be used for this Search Service..."   
   resource_group_name = "${resource_group}"   
   sku = "The SKU which should be used for this Search Service..."   
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
| **location** | string |  -  |  The Azure Region where the Search Service should exist. Changing this forces a new Search Service to be created. | 
| **name** | string |  -  |  The Name which should be used for this Search Service. Changing this forces a new Search Service to be created. | 
| **resource_group_name** | string |  -  |  The name of the Resource Group where the Search Service should exist. Changing this forces a new Search Service to be created. | 
| **sku** | string |  `basic`, `free`, `standard`, `standard2`, `standard3`, `storage_optimized_l1`, `storage_optimized_l2`  |  The SKU which should be used for this Search Service. Possible values include `basic`, `free`, `standard`, `standard2`, `standard3`, `storage_optimized_l1` and `storage_optimized_l2`. Changing this forces a new Search Service to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **allowed_ips** | list |  -  |  -  |  Specifies a list of inbound IPv4 or CIDRs that are allowed to access the Search Service. If the incoming IP request is from an IP address which is not included in the `allowed_ips` it will be blocked by the Search Services firewall. | 
| **authentication_failure_mode** | string |  -  |  `http401WithBearerChallenge`, `http403`  |  Specifies the response that the Search Service should return for requests that fail authentication. Possible values include `http401WithBearerChallenge` or `http403`. | 
| **customer_managed_key_enforcement_enabled** | bool |  `False`  |  -  |  Specifies whether the Search Service should enforce that non-customer resources are encrypted. Defaults to `false`. | 
| **hosting_mode** | string |  `default`  |  `highDensity`, `default`  |  Specifies the Hosting Mode, which allows for High Density partitions (that allow for up to 1000 indexes) should be supported. Possible values are `highDensity` or `default`. Defaults to `default`. Changing this forces a new Search Service to be created. | 
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **local_authentication_enabled** | bool |  `True`  |  -  |  Specifies whether the Search Service allows authenticating using API Keys? Defaults to `true`. | 
| **partition_count** | string |  `1`  |  `free`, `basic`, `1`, `2`, `3`, `4`, `6`, `12`  |  Specifies the number of partitions which should be created. This field cannot be set when using a `free` or `basic` sku ([see the Microsoft documentation](https://learn.microsoft.com/azure/search/search-sku-tier)). Possible values include `1`, `2`, `3`, `4`, `6`, or `12`. Defaults to `1`. | 
| **public_network_access_enabled** | bool |  `True`  |  -  |  Specifies whether Public Network Access is allowed for this resource. Defaults to `true`. | 
| **replica_count** | string |  -  |  `free`  |  Specifies the number of Replica's which should be created for this Search Service. This field cannot be set when using a `free` sku ([see the Microsoft documentation](https://learn.microsoft.com/azure/search/search-sku-tier)). | 
| **semantic_search_sku** | string |  -  |  `free`, `standard`  |  Specifies the Semantic Search SKU which should be used for this Search Service. Possible values include `free` and `standard`. | 
| **tags** | map |  -  |  -  |  Specifies a mapping of tags which should be assigned to this Search Service. | 

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
