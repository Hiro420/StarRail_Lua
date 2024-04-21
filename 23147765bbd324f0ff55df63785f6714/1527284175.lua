local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.AdventureRoom.ChessRogueAdventureRoomTargetPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueAdventureRoomTargetPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ChessRogueModule
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._add_handlers
  L1_2(L2_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueAdventureRoomScoreUpdate
  L4_2 = L0_1._on_score_update
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueRayRoomLeftTrunUpdate
  L4_2 = L0_1._on_left_turn_update
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueAdventureRoomGameFinish
  L4_2 = L0_1._on_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueAdventureRoomUpdate
  L4_2 = L0_1._on_adventure_room_update
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  A0_2.adventure_type = A1_2
  A0_2.param_groupid = A2_2
  A0_2.room_info = A3_2
  L4_2 = A0_2.room_info
  L4_2 = L4_2.Status
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.RogueClientAdventureRoomStatus
  L5_2 = L5_2.Stopped
  if L4_2 ~= L5_2 then
    L4_2 = A0_2.room_info
    L4_2 = L4_2.Status
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.RogueClientAdventureRoomStatus
    L5_2 = L5_2.RogurAdventureRoomStatusRewardTaken
    if L4_2 ~= L5_2 then
      goto lbl_28
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.custom_root
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  do return end
  ::lbl_28::
  L4_2 = A0_2._binder
  L4_2 = L4_2.custom_root
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._owner
  L5_2 = L4_2
  L4_2 = L4_2._update_mission_panel_view_status
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = nil
  L5_2 = A0_2.adventure_type
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.RogueAdventureGameplayType
  L6_2 = L6_2.RogueCaptureMonster
  if L5_2 == L6_2 then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.RogueStatic
    L5_2 = L5_2.IsInRogueEndlessMode
    L5_2 = L5_2()
    if L5_2 then
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.GameCore
      L5_2 = L5_2.RogueCaptureMonsterConfigExcelTable
      L5_2 = L5_2.GetData
      L6_2 = A0_2.param_groupid
      L5_2 = L5_2(L6_2)
      L4_2 = L5_2
      L5_2 = A0_2._binder
      L5_2 = L5_2.txt_title
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetActive
      L7_2 = false
      L5_2(L6_2, L7_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.txt_desc
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetActive
      L7_2 = false
      L5_2(L6_2, L7_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.progress_txt
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetActive
      L7_2 = false
      L5_2(L6_2, L7_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.go_mission_hint
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetActive
      L7_2 = false
      L5_2(L6_2, L7_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.panel_target_list
      L6_2 = L5_2
      L5_2 = L5_2.setup_view
      L7_2 = {}
      L8_2 = "UIText_ActivityRogueEndless_PM_SP_Tip_1"
      L9_2 = "UIText_ActivityRogueEndless_PM_SP_Tip_2"
      L7_2[1] = L8_2
      L7_2[2] = L9_2
      L5_2(L6_2, L7_2)
      L5_2 = 1
      L6_2 = 2
      L7_2 = 1
      for L8_2 = L5_2, L6_2, L7_2 do
        L9_2 = A0_2._binder
        L9_2 = L9_2.panel_target_list
        L10_2 = L9_2
        L9_2 = L9_2.get_panel_by_index
        L11_2 = L8_2
        L9_2 = L9_2(L10_2, L11_2)
        L11_2 = L9_2
        L10_2 = L9_2.set_defeat_num
        L12_2 = A0_2.room_info
        L12_2 = L12_2.MonsterKillNum
        L10_2(L11_2, L12_2)
      end
    else
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.GameCore
      L5_2 = L5_2.RogueCaptureMonsterConfigExcelTable
      L5_2 = L5_2.GetData
      L6_2 = A0_2.param_groupid
      L5_2 = L5_2(L6_2)
      L4_2 = L5_2
      L5_2 = A0_2._binder
      L5_2 = L5_2.txt_title
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L7_2 = "UIText_RogueDLC_Adventure_CaptureMonster_Name"
      L5_2(L6_2, L7_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.txt_desc
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L7_2 = "UIText_RogueDLC_Adventure_CaptureMonster_ShortIntro"
      L5_2(L6_2, L7_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.progress_txt
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetActive
      L7_2 = true
      L5_2(L6_2, L7_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.panel_target_list
      L6_2 = L5_2
      L5_2 = L5_2.setup_view
      L7_2 = {}
      L8_2 = "UIText_RogueDLC_Adventure_CaptureMonster_Target1"
      L9_2 = "UIText_RogueDLC_Adventure_CaptureMonster_Target2"
      L7_2[1] = L8_2
      L7_2[2] = L9_2
      L5_2(L6_2, L7_2)
      L5_2 = 1
      L6_2 = 2
      L7_2 = 1
      for L8_2 = L5_2, L6_2, L7_2 do
        L9_2 = A0_2._binder
        L9_2 = L9_2.panel_target_list
        L10_2 = L9_2
        L9_2 = L9_2.get_panel_by_index
        L11_2 = L8_2
        L9_2 = L9_2(L10_2, L11_2)
        L11_2 = L9_2
        L10_2 = L9_2.set_target_score
        L12_2 = L8_2
        L13_2 = L4_2.ScoreRange
        L13_2 = L13_2[L8_2]
        L10_2(L11_2, L12_2, L13_2)
      end
    end
  else
    L5_2 = A0_2.adventure_type
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.RogueAdventureGameplayType
    L6_2 = L6_2.RogueDestroyProp
    if L5_2 == L6_2 then
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.GameCore
      L5_2 = L5_2.RogueDestroyPropConfigExcelTable
      L5_2 = L5_2.GetData
      L6_2 = A0_2.param_groupid
      L5_2 = L5_2(L6_2)
      L4_2 = L5_2
      L5_2 = A0_2._binder
      L5_2 = L5_2.txt_title
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L7_2 = "UIText_RogueDLC_Adventure_DestroyProp_Name"
      L5_2(L6_2, L7_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.txt_desc
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L7_2 = "UIText_RogueDLC_Adventure_DestroyProp_ShortIntro"
      L5_2(L6_2, L7_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.progress_txt
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetActive
      L7_2 = true
      L5_2(L6_2, L7_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.panel_target_list
      L6_2 = L5_2
      L5_2 = L5_2.setup_view
      L7_2 = {}
      L8_2 = "UIText_RogueDLC_Adventure_DestroyProp_Target1"
      L9_2 = "UIText_RogueDLC_Adventure_DestroyProp_Target2"
      L7_2[1] = L8_2
      L7_2[2] = L9_2
      L5_2(L6_2, L7_2)
      L5_2 = 1
      L6_2 = 2
      L7_2 = 1
      for L8_2 = L5_2, L6_2, L7_2 do
        L9_2 = A0_2._binder
        L9_2 = L9_2.panel_target_list
        L10_2 = L9_2
        L9_2 = L9_2.get_panel_by_index
        L11_2 = L8_2
        L9_2 = L9_2(L10_2, L11_2)
        L11_2 = L9_2
        L10_2 = L9_2.set_target_score
        L12_2 = L8_2
        L13_2 = L4_2.ScoreRange
        L13_2 = L13_2[L8_2]
        L10_2(L11_2, L12_2, L13_2)
      end
    else
      L5_2 = A0_2.adventure_type
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.GameCore
      L6_2 = L6_2.RogueAdventureGameplayType
      L6_2 = L6_2.RogueEscapeLaser
      if L5_2 == L6_2 then
        L5_2 = CS
        L5_2 = L5_2.RPG
        L5_2 = L5_2.GameCore
        L5_2 = L5_2.RogueEscapeLaserConfigExcelTable
        L5_2 = L5_2.GetData
        L6_2 = A0_2.param_groupid
        L5_2 = L5_2(L6_2)
        L4_2 = L5_2
        L5_2 = A0_2._binder
        L5_2 = L5_2.txt_title
        L6_2 = L5_2
        L5_2 = L5_2.SafeSetTextID
        L7_2 = "UIText_RogueNous_Adventure_Laser_Title"
        L5_2(L6_2, L7_2)
        L5_2 = A0_2._binder
        L5_2 = L5_2.txt_desc
        L6_2 = L5_2
        L5_2 = L5_2.SafeSetTextID
        L7_2 = "UIText_RogueNous_Adventure_Laser_HintTitle"
        L5_2(L6_2, L7_2)
        L5_2 = A0_2._binder
        L5_2 = L5_2.progress_txt
        L6_2 = L5_2
        L5_2 = L5_2.SafeSetActive
        L7_2 = true
        L5_2(L6_2, L7_2)
        L5_2 = A0_2._binder
        L5_2 = L5_2.panel_target_list
        L6_2 = L5_2
        L5_2 = L5_2.setup_view
        L7_2 = {}
        L8_2 = "UIText_RogueNous_Adventure_Laser_Goal_1"
        L9_2 = "UIText_RogueNous_Adventure_Laser_Goal_2"
        L7_2[1] = L8_2
        L7_2[2] = L9_2
        L5_2(L6_2, L7_2)
        L5_2 = 1
        L6_2 = 2
        L7_2 = 1
        for L8_2 = L5_2, L6_2, L7_2 do
          L9_2 = A0_2._binder
          L9_2 = L9_2.panel_target_list
          L10_2 = L9_2
          L9_2 = L9_2.get_panel_by_index
          L11_2 = L8_2
          L9_2 = L9_2(L10_2, L11_2)
          L11_2 = L9_2
          L10_2 = L9_2.set_ray_score
          L12_2 = L8_2
          L13_2 = L4_2.ScoreRange
          L13_2 = L13_2[L8_2]
          L14_2 = L4_2.ScoreperWave
          L13_2 = L13_2 / L14_2
          L10_2(L11_2, L12_2, L13_2)
        end
      else
        L5_2 = A0_2.adventure_type
        L6_2 = CS
        L6_2 = L6_2.RPG
        L6_2 = L6_2.GameCore
        L6_2 = L6_2.RogueAdventureGameplayType
        L6_2 = L6_2.RogueTurntable
        if L5_2 == L6_2 then
          L5_2 = A0_2._owner
          L6_2 = L5_2
          L5_2 = L5_2._update_map_panel_view_status
          L7_2 = false
          L5_2(L6_2, L7_2)
          L5_2 = A0_2._owner
          L6_2 = L5_2
          L5_2 = L5_2._update_right_panel_view_status
          L7_2 = false
          L5_2(L6_2, L7_2)
          L5_2 = A0_2._binder
          L5_2 = L5_2.custom_root
          L6_2 = L5_2
          L5_2 = L5_2.SafeSetActive
          L7_2 = false
          L5_2(L6_2, L7_2)
          L5_2 = A0_2._binder
          L5_2 = L5_2.go_page_info
          L6_2 = L5_2
          L5_2 = L5_2.SafeSetActive
          L7_2 = true
          L5_2(L6_2, L7_2)
          L5_2 = A0_2._binder
          L5_2 = L5_2.go_mission_status
          L6_2 = L5_2
          L5_2 = L5_2.SafeSetActive
          L7_2 = true
          L5_2(L6_2, L7_2)
          L5_2 = A0_2._binder
          L5_2 = L5_2.go_button_area
          L6_2 = L5_2
          L5_2 = L5_2.SafeSetActive
          L7_2 = true
          L5_2(L6_2, L7_2)
          L5_2 = A0_2._binder
          L5_2 = L5_2.go_mission_desc_2
          L6_2 = L5_2
          L5_2 = L5_2.SafeSetActive
          L7_2 = false
          L5_2(L6_2, L7_2)
          L5_2 = A0_2._binder
          L5_2 = L5_2.go_mission_desc_3
          L6_2 = L5_2
          L5_2 = L5_2.SafeSetActive
          L7_2 = false
          L5_2(L6_2, L7_2)
          L5_2 = A0_2._binder
          L5_2 = L5_2.txt_page_title
          L6_2 = L5_2
          L5_2 = L5_2.SafeSetTextID
          L7_2 = "UIText_RogueNous_Adventure_LuckyWheel_Title"
          L5_2(L6_2, L7_2)
          L5_2 = A0_2._binder
          L5_2 = L5_2.txt_mission_desc
          L6_2 = L5_2
          L5_2 = L5_2.SafeSetTextID
          L7_2 = "UIText_RogueNous_Adventure_LuckyWheel_InnerDesc"
          L5_2(L6_2, L7_2)
          L5_2 = A0_2._binder
          L5_2 = L5_2.txt_skill_button
          L6_2 = L5_2
          L5_2 = L5_2.SafeSetTextID
          L7_2 = "UIText_RogueNous_Adventure_LuckyWheel_StopButton"
          L5_2(L6_2, L7_2)
        end
      end
    end
  end
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.adventure_type
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.RogueAdventureGameplayType
  L3_2 = L3_2.RogueCaptureMonster
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.progress_txt
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_RogueDLC_Adventure_CaptureMonster_CurrentScore"
    L5_2 = A1_2.Score
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = A0_2.adventure_type
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.RogueAdventureGameplayType
    L3_2 = L3_2.RogueEscapeLaser
    if L2_2 == L3_2 then
      L2_2 = A1_2.RayTotalScore
      A0_2._total_num = L2_2
      L2_2 = A0_2._binder
      L2_2 = L2_2.progress_txt
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_RogueNous_Adventure_Laser_Progress"
      L5_2 = A1_2.RayScore
      L6_2 = A0_2._total_num
      L2_2(L3_2, L4_2, L5_2, L6_2)
    else
      L2_2 = A1_2.Score
      L3_2 = A1_2.LeftPropDestructNum
      L2_2 = L2_2 + L3_2
      A0_2._total_num = L2_2
      L2_2 = A0_2._binder
      L2_2 = L2_2.progress_txt
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_RogueDLC_Adventure_DestroyProp_CurrentScore"
      L5_2 = A1_2.Score
      L6_2 = A0_2._total_num
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L0_1._on_adventure_room_update = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.adventure_type
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.RogueAdventureGameplayType
  L3_2 = L3_2.RogueCaptureMonster
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.progress_txt
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_RogueDLC_Adventure_CaptureMonster_CurrentScore"
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = A0_2.adventure_type
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.RogueAdventureGameplayType
    L3_2 = L3_2.RogueEscapeLaser
    if L2_2 == L3_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.progress_txt
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_RogueNous_Adventure_Laser_Progress"
      L5_2 = A1_2
      L6_2 = A0_2._left_turn
      L2_2(L3_2, L4_2, L5_2, L6_2)
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.progress_txt
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_RogueDLC_Adventure_DestroyProp_CurrentScore"
      L5_2 = A1_2
      L6_2 = A0_2._total_num
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L0_1._on_score_update = L2_1
function L2_1(A0_2, A1_2)
  A0_2._left_turn = A1_2
end
L0_1._on_left_turn_update = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.custom_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2._update_mission_panel_view_status
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.adventure_type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueAdventureGameplayType
  L2_2 = L2_2.RogueTurntable
  if L1_2 == L2_2 then
    L1_2 = A0_2._owner
    L2_2 = L1_2
    L1_2 = L1_2._update_map_panel_view_status
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._owner
    L2_2 = L1_2
    L1_2 = L1_2._update_right_panel_view_status
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.go_page_info
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.go_mission_status
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.go_button_area
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_exit = L2_1
return L0_1
