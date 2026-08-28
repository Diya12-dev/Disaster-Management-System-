# Demo Flow — Hackathon Presentation Script

> **Status:** Placeholder — to be finalized before demo day.

## Scenario

**"Flood Emergency in Chennai — 72-hour response simulation"**

The demo simulates a major flood event affecting multiple districts of Chennai, with the platform coordinating real-time intelligence, citizen reports, and volunteer dispatch.

---

## Demo Steps

### 1. Command Dashboard (0:00 – 1:30)
- Show the main flood command dashboard
- Display live weather data and rainfall intensity map
- Highlight the Leaflet map with flood risk zones (color-coded: Red/Orange/Green)
- Point to the active incident count and severity breakdown

### 2. Real-Time Incident Feed (1:30 – 3:00)
- Scroll through the live incident panel
- Open a CRITICAL incident — house collapse in Velachery
- Show incident details: location, severity, reported time, media

### 3. Citizen Report Submission (3:00 – 4:30)
- Switch to Citizen Emergency Mode
- Submit a new flood report via the CitizenReportForm
- Show the report appearing on the map in real-time

### 4. AI Drone Analysis (4:30 – 6:00)
- Navigate to Drone Monitoring panel
- Upload a sample drone video to the AI analysis endpoint
- Show YOLOv8 detection results with bounding boxes and flood extent estimate
- Explain confidence scoring

### 5. Dispatch Recommendations (6:00 – 7:30)
- Open the Dispatch panel
- Show the AI-generated priority recommendations
- Assign a volunteer team to the CRITICAL incident
- Show status update on the map

### 6. Offline Mode (7:30 – 8:00)
- Toggle network off in DevTools
- Show OfflineStatus banner
- Submit a citizen report — show it queued locally
- Re-enable network — show queued report syncing

### 7. Closing (8:00 – 8:30)
- Pull back to the full command dashboard
- Summarize: "One platform — real-time intelligence, AI analysis, coordinated response"

---

## Key Talking Points

- **Geospatial accuracy:** PostGIS spatial queries for precise flood zone intersection
- **AI integration:** YOLOv8 detects flooded areas, vehicles, and survivors from drone footage
- **Offline-first:** Citizens can report even without connectivity
- **Scalable:** Supabase real-time subscriptions support thousands of concurrent updates
- **National applicability:** Designed for India's geography, data sources (IMD, NRSC), and disaster response framework (NDMA)
