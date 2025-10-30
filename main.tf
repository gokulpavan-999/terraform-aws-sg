resource "aws-security_group" "main" {
  name = var.sg_name
  description = var.sg_description
  vpc_id = var.vpc_id

  tags = merge(
    var.sg_tags,
    local.common_tags,
    {
      Name = "${local.common_name_suffix}-${var.sg_name}" #roboshop-dev-catalogue
    }
  )
}
