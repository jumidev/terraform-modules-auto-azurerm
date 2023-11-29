# azurerm_mobile_network_service

Manages a Mobile Network Service.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name which should be used for this Mobile Network Service. Changing this forces a new Mobile Network Service to be created. | 
| **mobile_network_id** | string | True | -  |  -  | Specifies the ID of the Mobile Network Service. Changing this forces a new Mobile Network Service to be created. | 
| **location** | string | True | -  |  -  | Specifies the Azure Region where the Mobile Network Service should exist. Changing this forces a new Mobile Network Service to be created. | 
| **service_precedence** | string | True | -  |  -  | A precedence value that is used to decide between services when identifying the QoS values to use for a particular SIM. A lower value means a higher priority. This value should be unique among all services configured in the mobile network. Must be between `0` and `255`. | 
| **pcc_rule** | block | True | -  |  -  | A `pcc_rule` block. The set of PCC Rules that make up this service. | 
| **service_qos_policy** | block | False | -  |  -  | A `service_qos_policy` block. The QoS policy to use for packets matching this service. This can be overridden for particular flows using the ruleQosPolicy field in a `pcc_rule`. If this field is not specified then the `sim_policy` of User Equipment (UE) will define the QoS settings. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Mobile Network Service. | 

