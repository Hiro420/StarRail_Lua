local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.UI3DSystem.UI3DMonsterPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.UI3DCameraPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PunkLordUI3DPage"
L2_1 = G
L2_1 = L2_1.UI3DController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.OverAll = 1
L2_1 = {}
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.PunkLordMonsterRare
L3_1 = L3_1.S
L4_1 = {}
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.PunkLordMonsterRare
L5_1 = L5_1.A
L4_1[L5_1] = "Anim_TargetStand_Yellow2Purple"
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.PunkLordMonsterRare
L5_1 = L5_1.B
L4_1[L5_1] = "Anim_TargetStand_Yellow2Blue"
L2_1[L3_1] = L4_1
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.PunkLordMonsterRare
L3_1 = L3_1.A
L4_1 = {}
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.PunkLordMonsterRare
L5_1 = L5_1.S
L4_1[L5_1] = "Anim_TargetStand_Purple2Yellow"
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.PunkLordMonsterRare
L5_1 = L5_1.B
L4_1[L5_1] = "Anim_TargetStand_Purple2Blue"
L2_1[L3_1] = L4_1
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.PunkLordMonsterRare
L3_1 = L3_1.B
L4_1 = {}
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.PunkLordMonsterRare
L5_1 = L5_1.S
L4_1[L5_1] = "Anim_TargetStand_Blue2Yellow"
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.PunkLordMonsterRare
L5_1 = L5_1.A
L4_1[L5_1] = "Anim_TargetStand_Blue2Purple"
L2_1[L3_1] = L4_1
L3_1 = {}
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.PunkLordMonsterRare
L4_1 = L4_1.S
L5_1 = {}
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.GameCore
L6_1 = L6_1.PunkLordMonsterRare
L6_1 = L6_1.A
L5_1[L6_1] = "Anim_BackEffect_Yellow2Purple"
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.GameCore
L6_1 = L6_1.PunkLordMonsterRare
L6_1 = L6_1.B
L5_1[L6_1] = "Anim_BackEffect_Yellow2Blue"
L3_1[L4_1] = L5_1
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.PunkLordMonsterRare
L4_1 = L4_1.A
L5_1 = {}
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.GameCore
L6_1 = L6_1.PunkLordMonsterRare
L6_1 = L6_1.S
L5_1[L6_1] = "Anim_BackEffect_Purple2Yellow"
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.GameCore
L6_1 = L6_1.PunkLordMonsterRare
L6_1 = L6_1.B
L5_1[L6_1] = "Anim_BackEffect_Purple2Blue"
L3_1[L4_1] = L5_1
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.PunkLordMonsterRare
L4_1 = L4_1.B
L5_1 = {}
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.GameCore
L6_1 = L6_1.PunkLordMonsterRare
L6_1 = L6_1.S
L5_1[L6_1] = "Anim_BackEffect_Blue2Yellow"
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.GameCore
L6_1 = L6_1.PunkLordMonsterRare
L6_1 = L6_1.A
L5_1[L6_1] = "Anim_BackEffect_Blue2Purple"
L3_1[L4_1] = L5_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2.config
  L1_2.prefab_path = "UI/UI3D/EventPunkLord/Prefabs/EventPunkLord.prefab"
  L1_2 = {}
  A0_2._camera_anchors = L1_2
  L1_2 = {}
  A0_2._monster_anchors = L1_2
  L1_2 = {}
  A0_2._look_anchors = L1_2
  L1_2 = {}
  A0_2._cameras = L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.UI3DMonsterPanel
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._monster_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.UI3DCameraPanel
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._camera_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_node
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_camera
  L1_2(L2_2)
  A0_2.is_init_finish = true
  L2_2 = A0_2
  L1_2 = A0_2._trigger_init_finish_callback
  L1_2(L2_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  A0_2._cur_monster = nil
  A0_2._cached_monster_row = nil
  A0_2._init_callback_handler = nil
  A0_2._init_callback_listener = nil
  L2_2 = A0_2
  L1_2 = A0_2.dispose_monster
  L1_2(L2_2)
end
L0_1._on_dispose = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._init_callback_handler = A1_2
  A0_2._init_callback_listener = A2_2
  L3_2 = A0_2.is_init_finish
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._trigger_init_finish_callback
    L3_2(L4_2)
  end
end
L0_1.register_init_finish_callback = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._init_callback_handler
  if L1_2 then
    L1_2 = A0_2._init_callback_handler
    L2_2 = A0_2._init_callback_listener
    L1_2(L2_2)
  end
end
L0_1._trigger_init_finish_callback = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/LookAtPoint/Monster_ViewPoint"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_look_anchor = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/CameraPoint/Camera_Pos"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_camera_anchor = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animator
  L4_2 = "Root/BackGroundPoint/TargetStand"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.ani_target_stand = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animator
  L4_2 = "Root/BackGroundPoint/BackEffect"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.ani_back_effect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/BackGroundPoint/TargetStand"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_target_stand = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/BackGroundPoint/BackEffect"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_back_effect = L1_2
end
L0_1._init_node = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._cameras
  L2_2 = L1_1.OverAll
  L4_2 = A0_2
  L3_2 = A0_2.create_panel
  L5_2 = G
  L5_2 = L5_2.UI3DCamera
  L6_2 = "Root/VirtualCamera/MonsterOverallVC"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L1_2[L2_2] = L3_2
  L1_2 = A0_2._camera_panel
  L2_2 = L1_2
  L1_2 = L1_2.add_camera_state
  L3_2 = A0_2._cameras
  L4_2 = L1_1.OverAll
  L3_2 = L3_2[L4_2]
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cameras
  L2_2 = L1_1.OverAll
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2
  L1_2 = L1_2.set_follow
  L3_2 = A0_2.node_camera_anchor
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cameras
  L2_2 = L1_1.OverAll
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2
  L1_2 = L1_2.set_look_at
  L3_2 = A0_2.node_look_anchor
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cameras
  L2_2 = L1_1.OverAll
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2
  L1_2 = L1_2.active
  L1_2(L2_2)
end
L0_1._init_camera = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._cached_monster_row = A1_2
  if nil == A1_2 then
    return
  end
  L4_2 = A0_2._monster_panel
  L5_2 = L4_2
  L4_2 = L4_2.create_ui3d_monster
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = G
  L5_2 = L5_2.ComponentExtensions
  L5_2 = L5_2.SafeFind
  L7_2 = L4_2
  L6_2 = L4_2.get_transform
  L6_2 = L6_2(L7_2)
  L7_2 = "MonsterOffset"
  L8_2 = false
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.place_to_anchor
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  A0_2._cur_monster = L4_2
end
L0_1.show_monster = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._monster_panel
  if L1_2 then
    L1_2 = A0_2._monster_panel
    L2_2 = L1_2
    L1_2 = L1_2.remove_all_ui3d_monsters
    L1_2(L2_2)
  end
end
L0_1.dispose_monster = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 then
    L4_2 = A0_2._cached_monster_row
    if L4_2 then
      L4_2 = A0_2._cached_monster_row
      L4_2 = L4_2.MonsterID
      L5_2 = A1_2.MonsterID
      if L4_2 == L5_2 then
        L4_2 = false
        return L4_2
      end
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2.dispose_monster
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.show_monster
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = true
  return L4_2
end
L0_1.switch_monster = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_monster
  if L1_2 then
    L1_2 = A0_2._cur_monster
    L2_2 = L1_2
    L1_2 = L1_2.set_anim_bool
    L3_2 = "Dead"
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._cur_monster
    L2_2 = L1_2
    L1_2 = L1_2.play_anim
    L3_2 = "Appear"
    L1_2(L2_2, L3_2)
  end
end
L0_1.play_appear_ani = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_monster
  if L1_2 then
    L1_2 = A0_2._cur_monster
    L2_2 = L1_2
    L1_2 = L1_2.set_anim_bool
    L3_2 = "Dead"
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._cur_monster
    L2_2 = L1_2
    L1_2 = L1_2.play_anim
    L3_2 = "StandBy"
    L1_2(L2_2, L3_2)
  end
end
L0_1.play_standby_ani = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_monster
  if L1_2 then
    L1_2 = A0_2._cur_monster
    L2_2 = L1_2
    L1_2 = L1_2.set_anim_bool
    L3_2 = "Dead"
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1.play_die_ani = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._monster_rare
  if L2_2 == A1_2 then
    return
  end
  if nil == A1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.PunkLordMonsterRare
    A1_2 = L2_2.B
  end
  L3_2 = A0_2
  L2_2 = A0_2._play_rare_switch_ani
  L4_2 = A0_2._monster_rare
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  A0_2._monster_rare = A1_2
end
L0_1.switch_rare = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if nil == A1_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.PunkLordMonsterRare
    A1_2 = L3_2.B
  end
  L3_2 = A0_2.ani_target_stand
  L4_2 = L3_2
  L3_2 = L3_2.Play
  L5_2 = L2_1[A1_2]
  L5_2 = L5_2[A2_2]
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.ani_back_effect
  L4_2 = L3_2
  L3_2 = L3_2.Play
  L5_2 = L3_1[A1_2]
  L5_2 = L5_2[A2_2]
  L3_2(L4_2, L5_2)
end
L0_1._play_rare_switch_ani = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cur_monster
  if L2_2 then
    L2_2 = A0_2._cur_monster
    L3_2 = L2_2
    L2_2 = L2_2.set_entity_visibility
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2.node_target_stand
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.node_back_effect
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_monster_visibility = L4_1
return L0_1
