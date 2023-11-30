# azurerm_mobile_network_service

Manages a Mobile Network Service.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name which should be used for this Mobile Network Service. Changing this forces a new Mobile Network Service to be created. | 
| **var.mobile_network_id** | string | True | Specifies the ID of the Mobile Network Service. Changing this forces a new Mobile Network Service to be created. | 
| **var.location** | string | True | Specifies the Azure Region where the Mobile Network Service should exist. Changing this forces a new Mobile Network Service to be created. | 
| **var.service_precedence** | string | True | A precedence value that is used to decide between services when identifying the QoS values to use for a particular SIM. A lower value means a higher priority. This value should be unique among all services configured in the mobile network. Must be between `0` and `255`. | 
| **var.pcc_rule** | block | True | A `pcc_rule` block. The set of PCC Rules that make up this service. | 
| **var.service_qos_policy** | block | False | A `service_qos_policy` block. The QoS policy to use for packets matching this service. This can be overridden for particular flows using the ruleQosPolicy field in a `pcc_rule`. If this field is not specified then the `sim_policy` of User Equipment (UE) will define the QoS settings. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Mobile Network Service. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **mobile_network_id** | string  | - | 
| **location** | string  | - | 
| **service_precedence** | string  | - | 
| **pcc_rule** | block  | - | 
| **service_qos_policy** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Mobile Network Service. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "mobile_network/mobile_network_service" 
}

inputs = {
   name = "name of mobile_network_service" 
   mobile_network_id = "mobile_network_id of mobile_network_service" 
   location = "${location}" 
   service_precedence = "service_precedence of mobile_network_service" 
   pcc_rule = "pcc_rule of mobile_network_service" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```