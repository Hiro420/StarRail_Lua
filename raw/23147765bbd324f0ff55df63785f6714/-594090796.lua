local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Avatar.BaseTeamInfoProvider"
L0_1(L1_1)
L0_1 = 4
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.CoroutineUtils
L1_1 = L1_1.InvokeNextFrame
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "EvolveBuildAvatarSelectHelper"
L2_1 = L2_1(L3_1)
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2
  A0_2._page = A1_2
  A0_2.trial_avatars = A4_2
  A0_2.avatar_select_panel = A2_2
  A0_2.team_members = A3_2
  L6_2 = G
  L6_2 = L6_2.new
  L7_2 = G
  L7_2 = L7_2.BaseTeamAvatarInfoProvider
  L6_2 = L6_2(L7_2)
  A0_2.selected_avatars = L6_2
  L6_2 = A0_2.selected_avatars
  function L7_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = 1
    L3_3 = L0_1
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = A1_3[L5_3]
      A0_3[L5_3] = L6_3
    end
  end
  L6_2.copy_from = L7_2
  L6_2 = A0_2.selected_avatars
  L7_2 = L6_2
  L6_2 = L6_2.copy_from
  L8_2 = A5_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2.selected_avatars
  function L7_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = 1
    L3_3 = L0_1
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = A0_3[L5_3]
      if L6_3 == A1_3 then
        L6_3 = true
        return L6_3
      end
    end
    L2_3 = false
    return L2_3
  end
  L6_2.contains = L7_2
  L6_2 = A0_2.selected_avatars
  function L7_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = 1
    L3_3 = L0_1
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = A0_3[L5_3]
      if L6_3 == A1_3 then
        return L5_3
      end
    end
    L2_3 = 0
    return L2_3
  end
  L6_2.index = L7_2
  L6_2 = A0_2.selected_avatars
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = {}
    L2_3 = 1
    L3_3 = L0_1
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = A0_3[L5_3]
      if L6_3 then
        L6_3 = table
        L6_3 = L6_3.insert
        L7_3 = L1_3
        L8_3 = A0_3[L5_3]
        L6_3(L7_3, L8_3)
      end
    end
    return L1_3
  end
  L6_2.to_raw_table = L7_2
  L6_2 = A0_2.selected_avatars
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = 1
    L2_3 = L0_1
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = A0_3[L4_3]
      if L5_3 then
        L5_3 = false
        return L5_3
      end
    end
    L1_3 = true
    return L1_3
  end
  L6_2.is_empty = L7_2
  L6_2 = A0_2.selected_avatars
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = 1
    L2_3 = L0_1
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = A0_3[L4_3]
      if L5_3 then
        L5_3 = A0_3[L4_3]
        return L5_3
      end
    end
    L1_3 = nil
    return L1_3
  end
  L6_2.first_avatar = L7_2
  L6_2 = A0_2.selected_avatars
  L7_2 = A0_2.selected_avatars
  L7_2 = L7_2.to_raw_table
  L6_2.get_avatars_in_team = L7_2
  L6_2 = A0_2.selected_avatars
  L7_2 = A0_2.selected_avatars
  L7_2 = L7_2.contains
  L6_2.is_avatar_in_team = L7_2
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.avatar_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_selection_callback
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_2.selected_avatars
    L2_3 = L1_3
    L1_3 = L1_3.copy_from
    L3_3 = A0_2.avatar_select_panel
    L4_3 = L3_3
    L3_3 = L3_3.get_selected_avatars
    L3_3, L4_3 = L3_3(L4_3)
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3.refresh
    L1_3(L2_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.avatar_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = {}
  L4_2 = A0_2.trial_avatars
  L5_2 = G
  L5_2 = L5_2.AvatarUtils
  L5_2 = L5_2.get_all_avatars
  L5_2, L6_2 = L5_2()
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L4_2 = {}
  L5_2 = "UIText_ActivityTelevision_BattleEntrance_Role_Title1"
  L6_2 = "UIText_ActivityTelevision_BattleEntrance_Role_Title2"
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L5_2 = A0_2.selected_avatars
  L6_2 = L5_2
  L5_2 = L5_2.to_raw_table
  L5_2, L6_2 = L5_2(L6_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2.avatar_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_show_damage_type
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.avatar_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.overrider_get_top_avatars
  L3_2 = A0_2._get_top_avatars
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2.avatar_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.refresh
  L1_2(L2_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = ipairs
  L2_2 = A0_2.team_members
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.set_empty_interactable
    L8_2 = true
    L6_2(L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.setup_view_avatar_data
    L8_2 = A0_2.selected_avatars
    L8_2 = L8_2[L4_2]
    L9_2 = A0_2.on_click_team_member
    L10_2 = A0_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
end
L2_1.refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._page
  L2_2 = L1_2
  L1_2 = L1_2.set_navigation_target
  L3_2 = A0_2.avatar_select_panel
  L4_2 = L3_2
  L3_2 = L3_2.get_first_selected_object
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L2_1.focus_first_avatar = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2.selected_avatars
  L2_2 = L1_2
  L1_2 = L1_2.to_raw_table
  L1_2 = L1_2(L2_2)
  L2_2 = ipairs
  L3_2 = A0_2.trial_avatars
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  return L1_2
end
L2_1._get_top_avatars = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._page
  L2_2 = L2_2.open_avatar_select_panel
  if L2_2 then
    L2_2 = A0_2._page
    L2_2 = L2_2.is_avatar_select_panel_open
    if not L2_2 then
      L2_2 = A0_2._page
      L3_2 = L2_2
      L2_2 = L2_2.open_avatar_select_panel
      L2_2(L3_2)
      L2_2 = A0_2.avatar_select_panel
      L3_2 = L2_2
      L2_2 = L2_2.setup_view
      L2_2(L3_2)
      L3_2 = A0_2
      L2_2 = A0_2.focus_first_avatar
      L2_2(L3_2)
      return
    end
  end
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2.selected_avatars
  L3_2 = L2_2
  L2_2 = L2_2.index
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2.avatar_select_panel
  L4_2 = L3_2
  L3_2 = L3_2._try_unselect_avatar
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.selected_avatars
  L3_2[L2_2] = nil
  L4_2 = A0_2
  L3_2 = A0_2.refresh
  L3_2(L4_2)
end
L2_1.on_click_team_member = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = G
  L1_2 = L1_2.AvatarUtils
  L1_2 = L1_2.get_all_avatars
  L1_2 = L1_2()
  L2_2 = A0_2.selected_avatars
  L3_2 = L2_2
  L2_2 = L2_2.to_raw_table
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.selected_avatars
  L4_2 = L3_2
  L3_2 = L3_2.first_avatar
  L3_2 = L3_2(L4_2)
  L4_2 = ipairs
  L5_2 = A0_2.trial_avatars
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L1_2
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L2_2
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  L4_2 = G
  L4_2 = L4_2.AvatarUtils
  L4_2 = L4_2.sort_avatars
  L5_2 = L1_2
  L6_2 = AvatarSortType
  L6_2 = L6_2.Level
  L7_2 = false
  L8_2 = L2_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = G
  L4_2 = L4_2.UIManager
  L4_2 = L4_2.load_and_show
  L5_2 = G
  L5_2 = L5_2.AvatarMainPage
  L6_2 = nil
  L7_2 = nil
  L8_2 = A0_2.selected_avatars
  L9_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_avatar_data_list
  L7_2 = L1_2
  L5_2(L6_2, L7_2)
end
L2_1.open_avatar_main_page = L3_1
