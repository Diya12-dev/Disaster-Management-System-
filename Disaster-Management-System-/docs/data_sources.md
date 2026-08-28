# Data Sources

> **Status:** Placeholder — to be updated as integrations are implemented.

## Weather & Rainfall

| Source | API / URL | Data Type | Notes |
|---|---|---|---|
| OpenWeatherMap | https://api.openweathermap.org | Current weather, forecast | Free tier available |
| India Meteorological Department (IMD) | https://mausam.imd.gov.in | Rainfall warnings, cyclone alerts | Government open data |
| Open-Meteo | https://open-meteo.com | Historical + forecast | Free, no API key needed |

## Geospatial / Flood Zones

| Source | URL | Data Type | Notes |
|---|---|---|---|
| OpenStreetMap | https://www.openstreetmap.org | Roads, buildings, POIs | Via Overpass API or GeoJSON exports |
| NRSC (ISRO) | https://bhuvan.nrsc.gov.in | Flood inundation maps | GeoTIFF / WMS layers |
| Bhoonidhi | https://bhoonidhi.nrsc.gov.in | Satellite imagery | ISRO's data portal |
| NDMA | https://ndma.gov.in | Disaster risk atlas | Historical flood extents |

## Administrative Boundaries

| Source | URL | Data Type | Notes |
|---|---|---|---|
| Survey of India | https://onlinemaps.surveyofindia.gov.in | District / state boundaries | Authoritative Indian boundaries |
| Datameet India Maps | https://github.com/datameet/maps | GeoJSON boundaries | Community maintained |

## Historical Incidents

| Source | URL | Data Type | Notes |
|---|---|---|---|
| NDMA Disaster Atlas | https://ndma.gov.in | Historical events CSV | Useful for model training |
| EM-DAT | https://www.emdat.be | Global disaster database | Historical context |

## Integration Notes

- Always check API rate limits and cache responses to avoid quota exhaustion
- Prefer government sources (IMD, NRSC) for accuracy in the Indian context
- Use `data/raw/` to store downloaded datasets and `data/processed/` for cleaned versions
