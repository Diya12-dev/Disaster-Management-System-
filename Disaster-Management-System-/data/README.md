# Data Directory

## Overview

This directory stores geospatial, weather, and flood-related data files used by the platform.

## Structure

```
data/
├── raw/          # Unprocessed source data (GeoJSON, CSV, shapefiles)
├── processed/    # Cleaned and transformed data ready for the application
└── samples/      # Small sample datasets for development and testing
```

## Data Sources (Planned)

| Source | Type | Usage |
|---|---|---|
| India Meteorological Department (IMD) | Rainfall / Weather | Flood risk computation |
| OpenStreetMap | GeoJSON roads/buildings | Base map + route optimization |
| NRSC Flood Inundation Maps | GeoTIFF / GeoJSON | Flood zone boundaries |
| NDMA Disaster Atlas | CSV / GeoJSON | Historical incident data |
| Bhoonidhi (ISRO) | Satellite imagery | Flood extent mapping |

## Notes

- `raw/` and `processed/` directories are excluded from git (see `.gitignore`)
- Use `.gitkeep` files only — commit no large data files to git
- Large files should be stored in Supabase Storage or a cloud bucket
