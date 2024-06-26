# azurerm_redis_enterprise_cluster



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "redis_enterprise/redis_enterprise_cluster"   
}
inputs = {
   name = "The name which should be used for this Redis Enterprise Cluster..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   sku_name = "The `sku_name` is comprised of two segments separated by a hyphen (e..."   
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
| **name** | string |  -  |  The name which should be used for this Redis Enterprise Cluster. Changing this forces a new Redis Enterprise Cluster to be created. | 
| **resource_group_name** | string |  -  |  The name of the Resource Group where the Redis Enterprise Cluster should exist. Changing this forces a new Redis Enterprise Cluster to be created. | 
| **location** | string |  -  |  The Azure Region where the Redis Enterprise Cluster should exist. Changing this forces a new Redis Enterprise Cluster to be created. | 
| **sku_name** | string |  `Enterprise_E5`, `Enterprise_E10`, `Enterprise_E20`, `Enterprise_E50`, `Enterprise_E100`, `Enterprise_E200`, `Enterprise_E400`, `EnterpriseFlash_F300`, `EnterpriseFlash_F700`, `EnterpriseFlash_F1500`  |  The `sku_name` is comprised of two segments separated by a hyphen (e.g. `Enterprise_E10-2`). The first segment of the `sku_name` defines the `name` of the SKU, possible values are `Enterprise_E5`, `Enterprise_E10`, `Enterprise_E20"`, `Enterprise_E50`, `Enterprise_E100`, `Enterprise_E200`, `Enterprise_E400`, `EnterpriseFlash_F300`, `EnterpriseFlash_F700` or `EnterpriseFlash_F1500`. The second segment defines the `capacity` of the `sku_name`, possible values for `Enteprise` SKUs are (`2`, `4`, `6`, ...). Possible values for `EnterpriseFlash` SKUs are (`3`, `9`, `15`, ...). Changing this forces a new Redis Enterprise Cluster to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **minimum_tls_version** | string |  `1.2`  |  `1.0`, `1.1`, `1.2`  |  The minimum TLS version. Possible values are `1.0`, `1.1` and `1.2`. Defaults to `1.2`. Changing this forces a new Redis Enterprise Cluster to be created. | 
| **zones** | list |  -  |  -  |  Specifies a list of Availability Zones in which this Redis Enterprise Cluster should be located. Changing this forces a new Redis Enterprise Cluster to be created. | 
| **tags** | map |  -  |  -  |  A mapping of tags which should be assigned to the Redis Enterprise Cluster. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **tags** | map | No  | A mapping of tags which should be assigned to the Redis Enterprise Cluster. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Redis Enterprise Cluster. | 
| **hostname** | string | No  | DNS name of the cluster endpoint. | 

Additionally, all variables are provided as outputs.
