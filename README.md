# Xylophone App Overview

This Flutter project is a simple xylophone app that uses the `audioplayers` package to play sounds. The app features a set of colored buttons representing the xylophone keys. When a user taps a button, the corresponding sound is played.

<img src="Simulator Screen Shot - iPhone 14 Pro - 2023-04-28 at 15.03.56.png" alt="Xylophone App View" width="200px">

## Main Components

1. **XylophoneApp**: This StatelessWidget serves as the main entry point for the app. It builds the MaterialApp and the main UI components.
2. **playSound function**: This function takes an integer as input (representing the sound number) and plays the associated audio file using the `AudioPlayer` class from the `audioplayers` package.
3. **buildKey function**: This function is responsible for creating the colored buttons (xylophone keys) with the specified color and sound number. It returns an `Expanded` widget containing an `ElevatedButton` with the provided color and an onPressed event handler that triggers the `playSound` function with the given sound number.

## UI Components

The user interface consists of a `Scaffold` with a `SafeArea` containing a `Center` widget. Inside the `Center` widget, there's a `Column` with `CrossAxisAlignment.stretch` to make the buttons stretch across the screen.

There are 7 buttons, each with a unique color and associated sound number:

1. Red button with sound number 1
2. Yellow button with sound number 2
3. Black button with sound number 3
4. Green button with sound number 4
5. Pink button with sound number 5
6. Purple button with sound number 6
7. GreenAccent button with sound number 7

When a button is tapped, the corresponding sound will be played using the `playSound` function.
