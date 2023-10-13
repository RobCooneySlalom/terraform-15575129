module "test" {
    source = "../modules/blog"

    env = {
        environment    = "test"
        name           = "terraform-course-test"
        network_prefix = "10.1"
    }

    autoscaling_config = {
        min_size = 1
        max_size = 1
    }
}