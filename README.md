# assignment_p_collection

# 📱 Flutter Collections App

A Flutter app that displays a scrollable list of **collection cards**.  
Each card shows a title and a horizontal row of product images with an **accordion-style expand/collapse**.  
If a collection has more than 3 images, the last visible image displays a **+N overlay badge** to indicate additional items.

---

## ✨ Features
- Scrollable list of collection cards
- Each card includes:
    - Title (e.g., *Collection 1*)
    - Rounded corners and elevation for a clean UI
    - Expand/collapse accordion with arrow indicator
    - Horizontal scrollable row of product images
    - `+N` overlay badge on the last image if more images exist
- Supports both **local assets** and **network images**
- Smooth expand/collapse animation using `AnimatedCrossFade`

---

## 📂 Project Structure

---

### Notes
- **`main.dart`** → Starts the app and sets up the home screen.
- **`models/collection.dart`** → Defines the `Collection` class (title + list of image paths).
- **`refactored_widgets/`** → Contains reusable UI components (`CollectionCard`, `OverlayBadge`).
- **`screen/collection_screen.dart`** → Implements the expandable list of collections with scrollable images.
- **`assets/images/`** → Holds local images referenced in the app.
---