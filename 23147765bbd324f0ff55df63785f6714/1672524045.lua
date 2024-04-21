local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.AdventureRoom.ChessRogueAdventureRoomSettlePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueAdventureRoomSettlePanel"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ChessRogueModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChessRogueAdventureRoomSettlePanelBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2.adventure_type = A1_2
  A0_2.param_groupid = A2_2
  A0_2.room_info = A3_2
  L4_2 = A0_2.room_info
  L4_2 = L4_2.Score
  A0_2.score = L4_2
  L4_2 = A0_2.room_info
  L4_2 = L4_2.LeftPropDestructNum
  A0_2.left = L4_2
  L4_2 = A0_2.left
  L5_2 = A0_2.score
  L4_2 = L4_2 + L5_2
  A0_2._total = L4_2
  L4_2 = A0_2.room_info
  L4_2 = L4_2.MonsterKillNum
  A0_2._defeat = L4_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.RogueAdventureRoomSettlePanelOpen
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_RogueDLC_Adventure_DestroyProp_Result"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.adventure_type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueAdventureGameplayType
  L2_2 = L2_2.RogueDestroyProp
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_totle_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_RogueDLC_Adventure_DestroyProp_ResultScore"
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_score
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_RogueDLC_Adventure_DestroyProp_ResultScore_Num"
    L4_2 = A0_2.score
    L5_2 = A0_2._total
    L1_2(L2_2, L3_2, L4_2, L5_2)
  else
    L1_2 = A0_2.adventure_type
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.RogueAdventureGameplayType
    L2_2 = L2_2.RogueEscapeLaser
    if L1_2 == L2_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.txt_totle_desc
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.txt_score
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2._binder
      L1_2 = L1_2.txt_totle_desc
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = "UIText_RogueDLC_Adventure_CaptureMonster_ResultScore"
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.txt_score
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetText
      L3_2 = A0_2.score
      L1_2(L2_2, L3_2)
    end
  end
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
      L2_2 = L2_2.txt_totle_desc
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_ActivityRogueEndless_PM_End_Tip_1"
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.txt_score
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetText
      L4_2 = A0_2._defeat
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.panel_target_list
      L3_2 = L2_2
      L2_2 = L2_2.setup_view
      L4_2 = {}
      L5_2 = "UIText_ActivityRogueEndless_PM_End_Tip_2"
      L4_2[1] = L5_2
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.panel_target_list
      L3_2 = L2_2
      L2_2 = L2_2.get_panel_by_index
      L4_2 = 1
      L2_2 = L2_2(L3_2, L4_2)
      L4_2 = L2_2
      L3_2 = L2_2.set_defeat_num
      L5_2 = "UIText_ActivityRogueEndless_PM_End_Tip_2"
      L6_2 = A0_2.room_info
      L6_2 = L6_2.MonsterKillNum
      L3_2(L4_2, L5_2, L6_2)
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
      L2_2 = L2_2.panel_target_list
      L3_2 = L2_2
      L2_2 = L2_2.setup_view
      L4_2 = {}
      L5_2 = 1
      L6_2 = 1
      L4_2[1] = L5_2
      L4_2[2] = L6_2
      L2_2(L3_2, L4_2)
      L2_2 = 1
      L3_2 = 2
      L4_2 = 1
      for L5_2 = L2_2, L3_2, L4_2 do
        L6_2 = A0_2._binder
        L6_2 = L6_2.panel_target_list
        L7_2 = L6_2
        L6_2 = L6_2.get_panel_by_index
        L8_2 = L5_2
        L6_2 = L6_2(L7_2, L8_2)
        L8_2 = L6_2
        L7_2 = L6_2.set_target_score
        L9_2 = L5_2
        L10_2 = L1_2.ScoreRange
        L10_2 = L10_2[L5_2]
        L11_2 = A0_2.score
        L12_2 = L1_2.ScoreRange
        L12_2 = L12_2[L5_2]
        L11_2 = L11_2 >= L12_2
        L12_2 = {}
        L13_2 = "UIText_RogueDLC_Adventure_CaptureMonster_Target1"
        L14_2 = "UIText_RogueDLC_Adventure_CaptureMonster_Target2"
        L12_2[1] = L13_2
        L12_2[2] = L14_2
        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
      end
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
      L2_2 = L2_2.panel_target_list
      L3_2 = L2_2
      L2_2 = L2_2.setup_view
      L4_2 = {}
      L5_2 = 1
      L6_2 = 1
      L4_2[1] = L5_2
      L4_2[2] = L6_2
      L2_2(L3_2, L4_2)
      L2_2 = 1
      L3_2 = 2
      L4_2 = 1
      for L5_2 = L2_2, L3_2, L4_2 do
        L6_2 = A0_2._binder
        L6_2 = L6_2.panel_target_list
        L7_2 = L6_2
        L6_2 = L6_2.get_panel_by_index
        L8_2 = L5_2
        L6_2 = L6_2(L7_2, L8_2)
        L8_2 = L6_2
        L7_2 = L6_2.set_target_score
        L9_2 = L5_2
        L10_2 = L1_2.ScoreRange
        L10_2 = L10_2[L5_2]
        L11_2 = A0_2.score
        L12_2 = L1_2.ScoreRange
        L12_2 = L12_2[L5_2]
        L11_2 = L11_2 >= L12_2
        L12_2 = {}
        L13_2 = "UIText_RogueDLC_Adventure_DestroyProp_Target1"
        L14_2 = "UIText_RogueDLC_Adventure_DestroyProp_Target2"
        L12_2[1] = L13_2
        L12_2[2] = L14_2
        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
      end
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
        L2_2 = L2_2.panel_target_list
        L3_2 = L2_2
        L2_2 = L2_2.setup_view
        L4_2 = {}
        L5_2 = 1
        L6_2 = 1
        L4_2[1] = L5_2
        L4_2[2] = L6_2
        L2_2(L3_2, L4_2)
        L2_2 = 1
        L3_2 = 2
        L4_2 = 1
        for L5_2 = L2_2, L3_2, L4_2 do
          L6_2 = A0_2._binder
          L6_2 = L6_2.panel_target_list
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
          L11_2 = A0_2.score
          L12_2 = L1_2.ScoreRange
          L12_2 = L12_2[L5_2]
          L11_2 = L11_2 >= L12_2
          L12_2 = {}
          L13_2 = "UIText_RogueNous_Adventure_Laser_Goal_1"
          L14_2 = "UIText_RogueNous_Adventure_Laser_Goal_2"
          L12_2[1] = L13_2
          L12_2[2] = L14_2
          L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
        end
      end
    end
  end
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.RogueAdventureRoomSettleFinish
  L1_2(L2_2)
end
L0_1._on_btn_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.RogueAdventureRoomSettleFinish
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L2_1
return L0_1
