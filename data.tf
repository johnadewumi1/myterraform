data "oci_identity_availability_domains" "ad" {
  compartment_id = var.compartment_id
}
data "template_file" "ad_names" {
  count    = length(data.oci_identity_availability_domains.ad.availability_domains)
  template = lookup(data.oci_identity_availability_domains.ad.availability_domains[count.index], "name")
}


data "oci_core_images" "tf_images" {
  compartment_id           = var.compartment_id
  shape                    = var.Shapes
}

data "oci_core_shapes" "tf_shapes" {
  compartment_id      = var.compartment_id
  image_id            = data.oci_core_images.tf_images.images.0.id
}

