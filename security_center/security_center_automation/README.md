# azurerm_security_center_automation

Manages Security Center Automation and Continuous Export. This resource supports three types of destination in the `action`, Logic Apps, Log Analytics and Event Hubs

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **location** | string | True | -  |  -  | The Azure Region where the Security Center Automation should exist. Changing this forces a new Security Center Automation to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Security Center Automation. Changing this forces a new Security Center Automation to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Security Center Automation should exist. Changing this forces a new Security Center Automation to be created. | 
| **scopes** | list | True | -  |  -  | A list of scopes on which the automation logic is applied, at least one is required. Supported scopes are a subscription (in this format `/subscriptions/00000000-0000-0000-0000-000000000000`) or a resource group under that subscription (in the format `/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example`). The automation will only apply on defined scopes. | 
| **source** | block | True | -  |  -  | One or more `source` blocks. A `source` defines what data types will be processed and a set of rules to filter that data. | 
| **action** | block | True | -  |  -  | One or more `action` blocks. An `action` tells this automation where the data is to be sent to upon being evaluated by the rules in the `source`. | 
| **description** | string | False | -  |  -  | Specifies the description for the Security Center Automation. | 
| **enabled** | bool | False | `True`  |  -  | Boolean to enable or disable this Security Center Automation. Defaults to `true`. | 
| **tags** | map | False | -  |  -  | A mapping of tags assigned to the resource. | 

