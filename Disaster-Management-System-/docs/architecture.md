# System Architecture

## Overview

The Flood Disaster Intelligence and Response Platform is a full-stack geospatial application for real-time flood monitoring and coordinated emergency response.

## High-Level Architecture

```
┌─────────────────────────────────────────────────────────────┐
│                        FRONTEND                             │
│   React + Vite + Leaflet (OpenStreetMap + GeoJSON)         │
│   - Command Dashboard  - Citizen Emergency Mode            │
│   - Flood Zone Map     - Incident Reports                  │
│   - Dispatch Panel     - Drone Monitoring                  │
└───────────────────────────┬─────────────────────────────────┘
                            │ HTTP / REST
┌───────────────────────────▼─────────────────────────────────┐
│                        BACKEND                              │
│   Python + FastAPI                                          │
│   Routers: /weather /flood-risk /incidents                  │
│            /reports /dispatch /ai                          │
│   Services: weather, flood_risk, priority, dispatch, CV     │
└──────────┬─────────────────────────────────┬────────────────┘
           │ Supabase Client                 │ Direct SQL
┌──────────▼──────────────┐    ┌─────────────▼──────────────┐
│   Supabase / PostGIS    │    │      AI Module              │
│   PostgreSQL + PostGIS  │    │   YOLOv8 + OpenCV          │
│   - incidents           │    │   - Video analysis         │
│   - citizen_reports     │    │   - Flood detection        │
│   - flood_zones         │    │   - Confidence scoring     │
│   - volunteers          │    └────────────────────────────┘
│   - dispatch_assignments│
└─────────────────────────┘
```

## Module Responsibilities

| Module | Owner | Status |
|---|---|---|
| Leaflet Map + GeoJSON rendering | Team A | 🟡 In Progress |
| Weather & Rainfall API | Team B | 🔴 Planned |
| Flood Risk Scoring | Team B | 🔴 Planned |
| Citizen Incident Reports | Team C | 🔴 Planned |
| Emergency Prioritization | Team B | 🔴 Planned |
| Volunteer Dispatch | Team C | 🔴 Planned |
| Drone / Video AI | Team D | 🔴 Planned |
| Offline Support (PWA) | Team A | 🔴 Planned |
| Citizen Emergency UI | Team C | 🔴 Planned |

## Technology Decisions

### Frontend
- **React + Vite**: Fast development, hot reload, modern ESM
- **Leaflet**: Lightweight, flexible geospatial map rendering
- **GeoJSON**: Standard format for flood zone boundaries

### Backend
- **FastAPI**: Async, auto-docs, Pydantic validation
- **Supabase**: Managed PostgreSQL with real-time subscriptions

### Database
- **PostGIS**: Spatial queries for zone intersection and proximity
- **GEOGRAPHY type**: WGS84 coordinate system for accurate distance

### AI
- **YOLOv8**: State-of-the-art object detection for flood analysis
- **OpenCV**: Video preprocessing and annotation

## Data Flow

1. Weather sensors / APIs → Backend weather_service → Flood risk computation
2. Citizen reports → API → Supabase → Real-time dashboard update
3. Drone video → AI service → YOLOv8 detection → Incident creation
4. Priority engine → Dispatch recommendations → Volunteer assignment
