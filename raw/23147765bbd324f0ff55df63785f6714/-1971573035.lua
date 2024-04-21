local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.PlayerLevelUp.PlayerExpGetDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PlayerExpGetDialog"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 1.667
L2_1 = G
L2_1 = L2_1.TextExtensions
L3_1 = "UIText_BreakUp_Tips"
L4_1 = "UIText_BreakUp_Tips_Mission"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowPageContext
  L4_2 = A0_2._on_notify_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MazeToBattleTransitBegin
  L4_2 = A0_2._on_notify_finish
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Time
  L1_2 = L1_2.time
  L2_2 = A0_2._closeStamp
  if L1_2 > L2_2 then
    L1_2 = A0_2._complete_obj
    if L1_2 ~= nil then
      L1_2 = A0_2._complete_callback
      if L1_2 ~= nil then
        L1_2 = A0_2._complete_callback
        L2_2 = A0_2._complete_obj
        L1_2(L2_2)
      end
    end
    L2_2 = A0_2
    L1_2 = A0_2._exit
    L1_2(L2_2)
  end
end
L0_1._on_tick = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1.SafeSetText
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_player_level
  L3_2 = A0_2._player_cur_level
  L1_2(L2_2, L3_2)
  L1_2 = L2_1.SafeSetText
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_current_level_exp
  L3_2 = A0_2._show_current_exp
  L1_2(L2_2, L3_2)
  L1_2 = L2_1.SafeSetText
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_current_level_full_exp
  L3_2 = A0_2._show_max_exp
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._add_exp
  if L1_2 ~= nil then
    L1_2 = A0_2._add_exp
    if not (L1_2 <= 0) then
      goto lbl_34
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_add_exp
  L1_2 = L1_2.gameObject
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_add_exp_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  goto lbl_39
  ::lbl_34::
  L1_2 = L2_1.SafeSetText
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_add_exp
  L3_2 = A0_2._add_exp
  L1_2(L2_2, L3_2)
  ::lbl_39::
  L1_2 = A0_2._binder
  L1_2 = L1_2.smooth_mask_exp
  L2_2 = A0_2._show_ratio
  L1_2.fillAmount = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._check_is_exp_overflow
  L1_2(L2_2)
end
L0_1._refresh_view = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  L5_2 = G
  L5_2 = L5_2.PopupQueueManager
  L6_2 = L5_2
  L5_2 = L5_2.set_maze_main_page_toast
  L7_2 = A0_2
  L8_2 = A0_2._exit
  L5_2(L6_2, L7_2, L8_2)
  A0_2._player_cur_level = A1_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.ConstValueCommonExcelTable
  L5_2 = L5_2.GetData
  L6_2 = "Player_Max_Level"
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.Value
  L5_2 = L5_2.IntValue
  A0_2._const_max_player_level = L5_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.PlayerLevelExcelTable
  L5_2 = L5_2.GetData
  L6_2 = A0_2._player_cur_level
  L5_2 = L5_2(L6_2)
  A0_2._show_current_exp = A2_2
  A0_2._add_exp = A3_2
  L6_2 = nil
  L7_2 = A0_2._player_cur_level
  L8_2 = A0_2._const_max_player_level
  if L7_2 >= L8_2 then
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.PlayerLevelExcelTable
    L7_2 = L7_2.GetData
    L8_2 = A0_2._player_cur_level
    L8_2 = L8_2 - 1
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.PlayerLevelExcelTable
    L7_2 = L7_2.GetData
    L8_2 = A0_2._player_cur_level
    L7_2 = L7_2(L8_2)
    L6_2 = L7_2
    L7_2 = L6_2.PlayerExp
    L8_2 = L5_2.PlayerExp
    L7_2 = L7_2 - L8_2
    A0_2._show_max_exp = L7_2
    A0_2._show_ratio = 1
  else
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.PlayerLevelExcelTable
    L7_2 = L7_2.GetData
    L8_2 = A0_2._player_cur_level
    L8_2 = L8_2 + 1
    L7_2 = L7_2(L8_2)
    L6_2 = L7_2
    L7_2 = L6_2.PlayerExp
    L8_2 = L5_2.PlayerExp
    L7_2 = L7_2 - L8_2
    A0_2._show_max_exp = L7_2
    L7_2 = A0_2._show_current_exp
    L8_2 = A0_2._show_max_exp
    L7_2 = L7_2 / L8_2
    A0_2._show_ratio = L7_2
  end
  L8_2 = A0_2
  L7_2 = A0_2._refresh_view
  L7_2(L8_2)
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.Time
  L7_2 = L7_2.time
  L8_2 = L1_1
  L7_2 = L7_2 + L8_2
  L7_2 = L7_2 + A4_2
  A0_2._closeStamp = L7_2
  L8_2 = A0_2
  L7_2 = A0_2._add_tick
  L7_2(L8_2)
end
L0_1.refresh = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._complete_obj = A1_2
  A0_2._complete_callback = A2_2
end
L0_1.set_complete_callback = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._exit
  L1_2(L2_2)
end
L0_1._on_notify_finish = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.WorldLevelExcelTable
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.PlayerModule
  L2_2 = L2_2.PlayerData
  L2_2 = L2_2.WorldLevel
  L3_2 = L1_2.GetData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.MaxPlayerLevel
  L4_2 = A0_2._player_cur_level
  if L3_2 == L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.overflow_hint_root
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2._try_show_pre_request_mission_hint
    L4_2(L5_2)
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.overflow_hint_root
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2._player_cur_level
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.GlobalVars
  L5_2 = L5_2.s_ModuleManager
  L5_2 = L5_2.PlayerModule
  L5_2 = L5_2.MaxPlayerLevel
  if L4_2 == L5_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.exp_panel_root
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.max_level_bg_root
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
  end
end
L0_1._check_is_exp_overflow = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.overflow_hint_text
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.PlayerModule
  L1_2 = L1_2.PlayerData
  L1_2 = L1_2.WorldLevel
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.PlayerModule
  L2_2 = L2_2.PlayerData
  L2_2 = L2_2.MaxWorldLevel
  if L1_2 == L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.WorldLevelExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._player_current_level
  L4_2 = L2_2.MaxPlayerLevel
  if L3_2 ~= L4_2 then
    return
  end
  L3_2 = L2_2.LevelUpMission
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.MissionModule
  L5_2 = L4_2
  L4_2 = L4_2.GetMainMissionRow
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 == nil then
    return
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.overflow_hint_root
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = true
  L5_2(L6_2, L7_2)
end
L0_1._try_show_world_level_up_hint = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.overflow_hint_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.overflow_hint_text
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
end
L0_1._try_show_go_take_mission_hint = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.PlayerModule
  L1_2 = L1_2.PlayerData
  L1_2 = L1_2.WorldLevel
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.WorldLevelExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2._try_show_world_level_up_hint
    L3_2(L4_2)
    return
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.MissionModule
  L4_2 = L3_2
  L3_2 = L3_2.TryGetMainMissionData
  L5_2 = L2_2.LevelUpMission
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.IsFinish
    if L4_2 ~= false then
      goto lbl_44
    end
    L4_2 = L3_2.IsStart
    if L4_2 ~= false then
      goto lbl_44
    end
    L4_2 = L3_2.IsTakenAndNotstarted
    if L4_2 ~= false then
      goto lbl_44
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2._try_show_go_take_mission_hint
  L4_2(L5_2)
  do return end
  ::lbl_44::
  L5_2 = A0_2
  L4_2 = A0_2._try_show_world_level_up_hint
  L4_2(L5_2)
end
L0_1._try_show_pre_request_mission_hint = L5_1
return L0_1
