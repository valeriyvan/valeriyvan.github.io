---
layout: post
title:  "ESC: Brushless Motor Control and SwiftUI GeometryReader"
date:   2024-12-29 21:16:00 +0200
categories: [ESC, SwiftUI, GeometryReader]
---
I finally found confirmation that ESCs (Electronic Speed Controllers) for brushless motors regulate speed not by varying voltage but by controlling the timing of current pulses sent to the motor’s windings: [Wiki: Electronic speed control](https://en.wikipedia.org/wiki/Electronic_speed_control).

I came across an excellent article, [What is an Electronic Speed Controller & How Does an ESC Work](https://www.tytorobotics.com/blogs/articles/what-is-an-esc-how-does-an-esc-work). It mentions that some ESCs may regulate speed by varying voltage, which I assume applies to ESCs designed for brushed motors.

> the role of the ESC is to deliver power from the battery to the motor in a controlled manner. If you input 50% throttle on the controller, the ESC will deliver 50% ‘power’ to the motor. What is ‘power’ depends on the firmware used. Some will use the average voltage sent to the motor, others use the speed target, and some use a mix of both.

Read [How to Increase Drone Flight Time and Lift Capacity](https://www.tytorobotics.com/blogs/articles/how-to-increase-drone-flight-time-and-lift-capacity).

TIL [GeometryReader in SwiftUI: Why It’s Needed, Its Purpose, and Alternatives](https://medium.com/@bitsandbytesch/geometryreader-in-swiftui-why-its-needed-its-purpose-and-alternatives-a74342fc3fdf).

Read [GeometryReader: Blessing or Curse?](https://fatbobman.com/en/posts/geometryreader-blessing-or-curse/).
