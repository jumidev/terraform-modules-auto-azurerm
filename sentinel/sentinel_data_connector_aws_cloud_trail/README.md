# azurerm_sentinel_data_connector_aws_cloud_trail

Manages a AWS CloudTrail Data Connector.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **aws_role_arn** | string | True | -  |  -  | The ARN of the AWS CloudTrail role, which is connected to this AWS CloudTrail Data Connector. | 
| **log_analytics_workspace_id** | string | True | -  |  -  | The ID of the Log Analytics Workspace that this AWS CloudTrail Data Connector resides in. Changing this forces a new AWS CloudTrail Data Connector to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this AWS CloudTrail Data Connector. Changing this forces a new AWS CloudTrail Data Connector to be created. | 

