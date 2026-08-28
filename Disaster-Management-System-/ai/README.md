# AI / Computer Vision Module

## Overview

This module provides YOLOv8-based flood detection and analysis for drone video footage.

## Directory Structure

```
ai/
├── models/      # Pre-trained and fine-tuned YOLOv8 model weights (.pt, .onnx)
├── uploads/     # Temporarily uploaded video/image files for analysis
├── outputs/     # Processed output files with detection annotations
└── scripts/
    ├── analyze_video.py     # Main video analysis pipeline
    └── detection_utils.py   # Post-processing utilities
```

## Requirements

- Python 3.10+
- ultralytics (YOLOv8)
- opencv-python
- torch

## Usage

```bash
# Install dependencies
pip install ultralytics opencv-python

# Run analysis on a video file
python scripts/analyze_video.py --input uploads/video.mp4 --output outputs/result.mp4
```

## Model Files

Place YOLOv8 model weights in the `models/` directory.
- `yolov8n.pt` — Nano model (fast, lower accuracy)
- `yolov8s.pt` — Small model (balanced)
- Custom fine-tuned flood detection model goes here.

> Note: Model weight files are excluded from git via `.gitignore`.
