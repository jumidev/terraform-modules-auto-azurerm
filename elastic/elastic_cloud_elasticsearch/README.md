# azurerm_elastic_cloud_elasticsearch

Manages an Elasticsearch in Elastic Cloud.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "elastic/elastic_cloud_elasticsearch" 
}

inputs = {
   elastic_cloud_email_address = "elastic_cloud_email_address of elastic_cloud_elasticsearch" 
   location = "${location}" 
   name = "name of elastic_cloud_elasticsearch" 
   resource_group_name = "${resource_group}" 
   sku_name = "sku_name of elastic_cloud_elasticsearch" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.elastic_cloud_email_address** | string | True | -  |  Specifies the Email Address which should be associated with this Elasticsearch account. Changing this forces a new Elasticsearch to be created. | 
| **var.location** | string | True | -  |  The Azure Region where the Elasticsearch resource should exist. Changing this forces a new Elasticsearch to be created. | 
| **var.name** | string | True | -  |  The name which should be used for this Elasticsearch resource. Changing this forces a new Elasticsearch to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group where the Elasticsearch resource should exist. Changing this forces a new Elasticsearch to be created. | 
| **var.sku_name** | string | True | -  |  Specifies the name of the SKU for this Elasticsearch. Changing this forces a new Elasticsearch to be created. | 
| **var.logs** | block | False | -  |  A `logs` block. | | `logs` block structure: || 
|   filtering_tag (block): A list of 'filtering_tag' blocks. ||
|   send_activity_logs (bool): Specifies if the Azure Activity Logs should be sent to the Elasticsearch cluster. Defaults to 'false'. ||
|   send_azuread_logs (bool): Specifies if the AzureAD Logs should be sent to the Elasticsearch cluster. Defaults to 'false'. ||
|   send_subscription_logs (bool): Specifies if the Azure Subscription Logs should be sent to the Elasticsearch cluster. Defaults to 'false'. ||

| **var.monitoring_enabled** | bool | False | `True`  |  Specifies if the Elasticsearch should have monitoring configured? Defaults to `true`. Changing this forces a new Elasticsearch to be created. | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the Elasticsearch resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Elasticsearch. | 
| **elastic_cloud_deployment_id** | string | No  | The ID of the Deployment within Elastic Cloud. | 
| **elastic_cloud_sso_default_url** | string | No  | The Default URL used for Single Sign On (SSO) to Elastic Cloud. | 
| **elastic_cloud_user_id** | string | No  | The ID of the User Account within Elastic Cloud. | 
| **elasticsearch_service_url** | string | No  | The URL to the Elasticsearch Service associated with this Elasticsearch. | 
| **kibana_service_url** | string | No  | The URL to the Kibana Dashboard associated with this Elasticsearch. | 
| **kibana_sso_uri** | string | No  | The URI used for SSO to the Kibana Dashboard associated with this Elasticsearch. | 

Additionally, all variables are provided as outputs.
