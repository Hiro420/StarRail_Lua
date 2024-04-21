local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Team.Widget.TeamDataInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelect.AvatarSelectTeamListTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarSelectTeamListTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.team_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_get_team_data_info
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._avatar_setup_callback = A1_2
  A0_2._avatar_setup_callback_self = A2_2
end
L0_1.register_avatar_setup_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._team_setup_callback = A1_2
  A0_2._team_setup_callback_self = A2_2
end
L0_1.register_team_setup_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.team_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_default_navigation_target
  L1_2(L2_2)
end
L0_1.refresh = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_35
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.TeamDataInfoPanel
  L8_2 = G
  L8_2 = L8_2.TeamDataInfoPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  L6_2 = L4_2
  L5_2 = L4_2.register_click_callback
  L7_2 = A0_2._callback
  L8_2 = A0_2._callback_self
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.enable_edit_team_name
  L7_2 = false
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.show_arrow
  L7_2 = true
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_panel_setup_callback
  L7_2 = A0_2._avatar_setup_callback
  L8_2 = A0_2._avatar_setup_callback_self
  L5_2(L6_2, L7_2, L8_2)
  ::lbl_35::
  L5_2 = A0_2._team_data_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = G
  L6_2 = L6_2.Utils
  L6_2 = L6_2.invoke_callback
  L7_2 = A0_2._team_setup_callback
  L8_2 = A0_2._team_setup_callback_self
  L9_2 = L5_2
  L10_2 = L4_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
  return L3_2
end
L0_1._on_get_team_data_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._team_data_list
  if L1_2 ~= nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TeamModule
  L2_2 = L1_2.MainlineTeamCount
  L3_2 = {}
  A0_2._team_data_list = L3_2
  L3_2 = 0
  L4_2 = L2_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L8_2 = L1_2
    L7_2 = L1_2.GetMainlineTeam
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L9_2 = L7_2
    L8_2 = L7_2.GetMemberCount
    L8_2 = L8_2(L9_2)
    if 0 < L8_2 then
      L8_2 = A0_2._team_data_list
      L9_2 = A0_2._team_data_list
      L9_2 = #L9_2
      L9_2 = L9_2 + 1
      L8_2[L9_2] = L7_2
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.team_list
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = A0_2._team_data_list
  L5_2 = #L5_2
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._init_team_data_list = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._init_team_data_list
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.team_list
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemIndex
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.team_list
  L2_2 = L1_2
  L1_2 = L1_2.MarkNextFrameRefresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_navigation_target
  L4_2 = A0_2
  L3_2 = A0_2.get_first_selected_object
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_select = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.team_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    return L2_2(L3_2)
  end
end
L0_1.get_first_selected_object = L1_1
return L0_1
