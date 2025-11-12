# Scalable-Secure-Webapp-AWS

Delivered a scalable and secure web application using custom VPC, ALB, Auto Scaling, and AWS WAF/Shield to ensure uptime and protect against threats.

# Architecture Design
- Implemented a two-tier model:
- Frontend: EC2 instances in public subnets
- Backend: Databases/internal services in private subnets
- Ensured scalability and security using:
- Auto Scaling for elasticity
- ALB for traffic distribution
- AWS WAF/Shield for threat mitigation
  
# Custom VPC Configuration
- Created a VPC with CIDR block 10.0.0.0/16
- Provisioned:
- Public subnets for ALB and EC2
- Private subnets for backend services
- Configured:
- Internet Gateway and Route Tables
- NAT Gateway for outbound traffic from private subnets

# EC2 & Auto Scaling Setup
- Built a Launch Template with AMI, instance type, security groups, and user data
- Deployed an Auto Scaling Group:
- Attached to public subnets
- Defined desired/min/max capacity
- Implemented scaling policies based on CPU and memory metrics
- Validated with stress testing

# Application Load Balancer (ALB)
- Configured an internet-facing ALB with:
- HTTP/HTTPS listeners
- Target groups pointing to EC2 instances
- Integrated ALB with Auto Scaling Group
- Enabled health checks for EC2 targets

# AWS WAF & Shield Integration
- Created a Web ACL with:
- Managed rules (SQLi, XSS, IP reputation)
- Custom rules (rate limiting, geo-blocking)
- Associated Web ACL with ALB
- Enabled AWS Shield Standard for DDoS protection
- Evaluated Shield Advanced for enhanced security

# Security Groups & IAM Roles
- Defined Security Groups:
- ALB: Allowed inbound HTTP/HTTPS
- EC2: Allowed traffic only from ALB
- Assigned IAM Roles:
- EC2: Access to CloudWatch, S3
- Auto Scaling: Permissions to manage instances

# Monitoring & Optimization
- Used CloudWatch for:
- Metrics (CPU, network, request count)
- Alarms for scaling triggers
- Enabled WAF logging to S3/Kinesis
- Monitored Shield metrics for DDoS attempts

# Outcome
This project demonstrates my ability to architect and deploy production-grade infrastructure on AWS that:
- Automatically scales with traffic
- Filters malicious requests
- Distributes load efficiently
- Defends against DDoS attacks


