
resource "openstack_networking_secgroup_v2" "tf-nfs" {
  name        = "tf-nfs"
  description = "[tf] Allow nfs-server"
}
resource "openstack_networking_secgroup_rule_v2" "tf-nfsi-r1" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = "111"
  port_range_max    = "111"
  security_group_id = "${openstack_networking_secgroup_v2.tf-nfs.id}"
}
resource "openstack_networking_secgroup_rule_v2" "tf-nfs-r2" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = "2049"
  port_range_max    = "2049"
  security_group_id = "${openstack_networking_secgroup_v2.tf-nfs.id}"
}
