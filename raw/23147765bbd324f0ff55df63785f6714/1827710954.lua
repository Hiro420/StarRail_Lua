local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Settlement.ChessRogueLayerExploreFinishDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueLayerExploreFinishDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_Roman_Number_Text_"
L2_1 = "UIText_RogueDLC_LayerFinsh_DescLink"
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.ChessRogueModule
L4_1 = "FadeIn_Frist"
L5_1 = "FadeIn_Second"
L6_1 = "Switch_Dialog"
L7_1 = "FadeIn_Default"
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChessRogueLayerExploreFinishDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_OpenWithCut
  A0_2._transition_style = L1_2
  A0_2._btn_lock = false
  A0_2._pause_game = true
end
L0_1.ctor = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  L5_2 = L1_1
  L6_2 = tostring
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 .. L6_2
  A0_2._difficulty_text_id = L5_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.RogueDLCLayerExcelTable
  L5_2 = L5_2.GetData
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  A0_2._level_row = L5_2
  A0_2._cabinet_data_lst = A3_2
  L5_2 = G
  L5_2 = L5_2.ChessRogueUtils
  L5_2 = L5_2.calculate_cabinet_increment_tb_by_missions
  L6_2 = A3_2
  L5_2 = L5_2(L6_2)
  A0_2._dimension_increment_tb = L5_2
  L5_2 = A4_2 ~= nil
  A0_2._shown_aeon_story = L5_2
  A0_2._dimension_row = A4_2
  L5_2 = A0_2._cabinet_data_lst
  L5_2 = L5_2 ~= nil
  A0_2._has_cabinet_mission_finished = L5_2
end
L0_1.init = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.exit_btn
  L4_2 = A0_2._on_exit_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.cabinet_mission_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_fade_in_all_finish_callback
  L3_2 = A0_2._on_cabinet_mission_fade_all_finished
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = G
  L1_2 = L1_2.TextmapStatic
  L1_2 = L1_2.GetText
  L2_2 = A0_2._difficulty_text_id
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.TextmapStatic
  L2_2 = L2_2.GetText
  L3_2 = A0_2._level_row
  L3_2 = L3_2.LayerNumID
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.TextmapStatic
  L3_2 = L3_2.GetText
  L4_2 = A0_2._level_row
  L4_2 = L4_2.LayerNameID
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.layer_name
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L2_1
  L7_2 = L1_2
  L8_2 = L2_2
  L9_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = A0_2._cabinet_data_lst
  if L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.cabinet_mission_panel
    L5_2 = L4_2
    L4_2 = L4_2.setup_view
    L6_2 = A0_2._cabinet_data_lst
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.graph_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = A0_2._cabinet_data_lst
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._shown_aeon_story
  if L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.aeon_room_desc
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = "UIText_RogueDLC_LayerFinsh_MainStoryUnlock_Desc"
    L7_2 = G
    L7_2 = L7_2.TextmapStatic
    L7_2 = L7_2.GetText
    L8_2 = A0_2._dimension_row
    L8_2 = L8_2.PlayShortDesc
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2._play_fade_in
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.setup_gamepad_hint_view
  L4_2(L5_2)
end
L0_1._setup_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._btn_lock = true
  L1_2 = A0_2._has_cabinet_mission_finished
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.animation_event_cmpt
    L2_2 = L1_2
    L1_2 = L1_2.AddAnimationEvent
    L3_2 = "DicePassLvMissionToastDialog_FadeIn_Frist"
    function L4_2()
      local L0_3, L1_3
    end
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.animator_cmpt
    L2_2 = L1_2
    L1_2 = L1_2.SetTrigger
    L3_2 = L4_1
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.animation_event_cmpt
    L2_2 = L1_2
    L1_2 = L1_2.AddAnimationEvent
    L3_2 = "DicePassLvMissionToastDialog_FadeIn_Default"
    function L4_2()
      local L0_3, L1_3
      A0_2._btn_lock = false
    end
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.animator_cmpt
    L2_2 = L1_2
    L1_2 = L1_2.SetTrigger
    L3_2 = L7_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.graph_panel
    L2_2 = L1_2
    L1_2 = L1_2.play_aeon_room_unlock_animation
    L3_2 = A0_2._dimension_row
    L3_2 = L3_2.AeonDimensionID
    L1_2(L2_2, L3_2)
  end
end
L0_1._play_fade_in = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._btn_lock = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_event_cmpt
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = "DicePassLvMissionToastDialog_FadeIn_Second"
  function L4_2()
    local L0_3, L1_3
    A0_2._btn_lock = false
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_cmpt
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = L5_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.graph_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_animation_play
  L1_2(L2_2)
end
L0_1._on_cabinet_mission_fade_all_finished = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._btn_lock
  if L1_2 then
    return
  end
  L1_2 = A0_2._has_cabinet_mission_finished
  if L1_2 then
    L1_2 = A0_2._shown_aeon_story
    if L1_2 then
      L1_2 = A0_2._aeon_story_already_shown
      if not L1_2 then
        A0_2._btn_lock = true
        L1_2 = A0_2._binder
        L1_2 = L1_2.animation_event_cmpt
        L2_2 = L1_2
        L1_2 = L1_2.AddAnimationEvent
        L3_2 = "DicePassLvMissionToastDialog_Switch_Dialog"
        function L4_2()
          local L0_3, L1_3
          A0_2._btn_lock = false
        end
        L1_2(L2_2, L3_2, L4_2)
        L1_2 = A0_2._binder
        L1_2 = L1_2.animator_cmpt
        L2_2 = L1_2
        L1_2 = L1_2.SetTrigger
        L3_2 = L6_1
        L1_2(L2_2, L3_2)
        A0_2._aeon_story_already_shown = true
        L1_2 = A0_2._binder
        L1_2 = L1_2.graph_panel
        L2_2 = L1_2
        L1_2 = L1_2.play_aeon_room_unlock_animation
        L3_2 = A0_2._dimension_row
        L3_2 = L3_2.AeonDimensionID
        L1_2(L2_2, L3_2)
        L1_2 = A0_2._binder
        L1_2 = L1_2.graph_panel
        L2_2 = L1_2
        L1_2 = L1_2.try_increase_default_quad
        L3_2 = A0_2._dimension_row
        L3_2 = L3_2.AeonDimensionID
        L1_2(L2_2, L3_2)
        L1_2 = A0_2._binder
        L1_2 = L1_2.graph_panel
        L2_2 = L1_2
        L1_2 = L1_2.play_transfer_anim
        L3_2 = A0_2._dimension_row
        L3_2 = L3_2.AeonDimensionID
        L1_2(L2_2, L3_2)
        L1_2 = A0_2._binder
        L1_2 = L1_2.scroll_hint_root
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetActive
        L3_2 = false
        L1_2(L2_2, L3_2)
        return
      end
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit_btn_clicked = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L2_2 = L1_2
  L1_2 = L1_2.CanScroll
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_hint_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.scroll_rect
    L4_2 = L3_2
    L3_2 = L3_2.CanScroll
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.scroll_rect
      L3_2 = L3_2.gameObject
      L3_2 = L3_2.activeInHierarchy
    end
  end
  L1_2(L2_2, L3_2)
end
L0_1.setup_gamepad_hint_view = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_hint_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_gamepad_input
  L4_2 = L4_2()
  if L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.scroll_rect
    L5_2 = L4_2
    L4_2 = L4_2.CanScroll
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = A0_2._binder
      L4_2 = L4_2.scroll_rect
      L4_2 = L4_2.gameObject
      L4_2 = L4_2.activeInHierarchy
    end
  end
  L2_2(L3_2, L4_2)
end
L0_1._on_in_control_input_switch = L8_1
return L0_1
