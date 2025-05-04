-- Cloud Providers (30 entries)
INSERT INTO cloud_provider (id, name) VALUES
(1, 'AWS'), (2, 'Azure'), (3, 'Google Cloud'), (4, 'IBM Cloud'), (5, 'Oracle Cloud'),
(6, 'Alibaba Cloud'), (7, 'DigitalOcean'), (8, 'Linode'), (9, 'Vultr'), (10, 'OVH'),
(11, 'Rackspace'), (12, 'Heroku'), (13, 'Salesforce Cloud'), (14, 'Tencent Cloud'), (15, 'Yandex Cloud'),
(16, 'Scaleway'), (17, 'UpCloud'), (18, 'Exoscale'), (19, 'Nutanix'), (20, 'VMware Cloud'),
(21, 'Hetzner'), (22, 'Packet'), (23, 'Joyent'), (24, 'CloudSigma'), (25, 'ProfitBricks'),
(26, 'Kubernetes'), (27, 'OpenStack'), (28, 'CloudStack'), (29, 'OpenShift'), (30, 'Wasabi');

-- Accounts (30 entries)
INSERT INTO accounts (id, name, cloud_provider_id) VALUES
(1, 'Production AWS', 1), (2, 'Staging Azure', 2), (3, 'Dev GCP', 3), (4, 'Analytics IBM', 4), (5, 'Backup Oracle', 5),
(6, 'Web Alibaba', 6), (7, 'DB DigitalOcean', 7), (8, 'Cache Linode', 8), (9, 'Media Vultr', 9), (10, 'Archive OVH', 10),
(11, 'Legacy Rackspace', 11), (12, 'Apps Heroku', 12), (13, 'CRM Salesforce', 13), (14, 'China Tencent', 14), (15, 'Russia Yandex', 15),
(16, 'Europe Scaleway', 16), (17, 'Finland UpCloud', 17), (18, 'Swiss Exoscale', 18), (19, 'Private Nutanix', 19), (20, 'Corporate VMware', 20),
(21, 'Germany Hetzner', 21), (22, 'BareMetal Packet', 22), (23, 'Solaris Joyent', 23), (24, 'PayGo CloudSigma', 24), (25, 'Enterprise ProfitBricks', 25),
(26, 'K8s Prod', 26), (27, 'OpenStack Private', 27), (28, 'CloudStack Hybrid', 28), (29, 'OCP Cluster', 29), (30, 'ColdStorage Wasabi', 30);

-- Teams (30 entries)
INSERT INTO teams (id, name) VALUES
(1, 'DevOps'), (2, 'Backend'), (3, 'Frontend'), (4, 'QA'), (5, 'Security'),
(6, 'Data Engineering'), (7, 'Machine Learning'), (8, 'Mobile'), (9, 'Web'), (10, 'Cloud'),
(11, 'Database'), (12, 'Networking'), (13, 'Compliance'), (14, 'BI'), (15, 'SRE'),
(16, 'Architecture'), (17, 'Automation'), (18, 'Monitoring'), (19, 'Logging'), (20, 'CI/CD'),
(21, 'Storage'), (22, 'Containers'), (23, 'Serverless'), (24, 'Edge'), (25, 'AI'),
(26, 'Blockchain'), (27, 'IoT'), (28, 'AR/VR'), (29, 'Gaming'), (30, 'Research');

-- Regions (30 entries)
INSERT INTO region (id, name) VALUES
(1, 'us-east-1'), (2, 'us-west-1'), (3, 'eu-west-1'), (4, 'ap-southeast-1'), (5, 'sa-east-1'),
(6, 'us-central1'), (7, 'europe-west3'), (8, 'asia-south1'), (9, 'australia-southeast1'), (10, 'northamerica-northeast1'),
(11, 'us-gov-west-1'), (12, 'china-north1'), (13, 'germany-central1'), (14, 'uk-south1'), (15, 'japan-east1'),
(16, 'france-central'), (17, 'brazil-south'), (18, 'india-west'), (19, 'korea-central'), (20, 'singapore-south'),
(21, 'sweden-central'), (22, 'uae-north'), (23, 'switzerland-north'), (24, 'italy-north'), (25, 'southafrica-north'),
(26, 'spain-central'), (27, 'mexico-central'), (28, 'netherlands-west'), (29, 'belgium-central'), (30, 'poland-central');

-- Resource Types (30 entries)
INSERT INTO resource_type (id, name) VALUES
(1, 'EC2 Instance'), (2, 'S3 Bucket'), (3, 'RDS MySQL'), (4, 'Azure VM'), (5, 'Cloud Storage'),
(6, 'Cloud SQL'), (7, 'Kubernetes Cluster'), (8, 'Redis Cache'), (9, 'Message Queue'), (10, 'CDN'),
(11, 'NoSQL Database'), (12, 'Data Warehouse'), (13, 'Container Registry'), (14, 'File Storage'), (15, 'API Gateway'),
(16, 'Stream Processing'), (17, 'ETL Service'), (18, 'Analytics'), (19, 'ML Service'), (20, 'TPU'),
(21, 'Blockchain Node'), (22, 'IoT Hub'), (23, 'AR Service'), (24, 'Game Server'), (25, 'DNS Service'),
(26, 'VPN Gateway'), (27, 'Firewall'), (28, 'WAF'), (29, 'SIEM'), (30, 'Secret Management');

-- Resources (30 entries)
INSERT INTO resources (id, name, account_id, region_id, resource_type_id, created_at) VALUES
(1, 'web-prod-1', 1, 1, 1, '2024-01-01'), (2, 'data-lake-1', 1, 1, 2, '2024-01-02'), (3, 'mysql-prod', 1, 1, 3, '2024-01-03'),
(4, 'app-vm-1', 2, 2, 4, '2024-01-04'), (5, 'media-storage', 3, 3, 5, '2024-01-05'), (6, 'postgres-analytics', 4, 4, 6, '2024-01-06'),
(7, 'k8s-prod', 5, 5, 7, '2024-01-07'), (8, 'redis-cache', 6, 6, 8, '2024-01-08'), (9, 'order-queue', 7, 7, 9, '2024-01-09'),
(10, 'cdn-global', 8, 8, 10, '2024-01-10'), (11, 'mongo-userdata', 9, 9, 11, '2024-01-11'), (12, 'bigquery-dw', 10, 10, 12, '2024-01-12'),
(13, 'artifact-registry', 11, 11, 13, '2024-01-13'), (14, 'nfs-share', 12, 12, 14, '2024-01-14'), (15, 'api-gateway-main', 13, 13, 15, '2024-01-15'),
(16, 'kafka-cluster', 14, 14, 16, '2024-01-16'), (17, 'dataflow-job', 15, 15, 17, '2024-01-17'), (18, 'looker-instance', 16, 16, 18, '2024-01-18'),
(19, 'vertex-ai', 17, 17, 19, '2024-01-19'), (20, 'tpu-pod', 18, 18, 20, '2024-01-20'), (21, 'hyperledger-node', 19, 19, 21, '2024-01-21'),
(22, 'iot-core', 20, 20, 22, '2024-01-22'), (23, 'ar-engine', 21, 21, 23, '2024-01-23'), (24, 'game-server-1', 22, 22, 24, '2024-01-24'),
(25, 'dns-hub', 23, 23, 25, '2024-01-25'), (26, 'vpn-gateway', 24, 24, 26, '2024-01-26'), (27, 'firewall-prod', 25, 25, 27, '2024-01-27'),
(28, 'waf-global', 26, 26, 28, '2024-01-28'), (29, 'soc-analytics', 27, 27, 29, '2024-01-29'), (30, 'vault-cluster', 28, 28, 30, '2024-01-30');

-- Budget (30 entries)
INSERT INTO budget (id, account_id, team_id, amount, period, start_date, end_date) VALUES
(1, 1, 1, 10000.00, 'monthly', '2025-01-01', '2025-01-31'), (2, 1, 2, 5000.00, 'monthly', '2025-01-01', '2025-01-31'),
(3, 2, 3, 7500.00, 'monthly', '2025-01-01', '2025-01-31'), (4, 3, 4, 3000.00, 'monthly', '2025-01-01', '2025-01-31'),
(5, 4, 5, 2000.00, 'monthly', '2025-01-01', '2025-01-31'), (6, 5, 6, 8000.00, 'monthly', '2025-01-01', '2025-01-31'),
(7, 6, 7, 4500.00, 'monthly', '2025-01-01', '2025-01-31'), (8, 7, 8, 6000.00, 'monthly', '2025-01-01', '2025-01-31'),
(9, 8, 9, 2500.00, 'monthly', '2025-01-01', '2025-01-31'), (10, 9, 10, 7000.00, 'monthly', '2025-01-01', '2025-01-31'),
(11, 10, 11, 3500.00, 'monthly', '2025-01-01', '2025-01-31'), (12, 11, 12, 9000.00, 'monthly', '2025-01-01', '2025-01-31'),
(13, 12, 13, 1500.00, 'monthly', '2025-01-01', '2025-01-31'), (14, 13, 14, 5500.00, 'monthly', '2025-01-01', '2025-01-31'),
(15, 14, 15, 4000.00, 'monthly', '2025-01-01', '2025-01-31'), (16, 15, 16, 6500.00, 'monthly', '2025-01-01', '2025-01-31'),
(17, 16, 17, 8500.00, 'monthly', '2025-01-01', '2025-01-31'), (18, 17, 18, 9500.00, 'monthly', '2025-01-01', '2025-01-31'),
(19, 18, 19, 500.00, 'monthly', '2025-01-01', '2025-01-31'), (20, 19, 20, 12000.00, 'monthly', '2025-01-01', '2025-01-31'),
(21, 20, 21, 3000.00, 'monthly', '2025-01-01', '2025-01-31'), (22, 21, 22, 7000.00, 'monthly', '2025-01-01', '2025-01-31'),
(23, 22, 23, 2000.00, 'monthly', '2025-01-01', '2025-01-31'), (24, 23, 24, 4500.00, 'monthly', '2025-01-01', '2025-01-31'),
(25, 24, 25, 8000.00, 'monthly', '2025-01-01', '2025-01-31'), (26, 25, 26, 1000.00, 'monthly', '2025-01-01', '2025-01-31'),
(27, 26, 27, 6000.00, 'monthly', '2025-01-01', '2025-01-31'), (28, 27, 28, 3500.00, 'monthly', '2025-01-01', '2025-01-31'),
(29, 28, 29, 9000.00, 'monthly', '2025-01-01', '2025-01-31'), (30, 29, 30, 2500.00, 'monthly', '2025-01-01', '2025-01-31');

-- Account Usage Logs (30 entries)
INSERT INTO account_usage_log (id, account_id, team_id, period_start, period_end, total_cost, details) VALUES
(1, 1, 1, '2025-01-01', '2025-01-31', 9500.00, 'EC2 heavy usage'), (2, 1, 2, '2025-01-01', '2025-01-31', 4800.00, 'RDS standard'),
(3, 2, 3, '2025-01-01', '2025-01-31', 7000.00, 'VM workloads'), (4, 3, 4, '2025-01-01', '2025-01-31', 2800.00, 'Storage costs'),
(5, 4, 5, '2025-01-01', '2025-01-31', 1900.00, 'Security scanning'), (6, 5, 6, '2025-01-01', '2025-01-31', 7500.00, 'K8s cluster'),
(7, 6, 7, '2025-01-01', '2025-01-31', 4200.00, 'Redis caching'), (8, 7, 8, '2025-01-01', '2025-01-31', 5500.00, 'Message queues'),
(9, 8, 9, '2025-01-01', '2025-01-31', 2300.00, 'CDN traffic'), (10, 9, 10, '2025-01-01', '2025-01-31', 6500.00, 'MongoDB usage'),
(11, 10, 11, '2025-01-01', '2025-01-31', 3200.00, 'Data warehouse'), (12, 11, 12, '2025-01-01', '2025-01-31', 8500.00, 'Container registry'),
(13, 12, 13, '2025-01-01', '2025-01-31', 1400.00, 'NFS storage'), (14, 13, 14, '2025-01-01', '2025-01-31', 5000.00, 'API Gateway'),
(15, 14, 15, '2025-01-01', '2025-01-31', 3800.00, 'Kafka streams'), (16, 15, 16, '2025-01-01', '2025-01-31', 6000.00, 'ETL jobs'),
(17, 16, 17, '2025-01-01', '2025-01-31', 8000.00, 'BI analytics'), (18, 17, 18, '2025-01-01', '2025-01-31', 9000.00, 'ML models'),
(19, 18, 19, '2025-01-01', '2025-01-31', 450.00, 'TPU usage'), (20, 19, 20, '2025-01-01', '2025-01-31', 11000.00, 'Blockchain'),
(21, 20, 21, '2025-01-01', '2025-01-31', 2900.00, 'IoT devices'), (22, 21, 22, '2025-01-01', '2025-01-31', 6500.00, 'AR services'),
(23, 22, 23, '2025-01-01', '2025-01-31', 1800.00, 'Game servers'), (24, 23, 24, '2025-01-01', '2025-01-31', 4200.00, 'DNS queries'),
(25, 24, 25, '2025-01-01', '2025-01-31', 7500.00, 'VPN connections'), (26, 25, 26, '2025-01-01', '2025-01-31', 950.00, 'Firewall rules'),
(27, 26, 27, '2025-01-01', '2025-01-31', 5500.00, 'WAF protection'), (28, 27, 28, '2025-01-01', '2025-01-31', 3200.00, 'SIEM monitoring'),
(29, 28, 29, '2025-01-01', '2025-01-31', 8500.00, 'Secrets management'), (30, 29, 30, '2025-01-01', '2025-01-31', 2200.00, 'Research workloads');

-- Team Memberships (30 entries)
INSERT INTO team_memberships (id, account_id, team_id, role, joined_at) VALUES
(1, 1, 1, 'admin', '2024-01-01'), (2, 1, 2, 'member', '2024-01-05'), (3, 2, 3, 'viewer', '2024-01-10'),
(4, 3, 4, 'admin', '2024-01-15'), (5, 4, 5, 'member', '2024-01-20'), (6, 5, 6, 'viewer', '2024-01-25'),
(7, 6, 7, 'admin', '2024-02-01'), (8, 7, 8, 'member', '2024-02-05'), (9, 8, 9, 'viewer', '2024-02-10'),
(10, 9, 10, 'admin', '2024-02-15'), (11, 10, 11, 'member', '2024-02-20'), (12, 11, 12, 'viewer', '2024-02-25'),
(13, 12, 13, 'admin', '2024-03-01'), (14, 13, 14, 'member', '2024-03-05'), (15, 14, 15, 'viewer', '2024-03-10'),
(16, 15, 16, 'admin', '2024-03-15'), (17, 16, 17, 'member', '2024-03-20'), (18, 17, 18, 'viewer', '2024-03-25'),
(19, 18, 19, 'admin', '2024-04-01'), (20, 19, 20, 'member', '2024-04-05'), (21, 20, 21, 'viewer', '2024-04-10'),
(22, 21, 22, 'admin', '2024-04-15'), (23, 22, 23, 'member', '2024-04-20'), (24, 23, 24, 'viewer', '2024-04-25'),
(25, 24, 25, 'admin', '2024-05-01'), (26, 25, 26, 'member', '2024-05-05'), (27, 26, 27, 'viewer', '2024-05-10'),
(28, 27, 28, 'admin', '2024-05-15'), (29, 28, 29, 'member', '2024-05-20'), (30, 29, 30, 'viewer', '2024-05-25');

-- Alerts (30 entries)
INSERT INTO alerts (id, resource_id, alert_type, message, created_at, resolved) VALUES
(1, 1, 'cpu', 'High CPU usage', '2025-01-15 08:00:00', 1), (2, 2, 'memory', 'Low memory', '2025-01-15 09:00:00', 0),
(3, 3, 'disk', 'Disk full', '2025-01-15 10:00:00', 1), (4, 4, 'network', 'High latency', '2025-01-15 11:00:00', 0),
(5, 5, 'cost', 'Budget exceeded', '2025-01-15 12:00:00', 1), (6, 6, 'security', 'Unauthorized access', '2025-01-15 13:00:00', 0),
(7, 7, 'availability', 'Service down', '2025-01-15 14:00:00', 1), (8, 8, 'performance', 'Slow response', '2025-01-15 15:00:00', 0),
(9, 9, 'capacity', 'Storage limit', '2025-01-15 16:00:00', 1), (10, 10, 'connectivity', 'Connection drops', '2025-01-15 17:00:00', 0),
(11, 11, 'backup', 'Backup failed', '2025-01-16 08:00:00', 1), (12, 12, 'compliance', 'Policy violation', '2025-01-16 09:00:00', 0),
(13, 13, 'certificate', 'SSL expiring', '2025-01-16 10:00:00', 1), (14, 14, 'authentication', 'Failed logins', '2025-01-16 11:00:00', 0),
(15, 15, 'throughput', 'Request spike', '2025-01-16 12:00:00', 1), (16, 16, 'queue', 'Message backlog', '2025-01-16 13:00:00', 0),
(17, 17, 'latency', 'High processing time', '2025-01-16 14:00:00', 1), (18, 18, 'error', 'API errors', '2025-01-16 15:00:00', 0),
(19, 19, 'threshold', 'Metric exceeded', '2025-01-16 16:00:00', 1), (20, 20, 'timeout', 'Request timeout', '2025-01-16 17:00:00', 0),
(21, 21, 'configuration', 'Misconfigured resource', '2025-01-17 08:00:00', 1), (22, 22, 'dependency', 'Service dependency down', '2025-01-17 09:00:00', 0),
(23, 23, 'sla', 'SLA violation', '2025-01-17 10:00:00', 1), (24, 24, 'health', 'Unhealthy instance', '2025-01-17 11:00:00', 0),
(25, 25, 'maintenance', 'Maintenance required', '2025-01-17 12:00:00', 1), (26, 26, 'version', 'Deprecated version', '2025-01-17 13:00:00', 0),
(27, 27, 'scan', 'Vulnerability found', '2025-01-17 14:00:00', 1), (28, 28, 'permission', 'Permission change', '2025-01-17 15:00:00', 0),
(29, 29, 'audit', 'Audit trail alert', '2025-01-17 16:00:00', 1), (30, 30, 'anomaly', 'Usage anomaly', '2025-01-17 17:00:00', 0);

-- Tags (30 entries)
INSERT INTO tag (id, resource_id, key, value) VALUES
(1, 1, 'environment', 'production'), (2, 1, 'owner', 'devops'), (3, 2, 'environment', 'staging'),
(4, 2, 'data-classification', 'restricted'), (5, 3, 'environment', 'development'), (6, 3, 'pii', 'true'),
(7, 4, 'cost-center', 'it'), (8, 4, 'compliance', 'hipaa'), (9, 5, 'backup', 'daily'),
(10, 5, 'retention', '30d'), (11, 6, 'auto-scale', 'true'), (12, 6, 'min-instances', '2'),
(13, 7, 'max-instances', '10'), (14, 7, 'team', 'sre'), (15, 8, 'schedule', '24/7'),
(16, 8, 'criticality', 'high'), (17, 9, 'department', 'marketing'), (18, 9, 'project', 'campaign-2025'),
(19, 10, 'budget-code', 'b1234'), (20, 10, 'contact', 'admin@company.com'), (21, 11, 'data-owner', 'analytics'),
(22, 11, 'retention-policy', '1y'), (23, 12, 'encryption', 'aes256'), (24, 12, 'backup-schedule', 'weekly'),
(25, 13, 'patch-group', 'prod'), (26, 13, 'maintenance-window', 'sun-2am'), (27, 14, 'monitoring', 'enabled'),
(28, 14, 'alert-channel', 'slack-ops'), (29, 15, 'version', '1.2.3'), (30, 15, 'lifecycle', 'active');

-- Resource Usage Logs (30 entries)
INSERT INTO resource_usage_log (id, resource_id, usage_date, cost, usage_quantity, usage_unit) VALUES
(1, 1, '2025-01-01', 120.50, 720, 'hours'), (2, 2, '2025-01-01', 85.25, 500, 'GB-hours'),
(3, 3, '2025-01-01', 65.75, 300, 'IOPS'), (4, 4, '2025-01-01', 210.00, 1000, 'vCPU-hours'),
(5, 5, '2025-01-01', 45.30, 200, 'GB-months'), (6, 6, '2025-01-01', 320.40, 1500, 'query-hours'),
(7, 7, '2025-01-01', 180.90, 20, 'node-hours'), (8, 8, '2025-01-01', 75.60, 50, 'cache-GB'),
(9, 9, '2025-01-01', 28.45, 10000, 'messages'), (10, 10, '2025-01-01', 420.75, 500, 'GB-transferred'),
(11, 11, '2025-01-01', 95.20, 300, 'WCU'), (12, 12, '2025-01-01', 650.00, 2000, 'TB-scanned'),
(13, 13, '2025-01-01', 35.80, 100, 'GB-stored'), (14, 14, '2025-01-01', 72.30, 50, 'TB-requests'),
(15, 15, '2025-01-01', 210.50, 1000000, 'requests'), (16, 16, '2025-01-01', 185.75, 20, 'partition-hours'),
(17, 17, '2025-01-01', 320.25, 100, 'pipeline-hours'), (18, 18, '2025-01-01', 450.00, 50, 'user-hours'),
(19, 19, '2025-01-01', 680.40, 10, 'TPU-hours'), (20, 20, '2025-01-01', 920.75, 5, 'node-days'),
(21, 21, '2025-01-01', 75.30, 100, 'device-hours'), (22, 22, '2025-01-01', 210.80, 500, 'session-minutes'),
(23, 23, '2025-01-01', 380.25, 20, 'server-hours'), (24, 24, '2025-01-01', 45.60, 100000, 'queries'),
(25, 25, '2025-01-01', 120.90, 50, 'connection-hours'), (26, 26, '2025-01-01', 85.40, 1000, 'rule-evaluations'),
(27, 27, '2025-01-01', 210.25, 5000000, 'requests'), (28, 28, '2025-01-01', 350.75, 10000, 'log-events'),
(29, 29, '2025-01-01', 280.50, 500, 'secret-accesses'), (30, 30, '2025-01-01', 95.30, 200, 'experiment-hours');

-- Resource Assignments (30 entries)
INSERT INTO resource_assignment (id, resource_id, team_id, account_id, start_date, end_date) VALUES
(1, 1, 1, 1, '2024-01-01', NULL), (2, 2, 2, 1, '2024-01-01', NULL), (3, 3, 3, 2, '2024-01-01', NULL),
(4, 4, 4, 2, '2024-01-01', NULL), (5, 5, 5, 3, '2024-01-01', NULL), (6, 6, 6, 3, '2024-01-01', NULL),
(7, 7, 7, 4, '2024-01-01', NULL), (8, 8, 8, 4, '2024-01-01', NULL), (9, 9, 9, 5, '2024-01-01', NULL),
(10, 10, 10, 5, '2024-01-01', NULL), (11, 11, 11, 6, '2024-01-01', NULL), (12, 12, 12, 6, '2024-01-01', NULL),
(13, 13, 13, 7, '2024-01-01', NULL), (14, 14, 14, 7, '2024-01-01', NULL), (15, 15, 15, 8, '2024-01-01', NULL),
(16, 16, 16, 8, '2024-01-01', NULL), (17, 17, 17, 9, '2024-01-01', NULL), (18, 18, 18, 9, '2024-01-01', NULL),
(19, 19, 19, 10, '2024-01-01', NULL), (20, 20, 20, 10, '2024-01-01', NULL), (21, 21, 21, 11, '2024-01-01', NULL),
(22, 22, 22, 11, '2024-01-01', NULL), (23, 23, 23, 12, '2024-01-01', NULL), (24, 24, 24, 12, '2024-01-01', NULL),
(25, 25, 25, 13, '2024-01-01', NULL), (26, 26, 26, 13, '2024-01-01', NULL), (27, 27, 27, 14, '2024-01-01', NULL),
(28, 28, 28, 14, '2024-01-01', NULL), (29, 29, 29, 15, '2024-01-01', NULL), (30, 30, 30, 15, '2024-01-01', NULL);
