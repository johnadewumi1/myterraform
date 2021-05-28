resource "oci_core_dhcp_options" "johndhcpoptions" {
  compartment_id = var.compartment_id
  vcn_id = oci_core_vcn.johnvcn.id
  options {
    type = "DomainNameServer"
    server_type = "VcpLocalPlusInternet"
  }
  options {
    type = "SearchDomain"
    search_domain_names = ["jahmaiadewumi.com"]
  }
}