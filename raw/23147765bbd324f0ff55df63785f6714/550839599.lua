local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildSkillItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EvolveBuildSkillItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIEvolveBuildSkillLevelUp
  L4_2 = A0_2._on_level_up
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIEvolveBuildSkillLevelDown
  L4_2 = A0_2._on_level_down
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIEvolveBuildSkillLevelReset
  L4_2 = A0_2._on_level_down
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._skill = A1_2
  A0_2._show_summary = A2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2.Name
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.icon
  L6_2 = A1_2.IconPath
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.bg
  L6_2 = A1_2.BgPath
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_summary
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_level_points
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_recommend_tip
  L1_2(L2_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._skill
  L2_2 = L1_2.Level
  A0_2._displaying_level = L2_2
  L2_2 = {}
  L3_2 = 1
  L4_2 = L1_2.MaxLevel
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L2_2
    L9_2 = {}
    L10_2 = A0_2._displaying_level
    L10_2 = L6_2 <= L10_2
    L11_2 = L1_2.RecommendLevel
    L11_2 = L6_2 <= L11_2
    L9_2[1] = L10_2
    L9_2[2] = L11_2
    L7_2(L8_2, L9_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.point_list
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._refresh_level_points = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.summary_value
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._skill
  L3_2 = L3_2.Level
  L3_2 = 0 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.summary_value
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._skill
  L3_2 = L3_2.SummaryValueFormat
  L4_2 = G
  L4_2 = L4_2.UITextUtils
  L4_2 = L4_2.GetSkillParams
  L5_2 = A0_2._skill
  L5_2 = L5_2.SummaryValueParams
  L4_2, L5_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._refresh_summary = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.recommend_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._skill
  L3_2 = L3_2.IsRecommended
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.recommend_complete_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._skill
  L3_2 = L3_2.IsLevelRecommended
  L1_2(L2_2, L3_2)
end
L0_1._refresh_recommend_tip = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._actor = A1_2
  A0_2._action = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._bind_btn_callback
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn
  L6_2 = A0_2._invoke_action
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._invoke_action
    L0_3(L1_3)
  end
  L3_2.onSelectTrigger = L4_2
end
L0_1.on_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_checked = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._action
  L2_2 = A0_2._actor
  L3_2 = A0_2._skill
  L1_2(L2_2, L3_2)
end
L0_1._invoke_action = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._displaying_level
  L2_2 = A0_2._skill
  L2_2 = L2_2.Level
  if L1_2 >= L2_2 then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh_summary
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_level_points
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_recommend_tip
  L3_2(L4_2)
  A0_2._displaying_level = L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.point_list
  L4_2 = L3_2
  L3_2 = L3_2.get_panel_by_index
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L5_2 = L3_2
    L4_2 = L3_2.play_level_up_anim
    L4_2(L5_2)
  end
end
L0_1._on_level_up = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._displaying_level
  L2_2 = A0_2._skill
  L2_2 = L2_2.Level
  if L1_2 <= L2_2 then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh_summary
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_level_points
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_recommend_tip
  L3_2(L4_2)
  A0_2._displaying_level = L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.point_list
  L4_2 = L3_2
  L3_2 = L3_2.get_panel_by_index
  L5_2 = L1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L5_2 = L3_2
    L4_2 = L3_2.play_level_down_anim
    L4_2(L5_2)
  end
end
L0_1._on_level_down = L1_1
return L0_1
