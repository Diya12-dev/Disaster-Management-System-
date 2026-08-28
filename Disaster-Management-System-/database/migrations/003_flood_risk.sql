-- Migration: 003_flood_risk.sql
-- TODO: Create flood_risk_scores and flood_zones tables

-- CREATE TABLE IF NOT EXISTS flood_zones (
--     id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
--     name TEXT NOT NULL,
--     zone_type VARCHAR(20) CHECK (zone_type IN ('HIGH', 'MEDIUM', 'LOW', 'SAFE')),
--     boundary GEOGRAPHY(POLYGON, 4326),
--     population_estimate INTEGER,
--     created_at TIMESTAMPTZ DEFAULT NOW()
-- );

-- CREATE TABLE IF NOT EXISTS flood_risk_scores (
--     id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
--     zone_id UUID REFERENCES flood_zones(id),
--     score NUMERIC(5,2) NOT NULL,
--     rainfall_mm NUMERIC(8,2),
--     water_level_m NUMERIC(6,2),
--     confidence NUMERIC(5,2),
--     computed_at TIMESTAMPTZ DEFAULT NOW()
-- );

-- CREATE INDEX IF NOT EXISTS idx_flood_zones_boundary ON flood_zones USING GIST (boundary);
