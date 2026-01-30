---
layout: post
title:  "TIL Cadova - Swift DSL for parametric 3D modeling"
date:   2026-01-03 21:38:00 +0200
categories: ["Swift", "Cadova", "DSL", "3D modeling", "Parametric 3D modelling", "Rust", "CAD"]
---
That's wow: [Swift DSL for parametric 3D modeling](https://github.com/tomasf/Cadova). Here's M10x50 bolt drawn with Swift code:

![M10x50 bolt](/assets/images/Bolt%20M10x50.png "M10x50 bolt")

```Swift
/// M10 metric bolt with hexagonal head and helical threads
await Model("M10 Metric Bolt") {
    Metadata(
     title: "M10 Metric Bolt",
     description: "M10 bolt with hexagonal head and metric threads, 50mm shaft length"
    )

    // Standard M10 dimensions (ISO 4014/4017 & ISO 68-1)
    let nominalDiameter = 10.0      // Major diameter (outer diameter of threads)
    let minorDiameter = 8.376       // Minor diameter (root of threads)
    let threadStart = 20.0
    let threadPitch = 1.5           // 1.5mm pitch (standard coarse for M10)
    let headWidthAcrossFlats = 16.0
    let headHeight = 6.4
    let shaftLength = 50.0
    let chamferHeight = threadPitch * 1.5  // Length of chamfered section at tip

    // Hexagonal head
    let head = RegularPolygon(sideCount: 6, widthAcrossFlats: headWidthAcrossFlats)
     .extruded(height: headHeight)

    // Main cylindrical shaft (full diameter)
    let mainShaft = Circle(diameter: nominalDiameter)
     .extruded(height: shaftLength - chamferHeight, topEdge: .chamfer(depth: 1.0))
     .translated(z: headHeight)

    // Create the thread groove profile for sweptAlongHelix
    // X axis = radial distance from center
    // Y axis = vertical/axial position (forms the V-shape)
    let grooveProfile = Polygon([
     Vector2D(nominalDiameter / 2, -threadPitch / 2),    // Outer edge, bottom
     Vector2D(minorDiameter / 2, 0),                     // Root point, middle
     Vector2D(nominalDiameter / 2, threadPitch / 2),     // Outer edge, top
     Vector2D(nominalDiameter / 2 + 1, threadPitch / 2), // Extend outward for clean cut
     Vector2D(nominalDiameter / 2 + 1, -threadPitch / 2) // Extend outward for clean cut
    ])

    // Sweep the groove along the full shaft length
    let helicalGroove = grooveProfile
     .sweptAlongHelix(pitch: threadPitch, height: shaftLength + 10)
     .translated(z: headHeight + threadStart)

    // Create threaded shaft by subtracting grooves
    let threadedShaft = mainShaft.subtracting {
     helicalGroove
    }

    // Combine head and threaded shaft
    head.adding {
     threadedShaft
    }
    .aligned(at: .centerXY)
 }
```

[vcad](https://github.com/ecto/vcad), also looks interesting, but in Rust.
