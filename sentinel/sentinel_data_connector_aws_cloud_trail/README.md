# azurerm_sentinel_data_connector_aws_cloud_trail

Manages a AWS CloudTrail Data Connector.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.aws_role_arn** | string | True | The ARN of the AWS CloudTrail role, which is connected to this AWS CloudTrail Data Connector. | 
| **var.log_analytics_workspace_id** | string | True | The ID of the Log Analytics Workspace that this AWS CloudTrail Data Connector resides in. Changing this forces a new AWS CloudTrail Data Connector to be created. | 
| **var.name** | string | True | The name which should be used for this AWS CloudTrail Data Connector. Changing this forces a new AWS CloudTrail Data Connector to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **aws_role_arn** | string  | - | 
| **log_analytics_workspace_id** | string  | - | 
| **name** | string  | - | 
| **id** | string  | The ID of the AWS CloudTrail Data Connector. | 