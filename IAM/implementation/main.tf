# module "iam-group-mod" {
#     source = "../"
#     groupList = var.groupname
    
# }
# module "iam-user-mod" {
#     source = "../"
#     jp = var.username

# }

# module "iam-user-group-membership-mod" {
#     source = "../"
#     # group-membership = var.group_n
#     jp = var.username
#     groupList = var.groupname
#     depends_on = [
#       module.iam-user-mod,
#       module.iam-group-mod
#     ]
# }
module "kk" {
    source="../"
    gp-name = "jask"
    username = ["user11","user12","user13","user14"]
  
}