extends Camera2D

var player_target = null

func _physics_process(delta):
    if player_target:
        position = player_target.position