local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicRecommendSuitInfoRowPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_filter
  L4_2 = A0_2._on_btn_filter
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._filter_callback = nil
  A0_2._filter_callback_self = nil
  A0_2._relic_recommend_suit_data = nil
  A0_2._pre_panel = nil
  A0_2._next_panel = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._relic_recommend_suit_data = A1_2
  L3_2 = A1_2.SetID2
  L3_2 = L3_2 ~= 0
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_item_1
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = A1_2.SetID1
  L7_2 = A2_2
  L8_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_item_2
  L5_2 = L4_2
  L4_2 = L4_2.safe_set_active
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  if L3_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_item_2
    L5_2 = L4_2
    L4_2 = L4_2.setup_view
    L6_2 = A1_2.SetID2
    L7_2 = A2_2
    L8_2 = L3_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  L4_2 = A1_2.Percent
  L4_2 = L4_2 / 10
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_percent
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = "UIText_AvatarRelic_Recommend_PercentageValue"
  L8_2 = string
  L8_2 = L8_2.format
  L9_2 = "%.1f"
  L10_2 = L4_2
  L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = A0_2
  L5_2 = A0_2._refresh_filter_btn_state
  L5_2(L6_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  A0_2._is_filter_on = false
  L2_2 = A0_2
  L1_2 = A0_2._refresh_filter_btn_state
  L1_2(L2_2)
end
L0_1.reset_filter_btn_state = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._filter_callback = A1_2
  A0_2._filter_callback_self = A2_2
end
L0_1.register_filter_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_filter_on
  L1_2 = not L1_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._filter_callback
  L4_2 = A0_2._filter_callback_self
  if L1_2 then
    L5_2 = A0_2._relic_recommend_suit_data
    if L5_2 then
      goto lbl_14
    end
  end
  L5_2 = nil
  ::lbl_14::
  L2_2(L3_2, L4_2, L5_2)
  A0_2._is_filter_on = L1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_filter_btn_state
  L2_2(L3_2)
end
L0_1._on_btn_filter = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_filter_on
  return L1_2
end
L0_1.is_filter_on = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_filter
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = A0_2._is_filter_on
  L1_2(L2_2, L3_2)
end
L0_1._refresh_filter_btn_state = L1_1
function L1_1(A0_2, A1_2)
  A0_2._pre_panel = A1_2
end
L0_1.set_pre_navi_panel = L1_1
function L1_1(A0_2, A1_2)
  A0_2._next_panel = A1_2
end
L0_1.set_next_navi_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_item_1
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selectable_cmpt
  return L1_2(L2_2)
end
L0_1.get_first_selectable_cmpt = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == 1 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_item_1
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selectable_cmpt
    return L2_2(L3_2)
  end
  if A1_2 == 2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_item_2
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selectable_cmpt
    return L2_2(L3_2)
  end
  if A1_2 == 3 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_filter
    return L2_2
  end
end
L0_1.get_selectable_cmpt_by_index = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_filter
  return L1_2
end
L0_1.get_last_selectable_cmpt = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_item_1
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_navi
  L1_2(L2_2)
end
L0_1.refresh_navi = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_item_1
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selectable_cmpt
  L1_2 = L1_2(L2_2)
  function L2_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L3_3 = A0_2
    L4_3 = L3_3
    L3_3 = L3_3._on_item_navi
    L5_3 = A0_3
    L6_3 = A1_3
    L7_3 = A2_3
    L8_3 = 1
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
  end
  L1_2.OnNaviHandler = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_item_2
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selectable_cmpt
  L1_2 = L1_2(L2_2)
  function L2_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L3_3 = A0_2
    L4_3 = L3_3
    L3_3 = L3_3._on_item_navi
    L5_3 = A0_3
    L6_3 = A1_3
    L7_3 = A2_3
    L8_3 = 2
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
  end
  L1_2.OnNaviHandler = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_filter
  function L2_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3
    L3_3 = A0_2
    L4_3 = L3_3
    L3_3 = L3_3._on_filter_btn_navi
    L5_3 = A0_3
    L6_3 = A1_3
    L7_3 = A2_3
    L3_3(L4_3, L5_3, L6_3, L7_3)
  end
  L1_2.OnNaviHandler = L2_2
end
L0_1._refresh_navi = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  if A3_2 then
    return
  end
  L5_2 = A0_2._binder
  if L5_2 == nil then
    return
  end
  L5_2 = A1_2.moveDir
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.EventSystems
  L6_2 = L6_2.MoveDirection
  L6_2 = L6_2.Left
  if L5_2 == L6_2 then
    L6_2 = A0_2
    L5_2 = A0_2.get_selectable_cmpt_by_index
    L7_2 = A4_2 - 1
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 ~= nil then
      L6_2 = L5_2.gameObject
      L6_2 = L6_2.activeInHierarchy
      if L6_2 then
        L7_2 = A0_2
        L6_2 = A0_2.set_special_zoom_navigation_target
        L8_2 = L5_2.gameObject
        L6_2(L7_2, L8_2)
    end
    else
      L7_2 = A0_2
      L6_2 = A0_2.set_special_zoom_navigation_target
      L9_2 = A0_2
      L8_2 = A0_2.get_first_selected_object
      L8_2, L9_2 = L8_2(L9_2)
      L6_2(L7_2, L8_2, L9_2)
    end
  end
  L5_2 = A1_2.moveDir
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.EventSystems
  L6_2 = L6_2.MoveDirection
  L6_2 = L6_2.Right
  if L5_2 == L6_2 then
    L6_2 = A0_2
    L5_2 = A0_2.get_selectable_cmpt_by_index
    L7_2 = A4_2 + 1
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 ~= nil then
      L6_2 = L5_2.gameObject
      L6_2 = L6_2.activeInHierarchy
      if L6_2 then
        L7_2 = A0_2
        L6_2 = A0_2.set_special_zoom_navigation_target
        L8_2 = L5_2.gameObject
        L6_2(L7_2, L8_2)
    end
    else
      L7_2 = A0_2
      L6_2 = A0_2.set_special_zoom_navigation_target
      L9_2 = A0_2
      L8_2 = A0_2.get_last_selectable_cmpt
      L8_2 = L8_2(L9_2)
      L8_2 = L8_2.gameObject
      L6_2(L7_2, L8_2)
    end
  end
  L5_2 = A1_2.moveDir
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.EventSystems
  L6_2 = L6_2.MoveDirection
  L6_2 = L6_2.Up
  if L5_2 == L6_2 then
    L5_2 = A0_2._pre_panel
    if L5_2 ~= nil then
      L5_2 = A0_2._pre_panel
      L6_2 = L5_2
      L5_2 = L5_2.is_active
      L5_2 = L5_2(L6_2)
      if L5_2 then
        L5_2 = A0_2._pre_panel
        L6_2 = L5_2
        L5_2 = L5_2.get_selectable_cmpt_by_index
        L7_2 = A4_2
        L5_2 = L5_2(L6_2, L7_2)
        if L5_2 ~= nil then
          L6_2 = L5_2.gameObject
          L6_2 = L6_2.activeInHierarchy
          if L6_2 then
            L7_2 = A0_2
            L6_2 = A0_2.set_special_zoom_navigation_target
            L8_2 = L5_2.gameObject
            L6_2(L7_2, L8_2)
        end
        else
          L7_2 = A0_2
          L6_2 = A0_2.set_special_zoom_navigation_target
          L8_2 = A0_2._pre_panel
          L9_2 = L8_2
          L8_2 = L8_2.get_first_selected_object
          L8_2, L9_2 = L8_2(L9_2)
          L6_2(L7_2, L8_2, L9_2)
        end
        return
      end
    end
  end
  L5_2 = A1_2.moveDir
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.EventSystems
  L6_2 = L6_2.MoveDirection
  L6_2 = L6_2.Down
  if L5_2 == L6_2 then
    L5_2 = A0_2._next_panel
    if L5_2 ~= nil then
      L5_2 = A0_2._next_panel
      L6_2 = L5_2
      L5_2 = L5_2.is_active
      L5_2 = L5_2(L6_2)
      if L5_2 then
        L5_2 = A0_2._next_panel
        L6_2 = L5_2
        L5_2 = L5_2.get_selectable_cmpt_by_index
        L7_2 = A4_2
        L5_2 = L5_2(L6_2, L7_2)
        if L5_2 ~= nil then
          L6_2 = L5_2.gameObject
          L6_2 = L6_2.activeInHierarchy
          if L6_2 then
            L7_2 = A0_2
            L6_2 = A0_2.set_special_zoom_navigation_target
            L8_2 = L5_2.gameObject
            L6_2(L7_2, L8_2)
        end
        else
          L7_2 = A0_2
          L6_2 = A0_2.set_special_zoom_navigation_target
          L8_2 = A0_2._next_panel
          L9_2 = L8_2
          L8_2 = L8_2.get_first_selected_object
          L8_2, L9_2 = L8_2(L9_2)
          L6_2(L7_2, L8_2, L9_2)
        end
        return
      end
    end
  end
end
L0_1._on_item_navi = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  if A3_2 then
    return
  end
  L4_2 = A0_2._binder
  if L4_2 == nil then
    return
  end
  L4_2 = A1_2.moveDir
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.EventSystems
  L5_2 = L5_2.MoveDirection
  L5_2 = L5_2.Left
  if L4_2 == L5_2 then
    L5_2 = A0_2
    L4_2 = A0_2.get_selectable_cmpt_by_index
    L6_2 = 2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 ~= nil then
      L5_2 = L4_2.gameObject
      L5_2 = L5_2.activeInHierarchy
      if L5_2 then
        L6_2 = A0_2
        L5_2 = A0_2.set_special_zoom_navigation_target
        L7_2 = L4_2.gameObject
        L5_2(L6_2, L7_2)
    end
    else
      L6_2 = A0_2
      L5_2 = A0_2.set_special_zoom_navigation_target
      L8_2 = A0_2
      L7_2 = A0_2.get_first_selected_object
      L7_2, L8_2 = L7_2(L8_2)
      L5_2(L6_2, L7_2, L8_2)
    end
  end
  L4_2 = A1_2.moveDir
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.EventSystems
  L5_2 = L5_2.MoveDirection
  L5_2 = L5_2.Up
  if L4_2 == L5_2 then
    L4_2 = A0_2._pre_panel
    if L4_2 ~= nil then
      L4_2 = A0_2._pre_panel
      L5_2 = L4_2
      L4_2 = L4_2.is_active
      L4_2 = L4_2(L5_2)
      if L4_2 then
        L4_2 = A0_2._pre_panel
        L5_2 = L4_2
        L4_2 = L4_2.get_last_selectable_cmpt
        L4_2 = L4_2(L5_2)
        if L4_2 ~= nil then
          L5_2 = L4_2.gameObject
          L5_2 = L5_2.activeInHierarchy
          if L5_2 then
            L6_2 = A0_2
            L5_2 = A0_2.set_special_zoom_navigation_target
            L7_2 = L4_2.gameObject
            L5_2(L6_2, L7_2)
          end
        end
        return
      end
    end
  end
  L4_2 = A1_2.moveDir
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.EventSystems
  L5_2 = L5_2.MoveDirection
  L5_2 = L5_2.Down
  if L4_2 == L5_2 then
    L4_2 = A0_2._next_panel
    if L4_2 ~= nil then
      L4_2 = A0_2._next_panel
      L5_2 = L4_2
      L4_2 = L4_2.is_active
      L4_2 = L4_2(L5_2)
      if L4_2 then
        L4_2 = A0_2._next_panel
        L5_2 = L4_2
        L4_2 = L4_2.get_last_selectable_cmpt
        L4_2 = L4_2(L5_2)
        if L4_2 ~= nil then
          L5_2 = L4_2.gameObject
          L5_2 = L5_2.activeInHierarchy
          if L5_2 then
            L6_2 = A0_2
            L5_2 = A0_2.set_special_zoom_navigation_target
            L7_2 = L4_2.gameObject
            L5_2(L6_2, L7_2)
          end
        end
        return
      end
    end
  end
end
L0_1._on_filter_btn_navi = L1_1
return L0_1
