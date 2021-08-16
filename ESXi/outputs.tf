output "logger_interfaces" {
  value = esxi_guest.logger.network_interfaces
}

output "logger_ips" {
  value = esxi_guest.logger.ip_address
}

output "dc_interfaces" {
  value = esxi_guest.dc.network_interfaces
}

output "dc_ips" {
  value = esxi_guest.dc.ip_address
}

output "wef_interfaces" {
  value = esxi_guest.wef.network_interfaces
}

output "wef_ips" {
  value = esxi_guest.wef.ip_address
}

output "win10_interfaces" {
  value = esxi_guest.win10-1.network_interfaces
}

output "win10_ips" {
  value = esxi_guest.win10-1.ip_address
}

output "win102_interfaces" {
  value = esxi_guest.win10-2.network_interfaces
}

output "win102_ips" {
  value = esxi_guest.win10-2.ip_address
}
