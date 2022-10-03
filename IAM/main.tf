resource "aws_iam_group" "aaa" {
  name = var.gp-name
}
resource "aws_iam_user" "sona" {
  count = length(var.username)
  name = var.username[count.index]


  tags = {
    owner = "jaspreet.kaur@cloudeq.com"
  }
}
resource "aws_iam_group_membership" "students" {
  name = "tf-testing-group-membership"

  users = [ aws_iam_user.sona[0].name, aws_iam_user.sona[1].name,aws_iam_user.sona[2].name,aws_iam_user.sona[3].name]

  group = aws_iam_group.aaa.name
}


