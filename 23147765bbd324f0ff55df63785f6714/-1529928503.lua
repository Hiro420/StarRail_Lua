local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Avatar.Panels.RogueAvatarIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Avatar.Panels.RogueAvatarIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueAvatarScrollListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.TeamModule
function L2_1(A0_2, A1_2, A2_2)
  A0_2._panels_avatar_select = nil
  A0_2._node_line = nil
  A0_2._team_avatar_data_table = nil
  A0_2._team_avatar_order_table = nil
  A0_2._team_avatar_click_call = nil
  A0_2._team_avatar_click_lister = nil
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_team_avatar_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_team_avatar_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._panels_avatar_select = nil
  A0_2._node_line = nil
  A0_2._panels_avatar_team = nil
  A0_2._team_avatar_data_table = nil
  A0_2._team_avatar_order_table = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panels_avatar_select
  if L1_2 then
    L1_2 = A0_2._panels_avatar_select
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = A0_2._panels_avatar_select
      L1_2 = L1_2[1]
      L2_2 = L1_2
      L1_2 = L1_2.get_first_selected_object
      return L1_2(L2_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_team_avatar_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._selected_avatar_btns
  return L1_2
end
L0_1.get_selected_avatar_navi_btns = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_team_avatar_list
    if L1_2 ~= nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.scroll_team_avatar_list
      L2_2 = L1_2
      L1_2 = L1_2.GetShownItemNearestItemIndex
      L3_2 = 0
      L1_2 = L1_2(L2_2, L3_2)
      if L1_2 ~= nil then
        L2_2 = L1_2.UserObjectData
        L3_2 = L2_2
        L2_2 = L2_2.get_first_selected_object
        return L2_2(L3_2)
      end
    end
  end
end
L0_1._get_team_avatar_first_selected_object = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L5_2 = A0_2._panels_avatar_select
  if L5_2 == nil then
    L5_2 = {}
    A0_2._panels_avatar_select = L5_2
  end
  L5_2 = {}
  A0_2._selected_avatar_btns = L5_2
  L5_2 = 1
  L6_2 = A1_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L10_2 = A0_2
    L9_2 = A0_2._get_or_create_select_avatar_panel
    L11_2 = A0_2._panels_avatar_select
    L12_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L10_2 = nil
    if A2_2 ~= nil then
      L11_2 = A2_2[L8_2]
      if L11_2 then
        L10_2 = A2_2[L8_2]
      end
    end
    L12_2 = L9_2
    L11_2 = L9_2.setup_view_avatar_data
    L13_2 = L10_2
    L14_2 = A3_2
    L15_2 = A4_2
    L11_2(L12_2, L13_2, L14_2, L15_2)
    L12_2 = L9_2
    L11_2 = L9_2.clear_btn_navi
    L11_2(L12_2)
    L12_2 = L9_2
    L11_2 = L9_2.set_need_navigation_to_next
    L11_2(L12_2)
    L12_2 = L9_2
    L11_2 = L9_2.get_navi_btn
    L11_2 = L11_2(L12_2)
    if L11_2 ~= nil and L10_2 ~= nil then
      L12_2 = table
      L12_2 = L12_2.insert
      L13_2 = A0_2._selected_avatar_btns
      L14_2 = A0_2._selected_avatar_btns
      L14_2 = #L14_2
      L14_2 = L14_2 + 1
      L15_2 = L11_2
      L12_2(L13_2, L14_2, L15_2)
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.setup_navigation
  L7_2 = A0_2._selected_avatar_btns
  L8_2 = NavigationType
  L8_2 = L8_2.Horizontal
  L9_2 = true
  L10_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_select_avatar
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.LayoutRebuilder
  L5_2 = L5_2.ForceRebuildLayoutImmediate
  L6_2 = A0_2._binder
  L6_2 = L6_2.root
  L5_2(L6_2)
end
L0_1.setup_select_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A1_2[A2_2]
  if L3_2 == nil then
    L5_2 = A0_2
    L4_2 = A0_2.instantiate_object
    L6_2 = A0_2._binder
    L6_2 = L6_2.loader_select_avatar
    L6_2 = L6_2.MultiPrefabList
    L6_2 = L6_2[0]
    L7_2 = A0_2._binder
    L7_2 = L7_2.loader_select_avatar
    L7_2 = L7_2.transform
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RogueAvatarIconPanel
    L8_2 = G
    L8_2 = L8_2.RogueAvatarIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L3_2 = L5_2
    L6_2 = L3_2
    L5_2 = L3_2.bind
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = A1_2
    L7_2 = A2_2
    L8_2 = L3_2
    L5_2(L6_2, L7_2, L8_2)
  end
  return L3_2
end
L0_1._get_or_create_select_avatar_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._panels_avatar_select
  L1_2 = L1_2 ~= nil
  L2_2 = A0_2._node_line
  if L2_2 == nil and L1_2 == true then
    L3_2 = A0_2
    L2_2 = A0_2.instantiate_object
    L4_2 = A0_2._binder
    L4_2 = L4_2.loader_select_avatar
    L4_2 = L4_2.MultiPrefabList
    L4_2 = L4_2[1]
    L5_2 = A0_2._binder
    L5_2 = L5_2.loader_select_avatar
    L5_2 = L5_2.transform
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._node_line = L2_2
  else
    L2_2 = A0_2._node_line
    if L2_2 ~= nil then
      L2_2 = A0_2._node_line
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._setup_node_line = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  L6_2 = A0_2
  L5_2 = A0_2._setup_node_line
  L5_2(L6_2)
  A0_2._team_avatar_data_table = A1_2
  L6_2 = A0_2
  L5_2 = A0_2._sort_team_avatar_data
  L7_2 = A2_2
  L5_2(L6_2, L7_2)
  A0_2._team_avatar_click_call = A3_2
  A0_2._team_avatar_click_lister = A4_2
  L5_2 = A0_2._team_avatar_data_table
  L5_2 = #L5_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.scroll_team_avatar_list
  L7_2 = L6_2
  L6_2 = L6_2.SetListItemCount
  L8_2 = L5_2
  L9_2 = true
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.scroll_team_avatar_list
  L7_2 = L6_2
  L6_2 = L6_2.RefreshAllShownItem
  L6_2(L7_2)
end
L0_1.setup_team_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_21
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.RogueAvatarIconPanel
  L8_2 = G
  L8_2 = L8_2.RogueAvatarIconPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_21::
  L5_2 = A0_2._team_avatar_data_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = A0_2
  L6_2 = A0_2._get_avatar_team_slot
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = L6_2 ~= nil
  L9_2 = L4_2
  L8_2 = L4_2.set_icon
  L10_2 = L5_2
  L8_2(L9_2, L10_2)
  L9_2 = L4_2
  L8_2 = L4_2.set_number_mark
  L10_2 = L7_2
  if L7_2 then
    L11_2 = "0"
    L12_2 = tostring
    L13_2 = A2_2 + 1
    L12_2 = L12_2(L13_2)
    L11_2 = L11_2 .. L12_2
    if L11_2 then
      goto lbl_46
    end
  end
  L11_2 = nil
  ::lbl_46::
  L8_2(L9_2, L10_2, L11_2)
  L9_2 = L4_2
  L8_2 = L4_2.set_trial_mark
  L10_2 = false
  L11_2 = L5_2
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = A0_2._team_avatar_click_call
  L8_2 = L8_2 ~= nil
  L10_2 = L4_2
  L9_2 = L4_2.set_btn_interactable
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  if L8_2 then
    L10_2 = L4_2
    L9_2 = L4_2.register_callback
    L11_2 = A0_2._team_avatar_click_call
    L12_2 = A0_2._team_avatar_click_lister
    L13_2 = L5_2
    L9_2(L10_2, L11_2, L12_2, L13_2)
  end
  return L3_2
end
L0_1._on_team_avatar_item_changed = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 ~= nil then
    L2_2 = A0_2._team_avatar_data_table
    L2_2 = #L2_2
    if L2_2 ~= 0 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L3_2 = A0_2
  L2_2 = A0_2._init_avatar_order
  L4_2 = A1_2
  L5_2 = A0_2._team_avatar_data_table
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = A0_2._team_avatar_data_table
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._get_avatar_team_order
    L4_3 = A0_3
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = A0_2
    L4_3 = L3_3
    L3_3 = L3_3._get_avatar_team_order
    L5_3 = A1_3
    L3_3 = L3_3(L4_3, L5_3)
    if L2_3 ~= nil and L3_3 ~= nil then
      L4_3 = L2_3 < L3_3
      return L4_3
    elseif L2_3 ~= nil then
      L4_3 = true
      return L4_3
    elseif L3_3 ~= nil then
      L4_3 = false
      return L4_3
    end
    L4_3 = false
    return L4_3
  end
  L2_2(L3_2, L4_2)
end
L0_1._sort_team_avatar_data = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = {}
  A0_2._team_avatar_order_table = L3_2
  L3_2 = 3
  L4_2 = ipairs
  L5_2 = A2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = A0_2._team_avatar_order_table
    L10_2 = L8_2.ID
    L11_2 = L7_2 + L3_2
    L9_2[L10_2] = L11_2
  end
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.GetExtraTeam
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = 0
  L6_2 = L3_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L10_2 = L4_2
    L9_2 = L4_2.GetMemberData
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      L10_2 = A0_2._team_avatar_order_table
      L11_2 = L9_2.AvatarID
      L10_2[L11_2] = L8_2
    end
  end
end
L0_1._init_avatar_order = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._get_avatar_team_order
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = 3
  if L2_2 ~= nil and L2_2 <= L3_2 then
    return L2_2
  end
  L4_2 = nil
  return L4_2
end
L0_1._get_avatar_team_slot = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._team_avatar_order_table
  if L2_2 ~= nil then
    L2_2 = A0_2._team_avatar_order_table
    L3_2 = A1_2.ID
    L2_2 = L2_2[L3_2]
    if L2_2 ~= nil then
      L2_2 = A0_2._team_avatar_order_table
      L3_2 = A1_2.ID
      L2_2 = L2_2[L3_2]
      return L2_2
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1._get_avatar_team_order = L2_1
return L0_1
