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

output "id" {
  description = "The ID of the Load Balancer Probe."
  value       = azurerm_lb_probe.this.id
}

