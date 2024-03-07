local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityQuestFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
function L1_1(A0_2)
  local L1_2
  A0_2._activity_tabs_table = nil
  A0_2._normal_reddot_tab_ids_table = nil
  A0_2._no_pass_normal_reddot_tab_ids_table = nil
  A0_2._new_reddot_tab_ids_table = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._activity_tabs_table = nil
  A0_2._normal_reddot_tab_ids_table = nil
  A0_2._no_pass_normal_reddot_tab_ids_table = nil
  A0_2._new_reddot_tab_ids_table = nil
end
L0_1.dtor = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = "ActivityQuest"
  return L1_2
end
L0_1.get_associate_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._activity_tabs_table
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_activity_tabs
    L1_2(L2_2)
  end
  L1_2 = A0_2._normal_reddot_tab_ids_table
  if L1_2 ~= nil then
    L1_2 = A0_2._new_reddot_tab_ids_table
    if L1_2 ~= nil then
      L1_2 = A0_2._no_pass_normal_reddot_tab_ids_table
      if L1_2 ~= nil then
        goto lbl_17
      end
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_reddot_tab_ids
  L1_2(L2_2)
  ::lbl_17::
  L1_2 = ipairs
  L2_2 = A0_2._normal_reddot_tab_ids_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._activity_tabs_table
    L6_2 = L6_2[L5_2]
    if L6_2 ~= nil then
      L7_2 = G
      L7_2 = L7_2.RedDotModule
      L7_2 = L7_2.Instance
      L8_2 = L7_2
      L7_2 = L7_2.update_reddot
      L9_2 = "ActivityQuestReward"
      L10_2 = L5_2
      L7_2(L8_2, L9_2, L10_2)
    end
  end
  L1_2 = ipairs
  L2_2 = A0_2._no_pass_normal_reddot_tab_ids_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._activity_tabs_table
    L6_2 = L6_2[L5_2]
    if L6_2 ~= nil then
      L7_2 = G
      L7_2 = L7_2.RedDotModule
      L7_2 = L7_2.Instance
      L8_2 = L7_2
      L7_2 = L7_2.update_reddot
      L9_2 = "ActivityQuestNoPass"
      L10_2 = L5_2
      L7_2(L8_2, L9_2, L10_2)
    end
  end
  L1_2 = ipairs
  L2_2 = A0_2._new_reddot_tab_ids_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._activity_tabs_table
    L6_2 = L6_2[L5_2]
    if L6_2 ~= nil then
      L7_2 = G
      L7_2 = L7_2.RedDotModule
      L7_2 = L7_2.Instance
      L8_2 = L7_2
      L7_2 = L7_2.update_reddot
      L9_2 = "ActivityQuestNew"
      L10_2 = L5_2
      L7_2(L8_2, L9_2, L10_2)
    end
  end
  L1_2 = A0_2._show_switch_btn_new
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "ActivityPanelBtnSwitchNew"
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._show_switch_btn_normal
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "ActivityPanelBtnSwitchNormal"
    L1_2(L2_2, L3_2)
  end
end
L0_1.refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestUpdated
  L4_2 = L0_1._refresh_reddot_tab_ids
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ActivityUpdated
  L4_2 = L0_1._refresh_reddot_tab_ids
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerDailyRefresh
  L4_2 = L0_1._on_player_daily_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ActivityForceRefreshRedDot
  L4_2 = L0_1._refresh_reddot_tab_ids
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ResidentActivityForceRefreshRedDot
  L4_2 = L0_1._refresh_reddot_tab_ids
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BoxingClubLevelRefreshed
  L4_2 = L0_1._refresh_reddot_tab_ids
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RefreshMission
  L4_2 = L0_1._refresh_reddot_tab_ids
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueEndlessLevelRewardRefresh
  L4_2 = L0_1._refresh_reddot_tab_ids
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueEndlessAreaSynced
  L4_2 = L0_1._refresh_reddot_tab_ids
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueEndlessRefreshRedDotNew
  L4_2 = L0_1._refresh_reddot_tab_ids
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.register_events = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestUpdated
  L4_2 = L0_1._refresh_reddot_tab_ids
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ActivityUpdated
  L4_2 = L0_1._refresh_reddot_tab_ids
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerDailyRefresh
  L4_2 = L0_1._on_player_daily_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ActivityForceRefreshRedDot
  L4_2 = L0_1._refresh_reddot_tab_ids
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ResidentActivityForceRefreshRedDot
  L4_2 = L0_1._refresh_reddot_tab_ids
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BoxingClubLevelRefreshed
  L4_2 = L0_1._refresh_reddot_tab_ids
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RefreshMission
  L4_2 = L0_1._refresh_reddot_tab_ids
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueEndlessLevelRewardRefresh
  L4_2 = L0_1._refresh_reddot_tab_ids
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueEndlessAreaSynced
  L4_2 = L0_1._refresh_reddot_tab_ids
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueEndlessRefreshRedDotNew
  L4_2 = L0_1._refresh_reddot_tab_ids
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.unregister_events = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._activity_tabs_table = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ActivityModule
  L2_2 = L1_2
  L1_2 = L1_2.GetActivityDatas
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = A0_2._activity_tabs_table
    L8_2 = L6_2.PanelID
    L7_2[L8_2] = L6_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.ResidentActivityModule
  L3_2 = L2_2
  L2_2 = L2_2.GetActivityDatas
  L2_2 = L2_2(L3_2)
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    L8_2 = A0_2._activity_tabs_table
    L9_2 = L7_2.PanelID
    L8_2[L9_2] = L7_2
  end
end
L0_1._refresh_activity_tabs = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._normal_reddot_tab_ids_table = L1_2
  L1_2 = {}
  A0_2._new_reddot_tab_ids_table = L1_2
  L1_2 = {}
  A0_2._no_pass_normal_reddot_tab_ids_table = L1_2
  A0_2._show_switch_btn_new = false
  A0_2._show_switch_btn_normal = false
  L1_2 = A0_2._activity_tabs_table
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_activity_tabs
    L1_2(L2_2)
  end
  L1_2 = pairs
  L2_2 = A0_2._activity_tabs_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    if L5_2 ~= nil then
      L7_2 = L5_2
      L6_2 = L5_2.IsAvailable
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L7_2 = L5_2
        L6_2 = L5_2.IsShowNormalRedDot
        L6_2 = L6_2(L7_2)
        if L6_2 then
          L6_2 = L5_2.IsResidentPanel
          if L6_2 then
            A0_2._show_switch_btn_normal = true
          end
          L6_2 = table
          L6_2 = L6_2.insert
          L7_2 = A0_2._normal_reddot_tab_ids_table
          L8_2 = A0_2._normal_reddot_tab_ids_table
          L8_2 = #L8_2
          L8_2 = L8_2 + 1
          L9_2 = L5_2.PanelID
          L6_2(L7_2, L8_2, L9_2)
        end
        L7_2 = L5_2
        L6_2 = L5_2.IsShowNewRedDot
        L6_2 = L6_2(L7_2)
        if L6_2 then
          L6_2 = L5_2.IsResidentPanel
          if L6_2 then
            A0_2._show_switch_btn_new = true
          end
          L6_2 = table
          L6_2 = L6_2.insert
          L7_2 = A0_2._new_reddot_tab_ids_table
          L8_2 = A0_2._new_reddot_tab_ids_table
          L8_2 = #L8_2
          L8_2 = L8_2 + 1
          L9_2 = L5_2.PanelID
          L6_2(L7_2, L8_2, L9_2)
        end
        L7_2 = L5_2
        L6_2 = L5_2.IsShowNoPassNormalRedDot
        L6_2 = L6_2(L7_2)
        if L6_2 then
          L6_2 = table
          L6_2 = L6_2.insert
          L7_2 = A0_2._no_pass_normal_reddot_tab_ids_table
          L8_2 = A0_2._no_pass_normal_reddot_tab_ids_table
          L8_2 = #L8_2
          L8_2 = L8_2 + 1
          L9_2 = L5_2.PanelID
          L6_2(L7_2, L8_2, L9_2)
        end
      end
    end
  end
end
L0_1._refresh_reddot_tab_ids = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_activity_tabs
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_reddot_tab_ids
  L1_2(L2_2)
end
L0_1._on_player_daily_refresh = L1_1
return L0_1
