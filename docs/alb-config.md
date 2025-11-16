# Application Load Balancer (ALB) Configuration Guide
This document outlines the steps to create and configure an Application Load Balancer (ALB) to distribute incoming traffic across your Auto Scaling Group running Nginx instances.

# 1. Create an Application Load Balancer
	1. Open AWS Management Console → EC2 → Load Balancers.
	2. Click Create Load Balancer.
	3. Choose Application Load Balancer.
	4. Configure basic settings:
		○ Name: nginx-alb
		○ Scheme: Internet-facing
		○ IP address type: IPv4

# 2. Configure Listeners and Availability Zones
	1. Listener:
		○ Protocol: HTTP
		○ Port: 80
	2. Availability Zones:
		○ Select your VPC.
		○ Select at least two subnets in different Availability Zones for high availability.

# 3. Configure Security Settings
   ALB listens on HTTP (port 80) here.

# 4. Configure Security Groups
    Select or create a security group that allows inbound traffic:
	  • HTTP (port 80) from anywhere (0.0.0.0/0)

# 5. Configure Routing
	1. Create a new target group:
		○ Name: nginx-target-group
		○ Target type: Instance
		○ Protocol: HTTP
		○ Port: 80
		○ Health checks:
			§ Protocol: HTTP
			§ Path: /
			§ Healthy threshold: 5
			§ Unhealthy threshold: 2
			§ Timeout: 5 seconds
			§ Interval: 30 seconds
	2. Register your Auto Scaling Group’s instances with this target group.

# 6. Review and Create
     Review all configurations carefully and click Create Load Balancer.

# 7. Verify ALB Functionality
	• Obtain the ALB’s DNS name from the Load Balancers console.
	• Open it in a browser to confirm you see the Nginx welcome page.
	• Confirm the ALB is distributing traffic to your EC2 instances.

ALB Configuration Completed
Your Application Load Balancer is now set up to handle incoming web traffic and route it efficiently to your auto-scaled Nginx instances, ensuring high availability and fault tolerance.
