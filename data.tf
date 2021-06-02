data "oci_identity_availability_domains" "ad" {
  compartment_id = var.compartment_id
}
data "template_file" "ad_names" {
  count    = length(data.oci_identity_availability_domains.ad.availability_domains)
  template = lookup(data.oci_identity_availability_domains.ad.availability_domains[count.index], "name")
}