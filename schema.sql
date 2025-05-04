CREATE TABLE "cloud_provider" (
    "id" INTEGER PRIMARY KEY,
    "name" TEXT NOT NULL
);

CREATE TABLE "accounts" (
    "id" INTEGER PRIMARY KEY,
    "name" TEXT NOT NULL,
    "cloud_provider_id" INTEGER,
    FOREIGN KEY ("cloud_provider_id") REFERENCES "cloud_provider"("id")
);

CREATE TABLE "teams" (
    "id" INTEGER PRIMARY KEY,
    "name" TEXT NOT NULL
);

CREATE TABLE "region" (
    "id" INTEGER PRIMARY KEY,
    "name" TEXT NOT NULL
);

CREATE TABLE "resource_type" (
    "id" INTEGER PRIMARY KEY,
    "name" TEXT NOT NULL
);

CREATE TABLE "resources" (
    "id" INTEGER PRIMARY KEY,
    "name" TEXT NOT NULL,
    "account_id" INTEGER,
    "region_id" INTEGER,
    "resource_type_id" INTEGER,
    "created_at" TEXT DEFAULT CURRENT_TIMESTAMP,
    "deleted_at" TEXT DEFAULT NULL,

    FOREIGN KEY ("account_id") REFERENCES "accounts"("id"),
    FOREIGN KEY ("region_id") REFERENCES "region"("id"),
    FOREIGN KEY ("resource_type_id") REFERENCES "resource_type"("id")
);

CREATE TABLE "budget" (
    "id" INTEGER PRIMARY KEY,
    "account_id" INTEGER,
    "team_id" INTEGER,
    "amount" REAL,
    "period" TEXT,
    "start_date" TEXT,
    "end_date" TEXT,
    FOREIGN KEY ("account_id") REFERENCES "accounts"("id"),
    FOREIGN KEY ("team_id") REFERENCES "teams"("id")
);

CREATE TABLE "account_usage_log" (
    "id" INTEGER PRIMARY KEY,
    "account_id" INTEGER,
    "team_id" INTEGER,
    "period_start" TEXT,
    "period_end" TEXT,
    "total_cost" REAL,
    "details" TEXT,
    FOREIGN KEY ("account_id") REFERENCES "accounts"("id"),
    FOREIGN KEY ("team_id") REFERENCES "teams"("id")
);

CREATE TABLE "team_memberships" (
    "id" INTEGER PRIMARY KEY,
    "account_id" INTEGER,
    "team_id" INTEGER,
    "role" TEXT,
    "joined_at" TEXT,
    FOREIGN KEY ("account_id") REFERENCES "accounts"("id"),
    FOREIGN KEY ("team_id") REFERENCES "teams"("id")
);

CREATE TABLE "alerts" (
    "id" INTEGER PRIMARY KEY,
    "resource_id" INTEGER,
    "alert_type" TEXT,
    "message" TEXT,
    "created_at" TEXT,
    "resolved" INTEGER NOT NULL CHECK(resolved IN (0,1)),
    FOREIGN KEY ("resource_id") REFERENCES "resources"("id")
);

CREATE TABLE "tag" (
    "id" INTEGER PRIMARY KEY,
    "resource_id" INTEGER,
    "key" TEXT,
    "value" TEXT,
    FOREIGN KEY ("resource_id") REFERENCES "resources"("id")
);

CREATE TABLE "resource_usage_log" (
    "id" INTEGER PRIMARY KEY,
    "resource_id" INTEGER,
    "usage_date" TEXT,
    "cost" REAL,
    "usage_quantity" REAL,
    "usage_unit" TEXT,
    FOREIGN KEY ("resource_id") REFERENCES "resources"("id")
);

CREATE TABLE "resource_assignment" (
    "id" INTEGER PRIMARY KEY,
    "resource_id" INTEGER,
    "team_id" INTEGER,
    "account_id" INTEGER NULL,
    "start_date" TEXT,
    "end_date" TEXT,
    FOREIGN KEY ("resource_id") REFERENCES "resources"("id"),
    FOREIGN KEY ("account_id") REFERENCES "accounts"("id"),
    FOREIGN KEY ("team_id") REFERENCES "teams"("id")
);


CREATE INDEX "idx_resources_account_id" ON "resources"("account_id");
CREATE INDEX "idx_resources_resource_type_id" ON "resources"("resource_type_id");
CREATE INDEX "idx_alerts_resource_id" ON "alerts"("resource_id");
CREATE INDEX "idx_resource_usage_log_resource_id" ON "resource_usage_log"("resource_id");
CREATE INDEX "idx_resource_usage_log_usage_date" ON "resource_usage_log"("usage_date");
CREATE INDEX "idx_team_memberships_account_id" ON "team_memberships"("account_id");
CREATE INDEX "idx_team_memberships_team_id" ON "team_memberships"("team_id");
CREATE INDEX "idx_budget_account_id" ON "budget"("account_id");
CREATE INDEX "idx_budget_team_id" ON "budget"("team_id");
CREATE INDEX "idx_resource_assignment_resource_id" ON "resource_assignment"("resource_id");
CREATE INDEX "idx_resource_assignment_team_id" ON "resource_assignment"("team_id");
CREATE INDEX "idx_resource_assignment_account_id" ON "resource_assignment"("account_id");
CREATE INDEX "idx_tags_key_value" ON "tag"("key", "value");

