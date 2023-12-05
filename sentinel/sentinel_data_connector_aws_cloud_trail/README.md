# azurerm_sentinel_data_connector_aws_cloud_trail

Manages a AWS CloudTrail Data Connector.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "sentinel/sentinel_data_connector_aws_cloud_trail"   
}

inputs = {
   aws_role_arn = "aws_role_arn of sentinel_data_connector_aws_cloud_trail"   
   # log_analytics_workspace_id → set in tfstate_inputs
   name = "name of sentinel_data_connector_aws_cloud_trail"   
}

tfstate_inputs = {
   log_analytics_workspace_id = "path/to/log_analytics_workspace_component:id"   
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
| **aws_role_arn** | string |  The ARN of the AWS CloudTrail role, which is connected to this AWS CloudTrail Data Connector. | 
| **log_analytics_workspace_id** | string |  The ID of the Log Analytics Workspace that this AWS CloudTrail Data Connector resides in. Changing this forces a new AWS CloudTrail Data Connector to be created. | 
| **name** | string |  The name which should be used for this AWS CloudTrail Data Connector. Changing this forces a new AWS CloudTrail Data Connector to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the AWS CloudTrail Data Connector. | 

Additionally, all variables are provided as outputs.
