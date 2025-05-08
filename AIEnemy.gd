extends CharacterBody3D

var speed = 3.0
var target : Node = null

func _ready():
    target = get_node("/root/Main/Player")

func _physics_process(delta):
    if target:
        var direction = (target.global_transform.origin - global_transform.origin).normalized()
        velocity = direction * speed
        move_and_slide()
