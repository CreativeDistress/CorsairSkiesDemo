///scr_check_for_player
if(instance_exists(obj_player)){
   
    //Gets the distance between the player.
    var dis = point_distance(x, y, obj_player.x, obj_player.y);
    
    if(dis < sight){
        state = scr_enemy_chase_state;
        if (x > obj_player.x)
        {
            targetx = obj_player.x + 60;
        }
        if (x < obj_player.x)
        {
            targetx = obj_player.x - 60;
        }
        targety = obj_player.y;
    } else {
        scr_enemy_choose_new_state();
    }
    
} else {
    scr_enemy_choose_new_state();
}
