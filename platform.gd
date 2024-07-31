@tool
extends StaticBody2D

var tex = Sprite2D.new()
# Called when the node enters the scene tree for the first time.
func _ready():
	tex.texture = load('res://assets/cube.png')
	add_child(tex)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	tex.transform = $CollisionShape2D.transform
	tex.texture_repeat = CanvasItem.TEXTURE_REPEAT_ENABLED
	tex.region_enabled = true
	var rect = $CollisionShape2D.shape.get_rect()
	tex.region_rect = Rect2(Vector2(0,0), rect.size)
