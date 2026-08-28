# API Reference

> **Status:** Placeholder — to be completed as endpoints are implemented.

## Base URL

```
http://localhost:8000
```

## Authentication

All endpoints require a Supabase JWT Bearer token (except public citizen report endpoints).

```
Authorization: Bearer <supabase_jwt_token>
```

---

## Weather

### GET /weather/current
Returns current weather conditions for a given location.

**Query Parameters:**
- `lat` (float, required) — Latitude
- `lon` (float, required) — Longitude

---

## Flood Risk

### GET /flood-risk/zones
Returns GeoJSON FeatureCollection of all flood risk zones.

### GET /flood-risk/score
Returns the computed flood risk score for a given coordinate.

---

## Incidents

### GET /incidents
Returns paginated list of active incidents.

### POST /incidents
Create a new incident.

### PATCH /incidents/{id}
Update incident status.

---

## Reports

### POST /reports
Submit a citizen flood report.

### GET /reports
Retrieve all verified citizen reports.

---

## Dispatch

### GET /dispatch/recommendations
Get AI-generated dispatch recommendations for active incidents.

### POST /dispatch/assign
Assign a volunteer to an incident.

---

## AI

### POST /ai/analyze
Upload a video or image for YOLOv8 flood detection analysis.

**Body:** multipart/form-data
- `file` — Video or image file

**Response:** Detection results with bounding boxes and confidence scores.

---

## Auto-Generated Docs

FastAPI auto-generates interactive API docs at:
- **Swagger UI:** `http://localhost:8000/docs`
- **ReDoc:** `http://localhost:8000/redoc`
