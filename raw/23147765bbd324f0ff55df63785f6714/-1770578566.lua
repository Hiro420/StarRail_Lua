local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Battle.Pause.BattleFeverTimeCustomPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.BattleTargetListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.BattleTargetListPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleFeverTimeCustomPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityFeverTimeModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.ScheduleModule
L3_1 = 5001001
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.BattleTargetListPanel
  L4_2 = G
  L4_2 = L4_2.BattleTargetListPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.challenge_target_panel = L1_2
  L1_2 = A0_2.challenge_target_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_challenge_target
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.ActivityFeverTime.Buff.ActivityFeverTimeInfoItem"
  L6_2 = "Ui.ActivityFeverTime.Buff.ActivityFeverTimeInfoItemBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2.panel_fever_time_info_list = L1_2
  L1_2 = A0_2.panel_fever_time_info_list
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_fever_time_info_list
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1.CurrentFeverTimeID
  A0_2._fever_time_id = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ActivityFeverTimeConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._fever_time_id
  L1_2 = L1_2(L2_2)
  A0_2._level_config_row = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_buff_list_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_challenge_target_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_fever_time_info_list_view
  L1_2(L2_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._check_is_in_schedule
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2.challenge_target_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_targets
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2.challenge_target_panel
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_challenge_target_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_buff1_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_buff2_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_buff3_view
  L1_2(L2_2)
end
L0_1._setup_buff_list_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetP1BuffID
  L3_2 = A0_2._fever_time_id
  L1_2 = L1_2(L2_2, L3_2)
  if 0 < L1_2 then
    L2_2 = G
    L2_2 = L2_2.BuffUtils
    L2_2 = L2_2.GetMazeBuffData
    L3_2 = L1_2
    L4_2 = 1
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_buff1_name
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L2_2.BuffName
    L3_2(L4_2, L5_2)
    if L2_2 then
      L4_2 = A0_2
      L3_2 = A0_2._async_load_sprite_to
      L5_2 = A0_2._binder
      L5_2 = L5_2.image_buff1_icon
      L6_2 = L2_2.BuffIcon
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.text_buff1_desc
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = L2_2.BuffDesc
      L6_2 = G
      L6_2 = L6_2.UITextUtils
      L6_2 = L6_2.GetSkillParams
      L7_2 = L2_2.ParamList
      L6_2, L7_2 = L6_2(L7_2)
      L3_2(L4_2, L5_2, L6_2, L7_2)
    end
  end
  L2_2 = L1_1.FeverTimeBattlePeriodType
  L2_2 = #L2_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.FeverTimePeriodType
  L3_2 = L3_2.P0
  L3_2 = #L3_2
  if L2_2 > L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.image_buff1_progress_bar
    L2_2.fillAmount = 1
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_buff1_status
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_FeverTime_Buff_Effective_Tip"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.image_buff1_progress_bar
    L2_2.fillAmount = 0
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_buff1_status
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_FeverTime_Buff_Ineffective_Tip"
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_buff1_status
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L0_1._setup_buff1_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetP2BuffID
  L3_2 = A0_2._fever_time_id
  L1_2 = L1_2(L2_2, L3_2)
  if 0 < L1_2 then
    L2_2 = G
    L2_2 = L2_2.BuffUtils
    L2_2 = L2_2.GetMazeBuffData
    L3_2 = L1_2
    L4_2 = 1
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_buff2_name
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L2_2.BuffName
    L3_2(L4_2, L5_2)
    if L2_2 then
      L4_2 = A0_2
      L3_2 = A0_2._async_load_sprite_to
      L5_2 = A0_2._binder
      L5_2 = L5_2.image_buff2_icon
      L6_2 = L2_2.BuffIcon
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.text_buff2_desc
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = L2_2.BuffDesc
      L6_2 = G
      L6_2 = L6_2.UITextUtils
      L6_2 = L6_2.GetSkillParams
      L7_2 = L2_2.ParamList
      L6_2, L7_2 = L6_2(L7_2)
      L3_2(L4_2, L5_2, L6_2, L7_2)
    end
  end
  L2_2 = L1_1.FeverTimeBattlePeriodType
  L2_2 = #L2_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.FeverTimePeriodType
  L3_2 = L3_2.P1
  L3_2 = #L3_2
  if L2_2 > L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.image_buff2_progress_bar
    L2_2.fillAmount = 1
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_buff2_status
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_FeverTime_Buff_Effective_Tip"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.image_buff2_progress_bar
    L2_2.fillAmount = 0
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_buff2_status
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_FeverTime_Buff_Ineffective_Tip"
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_buff2_status
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L0_1._setup_buff2_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.BuffUtils
  L1_2 = L1_2.GetMazeBuffData
  L2_2 = A0_2._level_config_row
  L2_2 = L2_2.P3MazeBuffID
  L2_2 = L2_2[0]
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_buff3_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.BuffName
  L2_2(L3_2, L4_2)
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.image_buff3_icon
    L5_2 = L1_2.BuffIcon
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_buff3_desc
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_2.BuffDesc
    L5_2 = G
    L5_2 = L5_2.UITextUtils
    L5_2 = L5_2.GetSkillParams
    L6_2 = L1_2.ParamList
    L5_2, L6_2 = L5_2(L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  L2_2 = L1_1.FeverTimeBattlePeriodType
  L2_2 = #L2_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.FeverTimePeriodType
  L3_2 = L3_2.P2
  L3_2 = #L3_2
  if L2_2 > L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.image_buff3_progress_bar
    L2_2.fillAmount = 1
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_buff3_status
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_FeverTime_Buff_Effective_Tip"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.image_buff3_progress_bar
    L2_2.fillAmount = 0
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_buff3_status
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_FeverTime_Buff_Ineffective_Tip"
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_buff3_status
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L0_1._setup_buff3_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L2_2 = A0_2._level_config_row
  L2_2 = L2_2.LevelDes1
  L3_2 = L2_2
  L2_2 = L2_2.IsEmpty
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = {}
    L3_2 = A0_2._level_config_row
    L3_2 = L3_2.LevelDes1
    L2_2.text_id = L3_2
    L3_2 = A0_2._level_config_row
    L3_2 = L3_2.ExtraEffectID
    L2_2.extra_effect_id = L3_2
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L1_2
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L2_2 = A0_2._level_config_row
  L2_2 = L2_2.LevelDes2
  L3_2 = L2_2
  L2_2 = L2_2.IsEmpty
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = {}
    L3_2 = A0_2._level_config_row
    L3_2 = L3_2.LevelDes2
    L2_2.text_id = L3_2
    L3_2 = A0_2._level_config_row
    L3_2 = L3_2.ExtraEffectID
    L2_2.extra_effect_id = L3_2
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L1_2
    L5_2 = A0_2._level_config_row
    L5_2 = L5_2.LevelDes2
    L3_2(L4_2, L5_2)
  end
  L2_2 = A0_2.panel_fever_time_info_list
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_fever_time_info_list_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.GetScheduleDataByActivityModuleID
  L3_2 = L3_1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.IsInSchedule
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = true
      return L2_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._check_is_in_schedule = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L4_1
return L0_1
