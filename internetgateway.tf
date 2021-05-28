resource "oci_core_internet_gateways" "john_internet_gateway" {
    #Required
    compartment_id = var.compartment_id

    #Optional
    display_name = "john_internet_gateways"
    vcn_id = oci_core_vcn.johnvcn.id
}