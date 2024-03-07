local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Achievement.AchievementTypePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AchievementTypePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AchievementModule
function L2_1(A0_2)
  local L1_2
  A0_2._select_trigger = nil
  A0_2._select_trigger_listener = nil
  A0_2._click_callback = nil
  A0_2._callback_owner = nil
  A0_2._quest_exit_owner = nil
  A0_2._quest_exit_callback = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIRefreshAchievementInfo
  L4_2 = A0_2._refresh_achieved_info
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetSeriesAchievedNum
  L3_2 = A0_2._index
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._achieved_num = L1_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetVisibleAchievementsNumBySeries
  L3_2 = A0_2._index
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._total_num = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.progress_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._achieved_num
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.total_achievement_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._total_num
  L1_2(L2_2, L3_2)
end
L0_1._refresh_achieved_info = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  A0_2._row = A3_2
  A0_2._index = A1_2
  L5_2 = A2_2 + 1
  A0_2._sorted_index = L5_2
  A0_2._item_index = A4_2
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.GetSeriesAchievedNum
  L7_2 = A0_2._index
  L5_2 = L5_2(L6_2, L7_2)
  A0_2._achieved_num = L5_2
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.GetVisibleAchievementsNumBySeries
  L7_2 = A0_2._index
  L5_2 = L5_2(L6_2, L7_2)
  A0_2._total_num = L5_2
  L6_2 = A0_2
  L5_2 = A0_2._update_text
  L5_2(L6_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.AchievementSeriesExcelTable
  L5_2 = L5_2.GetData
  L6_2 = A0_2._index
  L5_2 = L5_2(L6_2)
  L7_2 = A0_2
  L6_2 = A0_2._async_load_sprite_to
  L8_2 = A0_2._binder
  L8_2 = L8_2.icon
  L9_2 = L5_2.MainIconPath
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = A0_2
  L6_2 = A0_2._bind_btn_callback
  L8_2 = A0_2._binder
  L8_2 = L8_2.btn_root
  L9_2 = A0_2._on_btn_click
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_root
  function L7_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_select_trigger
    L0_3(L1_3)
  end
  L6_2.onSelectTrigger = L7_2
  L6_2 = A0_2._index
  if L6_2 ~= nil then
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.bind_reddot
    L8_2 = "AchievementSeries"
    L9_2 = A0_2._index
    L10_2 = A0_2
    L11_2 = A0_2._binder
    L11_2 = L11_2.reddot
    L11_2 = L11_2.transform
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  end
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.series_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._row
  L3_2 = L3_2.SeriesTitle
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.progress_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._achieved_num
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.total_achievement_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._total_num
  L1_2(L2_2, L3_2)
end
L0_1._update_text = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._quest_exit_owner = A1_2
  A0_2._quest_exit_callback = A2_2
end
L0_1.register_exit_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._select_trigger = A1_2
  A0_2._select_trigger_listener = A2_2
end
L0_1.register_select_trigger = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._select_trigger
  if L1_2 ~= nil then
    L1_2 = A0_2._select_trigger
    L2_2 = A0_2._select_trigger_listener
    L3_2 = A0_2._item_index
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_select_trigger = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Achievement.AchievementQuestPage"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_view
  L4_2 = A0_2._sorted_index
  L5_2 = A0_2._quest_exit_owner
  L6_2 = A0_2._quest_exit_callback
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2.save_navigation_target
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_root
  L4_2 = L4_2.gameObject
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_red_dot_child
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = true
    return L2_2
  end
end
L0_1._is_red_dot_in_vision = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reddot
  L1_2 = L1_2.childCount
  if L1_2 == 0 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.reddot
  L2_2 = L1_2
  L1_2 = L1_2.GetChild
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2.childCount
  if L2_2 == 0 then
    L2_2 = nil
    return L2_2
  end
  L3_2 = L1_2
  L2_2 = L1_2.GetChild
  L4_2 = 0
  return L2_2(L3_2, L4_2)
end
L0_1._get_red_dot_child = L2_1
return L0_1
