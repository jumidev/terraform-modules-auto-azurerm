# azurerm_iotcentral_application_network_rule_set

Manages an IoT Central Application Network Rule Set.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "iot_central/iotcentral_application_network_rule_set"   
}

inputs = {
   # iotcentral_application_id → set in component_inputs
}

component_inputs = {
   iotcentral_application_id = "path/to/iotcentral_application_component:id"   
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
| **iotcentral_application_id** | string |  The ID of the IoT Central Application. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **apply_to_device** | bool |  `True`  |  `true`, `false`  |  Whether these IP Rules apply for device connectivity to IoT Hub and Device Provisioning Service associated with this IoT Central Application. Possible values are `true`, `false`. Defaults to `true` | 
| **default_action** | string |  `Deny`  |  `Allow`, `Deny`  |  Specifies the default action for the IoT Central Application Network Rule Set. Possible values are `Allow` and `Deny`. Defaults to `Deny`. | 
| **ip_rule** | [block](#ip_rule-block-structure) |  -  |  -  |  One or more `ip_rule` blocks. | 

### `ip_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the IP Rule |
| `ip_mask` | string | Yes | - | The IP address range in CIDR notation for the IP Rule. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the IoT Central Application Network Rule Set. | 

Additionally, all variables are provided as outputs.
