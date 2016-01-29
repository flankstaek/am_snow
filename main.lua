local win = am.window {
    title = "snow",
    mode = "fullscreen",
    width = 600,
    height = 600,
    clear_color = vec4(.52, .71, .76, 1)
}

win.scene = am.blend("add_alpha")
    ^ am.particles2d{
        source_pos = vec2(0, 300),
        source_pos_var = vec2(300, 0),
        max_particles = 500,
        emission_rate = 3,
        life = 20,
        warmup_time = 1,
        speed = 1.5,
        start_color = vec4(1, 1, 1, 1),
        start_size = 3,
        start_size_var = 1,
        gravity = vec2(0, -10),
    }
    :action(function(node)
       --  node.source_pos = win:mouse_position()
    end)

-- win.scene:action(am.tween(win.scene"particles2d", 5, {angle = -win.scene"particles2d".angle}))

