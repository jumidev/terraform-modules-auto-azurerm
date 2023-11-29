# azurerm_redis_enterprise_cluster

Manages a Redis Enterprise Cluster.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Redis Enterprise Cluster. Changing this forces a new Redis Enterprise Cluster to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Redis Enterprise Cluster should exist. Changing this forces a new Redis Enterprise Cluster to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Redis Enterprise Cluster should exist. Changing this forces a new Redis Enterprise Cluster to be created. | 
| **sku_name** | string | True | -  |  `Enterprise_E5`, `Enterprise_E10`, `Enterprise_E20"`, `Enterprise_E50`, `Enterprise_E100`, `Enterprise_E200`, `Enterprise_E400`, `EnterpriseFlash_F300`, `EnterpriseFlash_F700`, `EnterpriseFlash_F1500`  | The `sku_name` is comprised of two segments separated by a hyphen (e.g. `Enterprise_E10-2`). The first segment of the `sku_name` defines the `name` of the SKU, possible values are `Enterprise_E5`, `Enterprise_E10`, `Enterprise_E20"`, `Enterprise_E50`, `Enterprise_E100`, `Enterprise_E200`, `Enterprise_E400`, `EnterpriseFlash_F300`, `EnterpriseFlash_F700` or `EnterpriseFlash_F1500`. The second segment defines the `capacity` of the `sku_name`, possible values for `Enteprise` SKUs are (`2`, `4`, `6`, ...). Possible values for `EnterpriseFlash` SKUs are (`3`, `9`, `15`, ...). Changing this forces a new Redis Enterprise Cluster to be created. | 
| **minimum_tls_version** | string | False | `1.2`  |  `1.0`, `1.1`, `1.2`  | The minimum TLS version. Possible values are `1.0`, `1.1` and `1.2`. Defaults to `1.2`. Changing this forces a new Redis Enterprise Cluster to be created. | 
| **zones** | string | False | -  |  -  | Specifies a list of Availability Zones in which this Redis Enterprise Cluster should be located. Changing this forces a new Redis Enterprise Cluster to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Redis Enterprise Cluster. | 

