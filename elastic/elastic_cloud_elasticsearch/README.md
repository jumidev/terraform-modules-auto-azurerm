# azurerm_elastic_cloud_elasticsearch

Manages an Elasticsearch in Elastic Cloud.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.elastic_cloud_email_address** | string | True | -  |  -  | Specifies the Email Address which should be associated with this Elasticsearch account. Changing this forces a new Elasticsearch to be created. | 
| **var.location** | string | True | -  |  -  | The Azure Region where the Elasticsearch resource should exist. Changing this forces a new Elasticsearch to be created. | 
| **var.name** | string | True | -  |  -  | The name which should be used for this Elasticsearch resource. Changing this forces a new Elasticsearch to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Elasticsearch resource should exist. Changing this forces a new Elasticsearch to be created. | 
| **var.sku_name** | string | True | -  |  -  | Specifies the name of the SKU for this Elasticsearch. Changing this forces a new Elasticsearch to be created. | 
| **var.logs** | block | False | -  |  -  | A `logs` block. | 
| **var.monitoring_enabled** | bool | False | `True`  |  -  | Specifies if the Elasticsearch should have monitoring configured? Defaults to `true`. Changing this forces a new Elasticsearch to be created. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Elasticsearch resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **elastic_cloud_email_address** | string  | - | 
| **location** | string  | - | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **sku_name** | string  | - | 
| **logs** | block  | - | 
| **monitoring_enabled** | bool  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Elasticsearch. | 
| **elastic_cloud_deployment_id** | string  | The ID of the Deployment within Elastic Cloud. | 
| **elastic_cloud_sso_default_url** | string  | The Default URL used for Single Sign On (SSO) to Elastic Cloud. | 
| **elastic_cloud_user_id** | string  | The ID of the User Account within Elastic Cloud. | 
| **elasticsearch_service_url** | string  | The URL to the Elasticsearch Service associated with this Elasticsearch. | 
| **kibana_service_url** | string  | The URL to the Kibana Dashboard associated with this Elasticsearch. | 
| **kibana_sso_uri** | string  | The URI used for SSO to the Kibana Dashboard associated with this Elasticsearch. | 