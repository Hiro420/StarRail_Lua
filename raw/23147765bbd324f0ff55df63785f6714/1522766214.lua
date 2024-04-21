local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Team.TeamLimitPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TeamLimitPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = false
  end
  A0_2._has_title = L2_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_limit_item
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_limit_item
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.switch_team
    L8_2 = A1_2
    L6_2(L7_2, L8_2)
  end
end
L0_1.switch_team = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2 ~= nil
  return L2_2
end
L0_1.should_show = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.should_show
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.safe_set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_limit = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A1_2.Count
  if L2_2 == 0 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.condition_root
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.condition_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_limit_item
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_limit_item
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.safe_set_active
    L8_2 = A1_2.Count
    L8_2 = L5_2 <= L8_2
    L6_2(L7_2, L8_2)
    L6_2 = A1_2.Count
    if L5_2 <= L6_2 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.panel_limit_item
      L6_2 = L6_2[L5_2]
      L7_2 = L6_2
      L6_2 = L6_2.setup_view_by_avatar_id
      L8_2 = L5_2 - 1
      L8_2 = A1_2[L8_2]
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1.setup_limit_by_avatars = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.condition_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._has_title
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.title_root
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
  L2_2 = 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_limit_item
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_limit_item
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.safe_set_active
    L8_2 = #A1_2
    L8_2 = L5_2 <= L8_2
    L6_2(L7_2, L8_2)
    L6_2 = #A1_2
    if L5_2 <= L6_2 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.panel_limit_item
      L6_2 = L6_2[L5_2]
      L7_2 = L6_2
      L6_2 = L6_2.setup_view
      L8_2 = A1_2[L5_2]
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_limit_item
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.panel_limit_item
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.refresh_condition_view
    L5_2(L6_2)
  end
end
L0_1.refresh = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_limit_item
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_limit_item
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.refresh_condition_view_by_avatar_list
    L8_2 = A1_2
    L6_2(L7_2, L8_2)
  end
end
L0_1.refresh_by_avatar_list = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_limit_item
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.panel_limit_item
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.is_condition_met
    L5_2 = L5_2(L6_2)
    if not L5_2 then
      L5_2 = false
      return L5_2
    end
  end
  L1_2 = true
  return L1_2
end
L0_1.is_condition_met = L1_1
return L0_1
