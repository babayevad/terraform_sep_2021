# Local value is used for something that's repeated over and over again
# 1. Company has naming and taging standard 
# what is cloud provider? = aws
# what is the environment ? = non-prod, prod
# what is particular? = dev, qa, stage 
# what is the project ? = matrix
# what is region ? = us-east-1

# Standard = aws-non-prod-dev-matrix-us-east-1-${resource}

# - Tagging standard (common tags)
# 1. environment
# 2. project
# 3. team 
# 4. owner 
# 5. managed by = terraform

locals {
    name = "aws-${var.stage}-${var.env}-${var.region}-${var.project}-rtype"
    common_tags = {
        env = var.env
        project = var.project
        team = "devops"
        owner = "Daniya"
        managed_by = "terraform"
    }
}

