function checkCollision(obj1:DisplayObject, obj2:DisplayObject):Boolean {
  // Get the bounding boxes of the objects.
  var rect1:Rectangle = obj1.getBounds(obj1.parent);
  var rect2:Rectangle = obj2.getBounds(obj2.parent);

  // Check for intersection.
  return rect1.intersects(rect2);
}