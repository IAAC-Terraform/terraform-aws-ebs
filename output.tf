output "volumeid" {
    value = "${aws_ebs_volume.ebs.*.id}"
}

output "volumearn" {
    value = "${aws_ebs_volume.ebs.*.arn}"
}