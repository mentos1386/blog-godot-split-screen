extends KinematicBody2D

export (String, 'player_1', 'player_2') var player_name = 'player_1'

func _ready():
    match player_name:
        'player_1':
            $sprite.texture = preload("res://green.png")
        'player_2':
            $sprite.texture = preload("res://yellow.png")

func _process(delta):
    var LEFT = Input.is_action_pressed(player_name + "_left")
    var RIGHT = Input.is_action_pressed(player_name + "_right")
    var UP = Input.is_action_pressed(player_name + "_up")
    var DOWN = Input.is_action_pressed(player_name + "_down")
    
    var movedir = Vector2()
    movedir.x = -int(LEFT) + int(RIGHT)
    movedir.y = -int(UP) + int(DOWN)
    
    
    move_and_slide(movedir * 500, Vector2())