extends Node

onready var view_1 = $viewports/container_1/view
onready var view_2 = $viewports/container_2/view

onready var camera_1 = $viewports/container_1/view/camera
onready var camera_2 = $viewports/container_2/view/camera

onready var player_1 = $viewports/container_1/view/player_1
onready var player_2 = $viewports/container_1/view/player_2

func _ready():
    
    # Set worlds
    view_2.world_2d = view_1.world_2d
    
    # Set cameras
    camera_1.player_target = player_1
    camera_2.player_target = player_2  
