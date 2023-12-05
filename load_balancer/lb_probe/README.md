# azurerm_lb_probe

Manages a LoadBalancer Probe Resource.~> **NOTE** When using this resource, the Load Balancer needs to have a FrontEnd IP Configuration Attached

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "load_balancer/lb_probe"   
}

inputs = {
   name = "Specifies the name of the Probe"   
   # loadbalancer_id → set in tfstate_inputs
   port = "Port on which the Probe queries the backend endpoint..."   
}

tfstate_inputs = {
   loadbalancer_id = "path/to/lb_component:id"   
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
| **name** | string |  Specifies the name of the Probe. Changing this forces a new resource to be created. | 
| **loadbalancer_id** | string |  The ID of the LoadBalancer in which to create the NAT Rule. Changing this forces a new resource to be created. | 
| **port** | string |  Port on which the Probe queries the backend endpoint. Possible values range from 1 to 65535, inclusive. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **protocol** | string |  -  |  `Http`, `Https`, `Tcp`  |  Specifies the protocol of the end point. Possible values are `Http`, `Https` or `Tcp`. If TCP is specified, a received ACK is required for the probe to be successful. If HTTP is specified, a 200 OK response from the specified URI is required for the probe to be successful. | 
| **probe_threshold** | string |  -  |  `1`, `100`  |  The number of consecutive successful or failed probes that allow or deny traffic to this endpoint. Possible values range from `1` to `100`. The default value is `1`. | 
| **request_path** | string |  -  |  -  |  The URI used for requesting health status from the backend endpoint. Required if protocol is set to `Http` or `Https`. Otherwise, it is not allowed. | 
| **interval_in_seconds** | int |  -  |  -  |  The interval, in seconds between probes to the backend endpoint for health status. The default value is 15, the minimum value is 5. | 
| **number_of_probes** | int |  `2`  |  -  |  The number of failed probe attempts after which the backend endpoint is removed from rotation. Default to `2`. NumberOfProbes multiplied by intervalInSeconds value must be greater or equal to 10.Endpoints are returned to rotation when at least one probe is successful. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Load Balancer Probe. | 

Additionally, all variables are provided as outputs.
