local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.AdventureRoom.ChessRogueAdventureRoomPreparePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueAdventureRoomPreparePanel"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChessRogueAdventureRoomPreparePanelBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_resp_esc = false
  A0_2._pause_game = true
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.start_btn
  L4_2 = A0_2._on_start_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2.adventure_type = A1_2
  A0_2.param_groupid = A2_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._add_handlers = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_name_child
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = nil
  L2_2 = A0_2.adventure_type
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.RogueAdventureGameplayType
  L3_2 = L3_2.RogueCaptureMonster
  if L2_2 == L3_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.RogueStatic
    L2_2 = L2_2.IsInRogueEndlessMode
    L2_2 = L2_2()
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_title
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_ActivityRogueEndless_PM_Ex_Title"
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_name
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.desc_list_view
      L3_2 = L2_2
      L2_2 = L2_2.setup_view
      L4_2 = {}
      L5_2 = "UIText_ActivityRogueEndless_PM_Ex_Tip_1"
      L6_2 = "UIText_ActivityRogueEndless_PM_Ex_Tip_2"
      L4_2[1] = L5_2
      L4_2[2] = L6_2
      L2_2(L3_2, L4_2)
      L2_2 = 1
      L3_2 = 2
      L4_2 = 1
      for L5_2 = L2_2, L3_2, L4_2 do
        L6_2 = A0_2._binder
        L6_2 = L6_2.desc_list_view
        L7_2 = L6_2
        L6_2 = L6_2.get_panel_by_index
        L8_2 = L5_2
        L6_2 = L6_2(L7_2, L8_2)
        L8_2 = L6_2
        L7_2 = L6_2.set_num_mode
        L7_2(L8_2)
      end
    else
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.RogueCaptureMonsterConfigExcelTable
      L2_2 = L2_2.GetData
      L3_2 = A0_2.param_groupid
      L2_2 = L2_2(L3_2)
      L1_2 = L2_2
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_title
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_RogueDLC_Adventure_CaptureMonster_Name"
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.desc_list_view
      L3_2 = L2_2
      L2_2 = L2_2.setup_view
      L4_2 = {}
      L5_2 = "UIText_RogueDLC_Adventure_CaptureMonster_Target1"
      L6_2 = "UIText_RogueDLC_Adventure_CaptureMonster_Target2"
      L4_2[1] = L5_2
      L4_2[2] = L6_2
      L2_2(L3_2, L4_2)
      L2_2 = 1
      L3_2 = 2
      L4_2 = 1
      for L5_2 = L2_2, L3_2, L4_2 do
        L6_2 = A0_2._binder
        L6_2 = L6_2.desc_list_view
        L7_2 = L6_2
        L6_2 = L6_2.get_panel_by_index
        L8_2 = L5_2
        L6_2 = L6_2(L7_2, L8_2)
        L8_2 = L6_2
        L7_2 = L6_2.set_target_score
        L9_2 = L5_2
        L10_2 = L1_2.ScoreRange
        L10_2 = L10_2[L5_2]
        L7_2(L8_2, L9_2, L10_2)
      end
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_name
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_RogueDLC_Adventure_CaptureMonster_Intro"
      L2_2(L3_2, L4_2)
    end
  else
    L2_2 = A0_2.adventure_type
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.RogueAdventureGameplayType
    L3_2 = L3_2.RogueDestroyProp
    if L2_2 == L3_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.RogueDestroyPropConfigExcelTable
      L2_2 = L2_2.GetData
      L3_2 = A0_2.param_groupid
      L2_2 = L2_2(L3_2)
      L1_2 = L2_2
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_title
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_RogueDLC_Adventure_DestroyProp_Name"
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.desc_list_view
      L3_2 = L2_2
      L2_2 = L2_2.setup_view
      L4_2 = {}
      L5_2 = "UIText_RogueDLC_Adventure_DestroyProp_Target1"
      L6_2 = "UIText_RogueDLC_Adventure_DestroyProp_Target2"
      L4_2[1] = L5_2
      L4_2[2] = L6_2
      L2_2(L3_2, L4_2)
      L2_2 = 1
      L3_2 = 2
      L4_2 = 1
      for L5_2 = L2_2, L3_2, L4_2 do
        L6_2 = A0_2._binder
        L6_2 = L6_2.desc_list_view
        L7_2 = L6_2
        L6_2 = L6_2.get_panel_by_index
        L8_2 = L5_2
        L6_2 = L6_2(L7_2, L8_2)
        L8_2 = L6_2
        L7_2 = L6_2.set_target_score
        L9_2 = L5_2
        L10_2 = L1_2.ScoreRange
        L10_2 = L10_2[L5_2]
        L7_2(L8_2, L9_2, L10_2)
      end
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_name
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_RogueDLC_Adventure_DestroyProp_Intro"
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2.adventure_type
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.RogueAdventureGameplayType
      L3_2 = L3_2.RogueEscapeLaser
      if L2_2 == L3_2 then
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.GameCore
        L2_2 = L2_2.RogueEscapeLaserConfigExcelTable
        L2_2 = L2_2.GetData
        L3_2 = A0_2.param_groupid
        L2_2 = L2_2(L3_2)
        L1_2 = L2_2
        L2_2 = A0_2._binder
        L2_2 = L2_2.text_title
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetTextID
        L4_2 = "UIText_RogueNous_Adventure_Laser_Title"
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._binder
        L2_2 = L2_2.desc_list_view
        L3_2 = L2_2
        L2_2 = L2_2.setup_view
        L4_2 = {}
        L5_2 = "UIText_RogueNous_Adventure_Laser_Goal_1"
        L6_2 = "UIText_RogueNous_Adventure_Laser_Goal_2"
        L4_2[1] = L5_2
        L4_2[2] = L6_2
        L2_2(L3_2, L4_2)
        L2_2 = 1
        L3_2 = 2
        L4_2 = 1
        for L5_2 = L2_2, L3_2, L4_2 do
          L6_2 = A0_2._binder
          L6_2 = L6_2.desc_list_view
          L7_2 = L6_2
          L6_2 = L6_2.get_panel_by_index
          L8_2 = L5_2
          L6_2 = L6_2(L7_2, L8_2)
          L8_2 = L6_2
          L7_2 = L6_2.set_target_score
          L9_2 = L5_2
          L10_2 = L1_2.ScoreRange
          L10_2 = L10_2[L5_2]
          L11_2 = L1_2.ScoreperWave
          L10_2 = L10_2 / L11_2
          L7_2(L8_2, L9_2, L10_2)
        end
        L2_2 = A0_2._binder
        L2_2 = L2_2.text_name
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetTextID
        L4_2 = "UIText_RogueNous_Adventure_Laser_Desc"
        L2_2(L3_2, L4_2)
      else
        L2_2 = A0_2.adventure_type
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.GameCore
        L3_2 = L3_2.RogueAdventureGameplayType
        L3_2 = L3_2.RogueTurntable
        if L2_2 == L3_2 then
          L2_2 = A0_2._binder
          L2_2 = L2_2.text_title
          L3_2 = L2_2
          L2_2 = L2_2.SafeSetTextID
          L4_2 = "UIText_RogueNous_Adventure_LuckyWheel_Title"
          L2_2(L3_2, L4_2)
          L2_2 = A0_2._binder
          L2_2 = L2_2.text_name
          L3_2 = L2_2
          L2_2 = L2_2.SafeSetTextID
          L4_2 = "UIText_RogueNous_Adventure_LuckyWheel_Desc"
          L2_2(L3_2, L4_2)
        end
      end
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_key_map_info
  L2_2(L3_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_start_btn_clicked = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_prepare_rogue_adventure_room_sc_rsp = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_intro_layout_group
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L2_2 = L1_2
  L1_2 = L1_2.CanScroll
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_scroll_key_map_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_scroll_key_map_info_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_key_map_info = L1_1
return L0_1
