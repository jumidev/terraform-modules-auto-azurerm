# azurerm_sentinel_alert_rule_ms_security_incident

Manages a Sentinel MS Security Incident Alert Rule.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name which should be used for this Sentinel MS Security Incident Alert Rule. Changing this forces a new Sentinel MS Security Incident Alert Rule to be created. | 
| **var.log_analytics_workspace_id** | string | True | -  |  -  |  The ID of the Log Analytics Workspace this Sentinel MS Security Incident Alert Rule belongs to. Changing this forces a new Sentinel MS Security Incident Alert Rule to be created. | 
| **var.display_name** | string | True | -  |  -  |  The friendly name of this Sentinel MS Security Incident Alert Rule. | 
| **var.product_filter** | string | True | -  |  `Azure Active Directory Identity Protection`, `Azure Advanced Threat Protection`, `Azure Security Center`, `Azure Security Center for IoT`, `Microsoft Cloud App Security`, `Microsoft Defender Advanced Threat Protection`, `Office 365 Advanced Threat Protection`  |  The Microsoft Security Service from where the alert will be generated. Possible values are `Azure Active Directory Identity Protection`, `Azure Advanced Threat Protection`, `Azure Security Center`, `Azure Security Center for IoT`, `Microsoft Cloud App Security`, `Microsoft Defender Advanced Threat Protection` and `Office 365 Advanced Threat Protection`. | 
| **var.severity_filter** | string | True | -  |  `High`, `Medium`, `Low`, `Informational`  |  Only create incidents from alerts when alert severity level is contained in this list. Possible values are `High`, `Medium`, `Low` and `Informational`. | 
| **var.alert_rule_template_guid** | string | False | -  |  -  |  The GUID of the alert rule template which is used to create this Sentinel Scheduled Alert Rule. Changing this forces a new Sentinel MS Security Incident Alert Rule to be created. | 
| **var.description** | string | False | -  |  -  |  The description of this Sentinel MS Security Incident Alert Rule. | 
| **var.enabled** | bool | False | `True`  |  -  |  Should this Sentinel MS Security Incident Alert Rule be enabled? Defaults to `true`. | 
| **var.display_name_filter** | string | False | -  |  -  |  Only create incidents when the alert display name contain text from this list, leave empty to apply no filter. | 
| **var.display_name_exclude_filter** | string | False | -  |  -  |  Only create incidents when the alert display name doesn't contain text from this list. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **log_analytics_workspace_id** | string  | - | 
| **display_name** | string  | - | 
| **product_filter** | string  | - | 
| **severity_filter** | string  | - | 
| **alert_rule_template_guid** | string  | - | 
| **description** | string  | - | 
| **enabled** | bool  | - | 
| **display_name_filter** | string  | - | 
| **display_name_exclude_filter** | string  | - | 
| **id** | string  | The ID of the Sentinel MS Security Incident Alert Rule. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "sentinel/sentinel_alert_rule_ms_security_incident" 
}

inputs = {
   name = "name of sentinel_alert_rule_ms_security_incident" 
   log_analytics_workspace_id = "log_analytics_workspace_id of sentinel_alert_rule_ms_security_incident" 
   display_name = "display_name of sentinel_alert_rule_ms_security_incident" 
   product_filter = "product_filter of sentinel_alert_rule_ms_security_incident" 
   severity_filter = "severity_filter of sentinel_alert_rule_ms_security_incident" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```