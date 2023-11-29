# azurerm_elastic_cloud_elasticsearch

Manages an Elasticsearch in Elastic Cloud.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **elastic_cloud_email_address** | string | True | -  |  -  | Specifies the Email Address which should be associated with this Elasticsearch account. Changing this forces a new Elasticsearch to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Elasticsearch resource should exist. Changing this forces a new Elasticsearch to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Elasticsearch resource. Changing this forces a new Elasticsearch to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Elasticsearch resource should exist. Changing this forces a new Elasticsearch to be created. | 
| **sku_name** | string | True | -  |  -  | Specifies the name of the SKU for this Elasticsearch. Changing this forces a new Elasticsearch to be created. | 
| **logs** | block | False | -  |  -  | A `logs` block. | 
| **monitoring_enabled** | bool | False | `True`  |  -  | Specifies if the Elasticsearch should have monitoring configured? Defaults to `true`. Changing this forces a new Elasticsearch to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Elasticsearch resource. | 

