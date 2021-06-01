resource "oci_core_subnet" "publicsubnet" {
  cidr_block = "10.0.0.0/24"
  display_name = "publicsubnet"
  compartment_id = var.compartment_id
  vcn_id = oci_core_vcn.johnvcn.id
  dns_label = "johnnydns"
  route_table_id = oci_core_route_table.john_route_table.id
  dhcp_options_id = oci_core_dhcp_options.johnDhcpOptions.id
  security_list_ids = [oci_core_security_list.johnsecuritylist.id]
}