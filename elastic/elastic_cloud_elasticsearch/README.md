# azurerm_elastic_cloud_elasticsearch

Manages an Elasticsearch in Elastic Cloud.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "elastic/elastic_cloud_elasticsearch"   
}

inputs = {
   elastic_cloud_email_address = "Specifies the Email Address which should be associated with this Elasticsearch a..."   
   location = "${location}"   
   name = "The name which should be used for this Elasticsearch resource..."   
   resource_group_name = "${resource_group}"   
   sku_name = "Specifies the name of the SKU for this Elasticsearch..."   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **elastic_cloud_email_address** | string |  Specifies the Email Address which should be associated with this Elasticsearch account. Changing this forces a new Elasticsearch to be created. | 
| **location** | string |  The Azure Region where the Elasticsearch resource should exist. Changing this forces a new Elasticsearch to be created. | 
| **name** | string |  The name which should be used for this Elasticsearch resource. Changing this forces a new Elasticsearch to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Elasticsearch resource should exist. Changing this forces a new Elasticsearch to be created. | 
| **sku_name** | string |  Specifies the name of the SKU for this Elasticsearch. Changing this forces a new Elasticsearch to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **logs** | [block](#logs-block-structure) |  -  |  A `logs` block. | 
| **monitoring_enabled** | bool |  `True`  |  Specifies if the Elasticsearch should have monitoring configured? Defaults to `true`. Changing this forces a new Elasticsearch to be created. | 
| **tags** | map |  -  |  A mapping of tags which should be assigned to the Elasticsearch resource. | 

### `logs` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `filtering_tag` | [block](#filtering_tag-block-structure) | No | - | A list of 'filtering_tag' blocks. |
| `send_activity_logs` | bool | No | False | Specifies if the Azure Activity Logs should be sent to the Elasticsearch cluster. Defaults to 'false'. |
| `send_azuread_logs` | bool | No | False | Specifies if the AzureAD Logs should be sent to the Elasticsearch cluster. Defaults to 'false'. |
| `send_subscription_logs` | bool | No | False | Specifies if the Azure Subscription Logs should be sent to the Elasticsearch cluster. Defaults to 'false'. |

### `filtering_tag` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `action` | string | Yes | - | Specifies the type of action which should be taken when the Tag matches the 'name' and 'value'. Possible values are 'Exclude' and 'Include'. |
| `name` | string | Yes | - | Specifies the name (key) of the Tag which should be filtered. |
| `value` | string | Yes | - | Specifies the value of the Tag which should be filtered. |



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
