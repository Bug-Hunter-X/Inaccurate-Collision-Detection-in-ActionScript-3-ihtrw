function checkCollision(obj1:DisplayObject, obj2:DisplayObject):Boolean {
  // Use pixel-perfect collision detection
  var bitmapData1:BitmapData = new BitmapData(obj1.width, obj1.height, true, 0x00000000);
  bitmapData1.draw(obj1);
  var bitmapData2:BitmapData = new BitmapData(obj2.width, obj2.height, true, 0x00000000);
  bitmapData2.draw(obj2);

  //Check for collision using pixel-perfect method
  var bounds1:Rectangle = obj1.getBounds(obj1.parent);
  var bounds2:Rectangle = obj2.getBounds(obj2.parent);

  var intersection:Rectangle = bounds1.intersection(bounds2);
  if (intersection.width <=0 || intersection.height <=0) return false;

  for (var i:int = intersection.x; i < intersection.right; i++) {
    for (var j:int = intersection.y; j < intersection.bottom; j++) {
      var pixel1:uint = bitmapData1.getPixel(i - bounds1.x, j - bounds1.y);
      var pixel2:uint = bitmapData2.getPixel(i - bounds2.x, j - bounds2.y);
      if (pixel1 != 0x00000000 && pixel2 != 0x00000000) {
        return true; // Collision detected
      }
    }
  }
  return false; // No collision
}