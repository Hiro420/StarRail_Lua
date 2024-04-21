local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.UI3DSystem.Monopoly.MonopolyDice3DPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.Monopoly.MonopolySpeakBubble3DPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.Monopoly.MonopolyRandomEventDice3DPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.Monopoly.MonopolyUI3DGroundBubblePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.Monopoly.MonopolyUI3DTouchPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonopolyUI3DPage"
L2_1 = G
L2_1 = L2_1.UI3DController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "Config/Gameplays/Monopoly/Map/Monopoly_TestMap.json"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.MonopolyModule
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2.config
  L1_2.prefab_path = "UI/UI3D/MonoPoly/UI3D_MonopolyMapArea.prefab"
  L1_2 = A0_2.config
  L1_2.environment_profile_path = "UI/UI3D/MonoPoly/UI3D_MonopolyMapArea.enviroProfile.asset"
  L1_2 = A0_2.config
  L1_2.is_async_load = false
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UI3DGame
  L3_2 = L3_2.MonoUI3DGameMain
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._mono_main = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MonopolyDice3DPanel
  L4_2 = "MapArea/AvatarRoot/AnimRoot/DiceRoot"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._panel_dice_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MonopolyRandomEventDice3DPanel
  L4_2 = "MapArea/AvatarRoot"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._panel_dice_random_event = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MonopolySpeakBubble3DPanel
  L4_2 = "MapArea/AvatarRoot/AvatarPopUp"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._player_speak_bubble_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MonopolyUI3DGroundBubblePanel
  L4_2 = "MapArea/GenViewRoot/BlockPopUp"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._ground_bubble_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MapArea/AvatarRoot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._player_transform_ref = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handlers
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_touch
  L1_2(L2_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyShowPlayerSpeakBubble
  L4_2 = A0_2._on_show_player_bubble
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyHidePlayerSpeakBubble
  L4_2 = A0_2._on_hide_player_bubble
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyShowGroundBubble
  L4_2 = A0_2._on_show_ground_bubble
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyCloseGroundHint
  L4_2 = A0_2._on_close_ground_bubble
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyShowEnterDreamEffect
  L4_2 = A0_2._on_enter_dream
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyPlayWorldThreeAnim
  L4_2 = A0_2._play_world_three_anim
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_notify_handlers = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MonopolyUI3DTouchPanel
  L4_2 = "Touch"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._touch_panel = L1_2
end
L0_1._init_touch = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._player_transform_ref
  return L1_2
end
L0_1.get_player_ref = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2._panel_dice_root
  L5_2 = L4_2
  L4_2 = L4_2.register_rotate_finish_cbk
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.register_rotate_finish_cbk = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._panel_dice_root
  L4_2 = L3_2
  L3_2 = L3_2.rotate
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.rotate = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._panel_dice_random_event
  L4_2 = L3_2
  L3_2 = L3_2.register_dice_rotate_finish_callback
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.register_random_event_rotate_finish_callback = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_dice_random_event
  L2_2 = L1_2
  L1_2 = L1_2.clear_callback
  L1_2(L2_2)
end
L0_1.clear_random_event_callback = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._panel_dice_random_event
  L3_2 = L2_2
  L2_2 = L2_2.rotate
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.rotate_random_event_dice = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._panel_dice_random_event
  L3_2 = L2_2
  L2_2 = L2_2.set_node_random_event_dice_active
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_random_event_dice_active = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_dice_random_event
  L2_2 = L1_2
  L1_2 = L1_2.calculate_vc_orthographic_size
  L1_2(L2_2)
end
L0_1.calculate_random_event_vc_orthographic_size = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._mono_main
  L2_2 = L1_2
  L1_2 = L1_2.InitMonopolyGame
  L3_2 = L1_1
  L4_2 = L2_1.SystemInfo
  L4_2 = L4_2.CurCellID
  L5_2 = L2_1.SystemInfo
  L5_2 = L5_2.CurMapID
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._monopoly_controller = L1_2
end
L0_1._setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._monopoly_controller
  L3_2 = L2_2
  L2_2 = L2_2.Move
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.move = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._monopoly_controller
  L4_2 = L3_2
  L3_2 = L3_2.MoveToCell
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.move_to_cell = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._monopoly_controller
  L3_2 = L2_2
  L2_2 = L2_2.MoveByPath
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.move_by_path = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._monopoly_controller
  L3_2 = L2_2
  L2_2 = L2_2.TeleportToCell
  L4_2 = A1_2.CellID
  L5_2 = A1_2.MapID
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.teleport_to = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._monopoly_controller
  L3_2 = L2_2
  L2_2 = L2_2.AddCellEventTrigger
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.activate_event_trigger = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._monopoly_controller
  L3_2 = L2_2
  L2_2 = L2_2.AddCellEventTriggerImmediately
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.activate_event_trigger_immediate = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._monopoly_controller
  L3_2 = L2_2
  L2_2 = L2_2.OverrideStartCellID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.override_start_cell = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._monopoly_controller
  L4_2 = L3_2
  L3_2 = L3_2.ChangeAssetLevel
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.upgrade_asset = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._monopoly_controller
  L2_2 = L1_2
  L1_2 = L1_2.RefreshActiveState
  L1_2(L2_2)
end
L0_1.refresh_active_state = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._monopoly_controller
  L2_2 = L1_2
  L1_2 = L1_2.UpdateBarriers
  L1_2(L2_2)
end
L0_1.update_content = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._monopoly_controller
  L2_2 = L1_2
  L1_2 = L1_2.AddCellEventTriggerImmediately
  L3_2 = L2_1.SystemInfo
  L3_2 = L3_2.CurCellID
  L1_2(L2_2, L3_2)
end
L0_1.try_recover_trigger = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._monopoly_controller
  L3_2 = L2_2
  L2_2 = L2_2.AddVisualEffect
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.trigger_effect = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._monopoly_controller
  L4_2 = L3_2
  L3_2 = L3_2.AddVisualEffect
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.trigger_3d_effect = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._player_speak_bubble_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_active_proxy
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._player_speak_bubble_panel
  L3_2 = L2_2
  L2_2 = L2_2.update_content
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_show_player_bubble = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._player_speak_bubble_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_active_proxy
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._on_hide_player_bubble = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._ground_bubble_panel
  L3_2 = L2_2
  L2_2 = L2_2.show
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_show_ground_bubble = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._ground_bubble_panel
  L2_2 = L1_2
  L1_2 = L1_2.close
  L1_2(L2_2)
end
L0_1._on_close_ground_bubble = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "MapArea/Ground/WorldContainer/WorldMapArea4(Clone)"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Animation
  L5_2 = "MapArea/GenViewRoot/ObstacleNode_Dream"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._safe_find
  L5_2 = "MapArea/GenViewRoot/ObstacleNode_Dream"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._safe_find
  L6_2 = "MapArea/AvatarRoot/Effect"
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = L1_2
  L5_2 = L1_2.Play
  L7_2 = "WorldmapArea4_Fadeout"
  L5_2(L6_2, L7_2)
  L6_2 = L3_2
  L5_2 = L3_2.SafeSetActive
  L7_2 = true
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.SafeSetActive
  L7_2 = true
  L5_2(L6_2, L7_2)
  L6_2 = L2_2
  L5_2 = L2_2.Play
  L7_2 = "ObstacleNodeDrean_Fadeout"
  L5_2(L6_2, L7_2)
end
L0_1._on_enter_dream = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Animation
  L5_2 = "MapArea/Ground/WorldContainer/WorldMapArea3(Clone)/Base/MoveAnim"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.Play
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1._play_world_three_anim = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._touch_panel
  L2_2 = L1_2
  L1_2 = L1_2.try_reset_camera
  L1_2(L2_2)
end
L0_1.try_reset_camera = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._touch_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_drag_enabled
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.disable_drag_map = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._touch_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_drag_enabled
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1.enable_drag_map = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._monopoly_controller
  if L2_2 ~= nil then
    L2_2 = A0_2._monopoly_controller
    L3_2 = L2_2
    L2_2 = L2_2.SetGamePause
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_game_pause = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._touch_panel
  L3_2 = L2_2
  L2_2 = L2_2.simulate_touch
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.simulate_touch = L3_1
return L0_1
