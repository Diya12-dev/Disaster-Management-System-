# Database — Migrations & Seeds

## Overview

This directory contains all SQL migrations and seed data for the Supabase/PostgreSQL + PostGIS database.

## Structure

```
database/
├── migrations/
│   ├── 001_initial_schema.sql        # Core tables (incidents, volunteers, flood_zones)
│   ├── 002_citizen_reports.sql       # Citizen report submission table
│   ├── 003_flood_risk.sql            # Flood risk scoring tables
│   └── 004_dispatch_recommendations.sql  # Dispatch assignment tables
└── seeds/
    ├── volunteers.sql                # Sample volunteer records
    └── sample_incidents.sql          # Sample flood incident records
```

## Running Migrations

Migrations should be applied in numbered order against your Supabase project.

### Via Supabase Dashboard
1. Open SQL Editor in your Supabase project
2. Copy and paste each migration file in numbered order
3. Execute

### Via Supabase CLI
```bash
supabase db push
```

### Via psql
```bash
psql $DATABASE_URL -f migrations/001_initial_schema.sql
psql $DATABASE_URL -f migrations/002_citizen_reports.sql
psql $DATABASE_URL -f migrations/003_flood_risk.sql
psql $DATABASE_URL -f migrations/004_dispatch_recommendations.sql
```

## Running Seeds (Development Only)

```bash
psql $DATABASE_URL -f seeds/volunteers.sql
psql $DATABASE_URL -f seeds/sample_incidents.sql
```

> **Note:** Seed data is for development and demo purposes only. Do NOT run seeds in production.

## PostGIS Requirement

All spatial columns use the `GEOGRAPHY` type with SRID 4326 (WGS84).
Ensure PostGIS extension is enabled in your Supabase project:

```sql
CREATE EXTENSION IF NOT EXISTS postgis;
```
