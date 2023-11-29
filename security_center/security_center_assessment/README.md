# azurerm_security_center_assessment

Manages the Security Center Assessment for Azure Security Center.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **assessment_policy_id** | string | True | -  |  -  | The ID of the security Assessment policy to apply to this resource. Changing this forces a new security Assessment to be created. | 
| **target_resource_id** | string | True | -  |  -  | The ID of the target resource. Changing this forces a new security Assessment to be created. | 
| **status** | block | True | -  |  -  | A `status` block. | 
| **additional_data** | string | False | -  |  -  | A map of additional data to associate with the assessment. | 

