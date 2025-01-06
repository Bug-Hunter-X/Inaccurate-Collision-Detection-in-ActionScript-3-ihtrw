# Inaccurate Collision Detection in ActionScript 3

This repository demonstrates a common error in ActionScript 3 related to inaccurate collision detection. The provided code uses the `getBounds()` method to check for collisions between two display objects. However, `getBounds()` doesn't always provide accurate results, particularly with rotated or complex objects, leading to incorrect collision detection.

The `bug.as` file showcases this problem. The `bugSolution.as` file provides a corrected approach using pixel-perfect collision detection.