local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicSuitContainerPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = 1
  L4_2 = A0_2._binder
  L4_2 = L4_2.relic_panel_map
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.relic_panel_map
    L7_2 = L7_2[L6_2]
    L9_2 = L7_2
    L8_2 = L7_2.register_click_callback
    L10_2 = A1_2
    L11_2 = A2_2
    L8_2(L9_2, L10_2, L11_2)
  end
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._data
  L1_2 = L1_2.Row
  L1_2 = L1_2.IsPlanarSuit
  if L1_2 then
    L1_2 = 5
    if L1_2 then
      goto lbl_10
    end
  end
  L1_2 = 1
  ::lbl_10::
  L2_2 = A0_2._data
  L2_2 = L2_2.Row
  L2_2 = L2_2.IsPlanarSuit
  if L2_2 then
    L2_2 = 6
    if L2_2 then
      goto lbl_19
    end
  end
  L2_2 = 4
  ::lbl_19::
  L3_2 = L1_2
  L4_2 = L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.relic_panel_map
    L7_2 = L7_2[L6_2]
    L9_2 = L7_2
    L8_2 = L7_2.is_lock
    L8_2 = L8_2(L9_2)
    if not L8_2 then
      L9_2 = L7_2
      L8_2 = L7_2.trigger_click
      L8_2(L9_2)
      A0_2._cur_panel = L7_2
      return
    end
  end
end
L0_1.trigger_default_select = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2._data
  L2_2 = L2_2.Row
  L2_2 = L2_2.IsPlanarSuit
  if L2_2 then
    L2_2 = 5
    if L2_2 then
      goto lbl_10
    end
  end
  L2_2 = 1
  ::lbl_10::
  L3_2 = A0_2._data
  L3_2 = L3_2.Row
  L3_2 = L3_2.IsPlanarSuit
  if L3_2 then
    L3_2 = 6
    if L3_2 then
      goto lbl_19
    end
  end
  L3_2 = 4
  ::lbl_19::
  L4_2 = L2_2
  L5_2 = L3_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._binder
    L8_2 = L8_2.relic_panel_map
    L8_2 = L8_2[L7_2]
    L10_2 = L8_2
    L9_2 = L8_2.set_selected
    L11_2 = L8_2 == A1_2
    L9_2(L10_2, L11_2)
  end
  A0_2._cur_panel = A1_2
end
L0_1.set_selected_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_node
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_navigation
  L1_2(L2_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_normal_suit
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.Row
  L3_2 = L3_2.IsPlanarSuit
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_planar_suit
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.Row
  L3_2 = L3_2.IsPlanarSuit
  L1_2(L2_2, L3_2)
end
L0_1._refresh_node = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2._data
  L1_2 = L1_2.Row
  L1_2 = L1_2.IsPlanarSuit
  if L1_2 then
    L1_2 = 5
    if L1_2 then
      goto lbl_10
    end
  end
  L1_2 = 1
  ::lbl_10::
  L2_2 = A0_2._data
  L2_2 = L2_2.Row
  L2_2 = L2_2.IsPlanarSuit
  if L2_2 then
    L2_2 = 6
    if L2_2 then
      goto lbl_19
    end
  end
  L2_2 = 4
  ::lbl_19::
  L3_2 = L1_2
  L4_2 = L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.relic_panel_map
    L7_2 = L7_2[L6_2]
    L8_2 = G
    L8_2 = L8_2.Utils
    L8_2 = L8_2.enum_from_int_str
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.RelicType
    L10_2 = L6_2
    L8_2 = L8_2(L9_2, L10_2)
    L10_2 = L7_2
    L9_2 = L7_2.setup_view
    L11_2 = A0_2._data
    L11_2 = L11_2.Row
    L11_2 = L11_2.SetID
    L12_2 = L8_2
    L9_2(L10_2, L11_2, L12_2)
    L10_2 = L7_2
    L9_2 = L7_2.set_lock_state
    L11_2 = A0_2._data
    L12_2 = L11_2
    L11_2 = L11_2.IsTypeUnlock
    L13_2 = L8_2
    L11_2 = L11_2(L12_2, L13_2)
    L11_2 = not L11_2
    L9_2(L10_2, L11_2)
    L10_2 = L7_2
    L9_2 = L7_2.bind_red_dot
    L11_2 = A0_2._data
    L12_2 = L11_2
    L11_2 = L11_2.GetRedDotKeyByRelicType
    L13_2 = L6_2
    L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
    L9_2(L10_2, L11_2, L12_2, L13_2)
  end
end
L0_1._refresh_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._data
  L1_2 = L1_2.Row
  L1_2 = L1_2.IsPlanarSuit
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_navigation
    L3_2 = A0_2._binder
    L3_2 = L3_2.relic_panel_map
    L3_2 = L3_2[5]
    L4_2 = A0_2._binder
    L4_2 = L4_2.relic_panel_map
    L4_2 = L4_2[6]
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_navigation
    L3_2 = A0_2._binder
    L3_2 = L3_2.relic_panel_map
    L3_2 = L3_2[6]
    L4_2 = nil
    L5_2 = nil
    L6_2 = nil
    L7_2 = A0_2._binder
    L7_2 = L7_2.relic_panel_map
    L7_2 = L7_2[5]
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.relic_panel_map
    L1_2 = L1_2[1]
    L2_2 = A0_2._binder
    L2_2 = L2_2.relic_panel_map
    L2_2 = L2_2[2]
    L3_2 = A0_2._binder
    L3_2 = L3_2.relic_panel_map
    L3_2 = L3_2[3]
    L4_2 = A0_2._binder
    L4_2 = L4_2.relic_panel_map
    L4_2 = L4_2[4]
    L6_2 = A0_2
    L5_2 = A0_2._setup_navigation
    L7_2 = L1_2
    L8_2 = nil
    L9_2 = L2_2
    L10_2 = L4_2
    L11_2 = L3_2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L6_2 = A0_2
    L5_2 = A0_2._setup_navigation
    L7_2 = L2_2
    L8_2 = L1_2
    L9_2 = nil
    L10_2 = L4_2
    L11_2 = L3_2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L6_2 = A0_2
    L5_2 = A0_2._setup_navigation
    L7_2 = L3_2
    L8_2 = L1_2
    L9_2 = L2_2
    L10_2 = L4_2
    L11_2 = nil
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L6_2 = A0_2
    L5_2 = A0_2._setup_navigation
    L7_2 = L4_2
    L8_2 = L1_2
    L9_2 = L2_2
    L10_2 = nil
    L11_2 = L3_2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  end
end
L0_1._refresh_navigation = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2
  L7_2 = A1_2
  L6_2 = A1_2.get_btn_object
  L6_2 = L6_2(L7_2)
  L7_2 = L6_2.navigation
  L8_2 = CS
  L8_2 = L8_2.UnityEngine
  L8_2 = L8_2.UI
  L8_2 = L8_2.Navigation
  L8_2 = L8_2.Mode
  L8_2 = L8_2.Explicit
  L7_2.mode = L8_2
  if A2_2 ~= nil then
    L9_2 = A2_2
    L8_2 = A2_2.is_lock
    L8_2 = L8_2(L9_2)
    if not L8_2 then
      L9_2 = A2_2
      L8_2 = A2_2.get_btn_object
      L8_2 = L8_2(L9_2)
      if L8_2 then
        goto lbl_22
      end
    end
  end
  L8_2 = nil
  ::lbl_22::
  L7_2.selectOnUp = L8_2
  if A3_2 ~= nil then
    L9_2 = A3_2
    L8_2 = A3_2.is_lock
    L8_2 = L8_2(L9_2)
    if not L8_2 then
      L9_2 = A3_2
      L8_2 = A3_2.get_btn_object
      L8_2 = L8_2(L9_2)
      if L8_2 then
        goto lbl_34
      end
    end
  end
  L8_2 = nil
  ::lbl_34::
  L7_2.selectOnLeft = L8_2
  if A4_2 ~= nil then
    L9_2 = A4_2
    L8_2 = A4_2.is_lock
    L8_2 = L8_2(L9_2)
    if not L8_2 then
      L9_2 = A4_2
      L8_2 = A4_2.get_btn_object
      L8_2 = L8_2(L9_2)
      if L8_2 then
        goto lbl_46
      end
    end
  end
  L8_2 = nil
  ::lbl_46::
  L7_2.selectOnRight = L8_2
  if A5_2 ~= nil then
    L9_2 = A5_2
    L8_2 = A5_2.is_lock
    L8_2 = L8_2(L9_2)
    if not L8_2 then
      L9_2 = A5_2
      L8_2 = A5_2.get_btn_object
      L8_2 = L8_2(L9_2)
      if L8_2 then
        goto lbl_58
      end
    end
  end
  L8_2 = nil
  ::lbl_58::
  L7_2.selectOnDown = L8_2
  L6_2.navigation = L7_2
end
L0_1._setup_navigation = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._cur_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_first_selected_object = L1_1
return L0_1
