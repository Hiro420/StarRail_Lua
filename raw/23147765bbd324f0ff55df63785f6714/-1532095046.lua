local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Team.MemberListDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.AvatarItemIconLitePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.AvatarItemIconLitePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.EmptyAvatarTeamInfoProvide"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarMainPage"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MemberListDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MemberListDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._all_members = A1_2
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = A0_2._all_members
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = A0_3.IsAlive
    L3_3 = A1_3.IsAlive
    if L2_3 ~= L3_3 then
      L2_3 = A0_3.IsAlive
      return L2_3
    end
    L2_3 = A0_3.AvatarData
    L2_3 = L2_3.IsTrialPlayer
    L3_3 = A1_3.AvatarData
    L3_3 = L3_3.IsTrialPlayer
    if L2_3 ~= L3_3 then
      L2_3 = A0_3.AvatarData
      L2_3 = L2_3.IsTrialPlayer
      L2_3 = not L2_3
      return L2_3
    end
    L2_3 = A0_3.AvatarData
    L2_3 = L2_3.Level
    L3_3 = A1_3.AvatarData
    L3_3 = L3_3.Level
    if L2_3 ~= L3_3 then
      L4_3 = L2_3 > L3_3
      return L4_3
    end
    L4_3 = A0_3.AvatarData
    L4_3 = L4_3.Row
    L4_3 = L4_3.Rarity
    L4_3 = #L4_3
    L5_3 = A1_3.AvatarData
    L5_3 = L5_3.Row
    L5_3 = L5_3.Rarity
    L5_3 = #L5_3
    if L4_3 ~= L5_3 then
      L6_3 = L4_3 > L5_3
      return L6_3
    end
    L6_3 = A0_3.AvatarData
    L6_3 = L6_3.ID
    L7_3 = A1_3.AvatarData
    L7_3 = L7_3.ID
    L6_3 = L6_3 < L7_3
    return L6_3
  end
  L2_2(L3_2, L4_2)
  L2_2 = {}
  A0_2._all_avatars = L2_2
  L2_2 = ipairs
  L3_2 = A0_2._all_members
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._all_avatars
    L8_2 = A0_2._all_avatars
    L8_2 = #L8_2
    L8_2 = L8_2 + 1
    L9_2 = L6_2.AvatarData
    L7_2[L8_2] = L9_2
  end
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.member_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_member_item_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.member_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._on_return_to_top = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.member_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._all_members
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.member_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.AvatarItemIconLitePanel
    L8_2 = G
    L8_2 = L8_2.AvatarItemIconLitePanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
    L6_2 = L4_2
    L5_2 = L4_2.setup_auto_click
    L7_2 = false
    L5_2(L6_2, L7_2)
    L6_2 = L4_2
    L5_2 = L4_2.register_click_callback
    L7_2 = A0_2._on_click_avatar
    L8_2 = A0_2
    L9_2 = A2_2
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
  L5_2 = A0_2._all_members
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = A0_2
  L6_2 = A0_2._setup_icon_view
  L8_2 = L4_2
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
  return L3_2
end
L0_1._on_member_item_changed = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.setup_view
  L5_2 = A2_2.AvatarData
  L6_2 = false
  L7_2 = false
  L8_2 = nil
  L9_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = A1_2
  L3_2 = A1_2.set_show_hp
  L5_2 = true
  L3_2(L4_2, L5_2)
  L4_2 = A1_2
  L3_2 = A1_2.set_blood_hp
  L5_2 = A2_2.LeftHPRatio
  L6_2 = L5_2
  L5_2 = L5_2.ToFloat
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = A1_2
  L3_2 = A1_2.setup_dead_view
  L5_2 = A2_2.IsAlive
  L5_2 = not L5_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_icon_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._team_info_provide
  if L2_2 == nil then
    L2_2 = G
    L2_2 = L2_2.new
    L3_2 = G
    L3_2 = L3_2.EmptyAvatarTeamInfoProvide
    L2_2 = L2_2(L3_2)
    A0_2._team_info_provide = L2_2
  end
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = "Ui.Avatar.AvatarMainPage"
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.init
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2._team_info_provide
  L8_2 = A1_2
  L9_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TeamData
  L3_2 = L3_2.EmptyTeamData
  L2_2.team_data = L3_2
  L4_2 = L2_2
  L3_2 = L2_2.set_avatar_data_list
  L5_2 = A0_2._all_avatars
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.async_show
  L3_2(L4_2)
end
L0_1._on_click_avatar = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.member_list
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
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L1_1
return L0_1
