output "name" {
  value = azurerm_lb_probe.this.name
}

output "loadbalancer_id" {
  value = azurerm_lb_probe.this.loadbalancer_id
}

output "protocol" {
  value = azurerm_lb_probe.this.protocol
}

output "port" {
  value = azurerm_lb_probe.this.port
}

output "probe_threshold" {
  value = azurerm_lb_probe.this.probe_threshold
}

output "request_path" {
  value = azurerm_lb_probe.this.request_path
}

output "interval_in_seconds" {
  value = azurerm_lb_probe.this.interval_in_seconds
}

output "number_of_probes" {
  value = azurerm_lb_probe.this.number_of_probes
}

output "number_of_probes" {
  description = "The number of failed probe attempts after which the backend endpoint is removed from rotation. Default to '2'. NumberOfProbes multiplied by intervalInSeconds value must be greater or equal to 10.Endpoints are returned to rotation when at least one probe is successful. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_lb_probe.this.number_of_probes
}

output "id" {
  description = "The ID of the Load Balancer Probe."
  value       = azurerm_lb_probe.this.id
}

