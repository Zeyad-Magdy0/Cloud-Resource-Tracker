-- 1. Get total monthly cost for each account (across all resources)
SELECT
    a.name AS account_name,
    SUM(rul.cost) AS total_monthly_cost
FROM
    accounts a
JOIN
    resources r ON a.id = r.account_id
JOIN
    resource_usage_log rul ON r.id = rul.resource_id
WHERE
    rul.usage_date BETWEEN '2025-05-01' AND '2025-05-31'
GROUP BY
    a.id;

-- 2. Show all resources with unresolved alerts
SELECT
    r.name AS resource_name,
    a.name AS account_name,
    al.alert_type,
    al.message,
    al.created_at
FROM
    alerts al
JOIN
    resources r ON al.resource_id = r.id
JOIN
    accounts a ON r.account_id = a.id
WHERE
    al.resolved = 0;

-- 3. List the top 5 most expensive resources
SELECT
    r.name AS resource_name,
    SUM(rul.cost) AS total_cost
FROM
    resources r
JOIN
    resource_usage_log rul ON r.id = rul.resource_id
GROUP BY
    r.id
ORDER BY
    total_cost DESC
LIMIT 5;

-- 4. Find which teams exceeded their monthly budget
SELECT
    t.name AS team_name,
    b.amount AS budget_amount,
    SUM(ul.total_cost) AS actual_spend
FROM
    budget b
JOIN
    teams t ON b.team_id = t.id
JOIN
    account_usage_log ul ON ul.team_id = t.id
WHERE
    ul.period_start = '2025-05-01'
GROUP BY
    t.id
HAVING
    actual_spend > budget_amount;

-- 5. Get all tags associated with a specific resource
SELECT
    r.name AS resource_name,
    tag.key,
    tag.value
FROM
    resources r
JOIN
    tag ON r.id = tag.resource_id
WHERE
    r.name = 'web-prod-1';

-- 6. Show current team assignments for each resource
SELECT
    r.name AS resource_name,
    t.name AS team_name,
    ra.start_date,
    ra.end_date
FROM
    resource_assignment ra
JOIN
    resources r ON ra.resource_id = r.id
JOIN
    teams t ON ra.team_id = t.id
WHERE
    ra.end_date IS NULL;

-- 7. Retrieve all accounts under a specific cloud provider
SELECT
    cp.name AS provider,
    a.name AS account_name
FROM
    cloud_provider cp
JOIN
    accounts a ON cp.id = a.cloud_provider_id
WHERE
    cp.name = 'AWS';

-- 8. Count how many resources each team currently owns
SELECT
    t.name AS team_name,
    COUNT(ra.resource_id) AS resource_count
FROM
    teams t
JOIN
    resource_assignment ra ON t.id = ra.team_id
WHERE
    ra.end_date IS NULL
GROUP BY
    t.id;

-- 9. Show total cost per usage unit type this month
SELECT
    usage_unit,
    SUM(cost) AS total_cost
FROM
    resource_usage_log
WHERE
    usage_date BETWEEN '2025-05-01' AND '2025-05-31'
GROUP BY
    usage_unit;

-- 10. Audit which users joined which teams and when
SELECT
    a.name AS account_name,
    t.name AS team_name,
    tm.role,
    tm.joined_at
FROM
    team_memberships tm
JOIN
    accounts a ON tm.account_id = a.id
JOIN
    teams t ON tm.team_id = t.id
ORDER BY
    tm.joined_at DESC;
