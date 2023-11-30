# azurerm_security_center_automation

Manages Security Center Automation and Continuous Export. This resource supports three types of destination in the `action`, Logic Apps, Log Analytics and Event Hubs

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "security_center/security_center_automation" 
}

inputs = {
   location = "${location}" 
   name = "name of security_center_automation" 
   resource_group_name = "${resource_group}" 
   scopes = "scopes of security_center_automation" 
   source = "source of security_center_automation" 
   action = "action of security_center_automation" 
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
| **var.location** | string | True | -  |  The Azure Region where the Security Center Automation should exist. Changing this forces a new Security Center Automation to be created. | 
| **var.name** | string | True | -  |  The name which should be used for this Security Center Automation. Changing this forces a new Security Center Automation to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group where the Security Center Automation should exist. Changing this forces a new Security Center Automation to be created. | 
| **var.scopes** | list | True | -  |  A list of scopes on which the automation logic is applied, at least one is required. Supported scopes are a subscription (in this format `/subscriptions/00000000-0000-0000-0000-000000000000`) or a resource group under that subscription (in the format `/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example`). The automation will only apply on defined scopes. | 
| **var.source** | block | True | -  |  One or more `source` blocks. A `source` defines what data types will be processed and a set of rules to filter that data. | 
| **var.action** | block | True | -  |  One or more `action` blocks. An `action` tells this automation where the data is to be sent to upon being evaluated by the rules in the `source`. | 
| **var.description** | string | False | -  |  Specifies the description for the Security Center Automation. | 
| **var.enabled** | bool | False | `True`  |  Boolean to enable or disable this Security Center Automation. Defaults to `true`. | 
| **var.tags** | map | False | -  |  A mapping of tags assigned to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Security Center Automation. | 

Additionally, all variables are provided as outputs.
