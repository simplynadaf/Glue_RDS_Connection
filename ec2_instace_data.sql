-- Create ec2_instances table
CREATE TABLE ec2_instances (
    instance_id VARCHAR(20) PRIMARY KEY,
    instance_type VARCHAR(50),
    instance_state VARCHAR(20),
    availability_zone VARCHAR(30),
    public_ip_address VARCHAR(15),
    private_ip_address VARCHAR(15),
    launch_time TIMESTAMP,
    region VARCHAR(30)
);


INSERT INTO ec2_instances (instance_id, instance_type, instance_state, availability_zone, public_ip_address, private_ip_address, launch_time, region)
VALUES
('i-0abcd12345efgh001', 't2.micro', 'running', 'us-east-1a', '34.205.56.78', '172.31.16.139', '2024-01-01 12:00:00', 'us-east-1'),
('i-0abcd12345efgh002', 't2.micro', 'stopped', 'us-east-1b', NULL, '172.31.17.140', '2024-01-05 13:45:00', 'us-east-1'),
('i-0abcd12345efgh003', 'm5.large', 'running', 'us-west-2a', '52.40.67.89', '172.31.18.141', '2024-02-01 14:30:00', 'us-west-2'),
('i-0abcd12345efgh004', 'm5.large', 'terminated', 'us-west-2b', NULL, '172.31.19.142', '2024-03-10 15:00:00', 'us-west-2'),
('i-0abcd12345efgh005', 'c5.xlarge', 'running', 'eu-central-1a', '18.194.88.90', '172.31.20.143', '2024-01-20 16:15:00', 'eu-central-1'),
('i-0abcd12345efgh006', 'c5.xlarge', 'stopped', 'eu-central-1b', NULL, '172.31.21.144', '2024-04-25 12:45:00', 'eu-central-1'),
('i-0abcd12345efgh007', 'r5.large', 'running', 'ap-southeast-1a', '54.255.67.45', '172.31.22.145', '2024-02-15 11:30:00', 'ap-southeast-1'),
('i-0abcd12345efgh008', 'r5.large', 'stopped', 'ap-southeast-1b', NULL, '172.31.23.146', '2024-02-10 10:00:00', 'ap-southeast-1'),
('i-0abcd12345efgh009', 't3.medium', 'terminated', 'eu-west-1a', NULL, '172.31.24.147', '2024-03-15 09:45:00', 'eu-west-1'),
('i-0abcd12345efgh010', 't3.medium', 'running', 'eu-west-1b', '54.72.89.67', '172.31.25.148', '2024-03-20 09:30:00', 'eu-west-1'),
('i-0abcd12345efgh011', 'm6g.medium', 'running', 'us-west-1a', '13.57.123.78', '172.31.26.149', '2024-01-01 14:00:00', 'us-west-1'),
('i-0abcd12345efgh012', 'm6g.medium', 'stopped', 'us-west-1b', NULL, '172.31.27.150', '2024-02-10 13:00:00', 'us-west-1'),
('i-0abcd12345efgh013', 't4g.nano', 'terminated', 'ap-south-1a', NULL, '172.31.28.151', '2024-01-05 12:00:00', 'ap-south-1'),
('i-0abcd12345efgh014', 't4g.nano', 'running', 'ap-south-1b', '13.233.45.90', '172.31.29.152', '2024-02-01 11:00:00', 'ap-south-1'),
('i-0abcd12345efgh015', 'r6g.large', 'running', 'ca-central-1a', '52.60.67.89', '172.31.30.153', '2024-03-01 10:00:00', 'ca-central-1'),
('i-0abcd12345efgh016', 'r6g.large', 'stopped', 'ca-central-1b', NULL, '172.31.31.154', '2024-04-01 09:00:00', 'ca-central-1'),
('i-0abcd12345efgh017', 't2.nano', 'running', 'ap-northeast-1a', '13.115.67.45', '172.31.32.155', '2024-05-01 08:00:00', 'ap-northeast-1'),
('i-0abcd12345efgh018', 't2.nano', 'stopped', 'ap-northeast-1b', NULL, '172.31.33.156', '2024-06-01 07:00:00', 'ap-northeast-1'),
('i-0abcd12345efgh019', 'm5.large', 'running', 'eu-central-1a', '18.195.123.89', '172.31.34.157', '2024-03-01 06:00:00', 'eu-central-1'),
('i-0abcd12345efgh020', 'm5.large', 'terminated', 'eu-central-1b', NULL, '172.31.35.158', '2024-04-01 05:00:00', 'eu-central-1'),
('i-0abcd12345efgh021', 'c5.xlarge', 'running', 'us-east-1c', '54.210.78.34', '172.31.36.159', '2024-01-15 12:00:00', 'us-east-1'),
('i-0abcd12345efgh022', 'c5.xlarge', 'stopped', 'us-east-1d', NULL, '172.31.37.160', '2024-02-25 11:00:00', 'us-east-1'),
('i-0abcd12345efgh023', 'r5.large', 'running', 'ap-southeast-2a', '52.63.45.67', '172.31.38.161', '2024-03-10 10:00:00', 'ap-southeast-2'),
('i-0abcd12345efgh024', 'r5.large', 'terminated', 'ap-southeast-2b', NULL, '172.31.39.162', '2024-04-15 09:00:00', 'ap-southeast-2'),
('i-0abcd12345efgh025', 't2.micro', 'running', 'us-west-1c', '54.241.12.45', '172.31.40.163', '2024-05-01 08:00:00', 'us-west-1');
