local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Challenge.Entrance.ChallengeAvatarSelectPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeAvatarSelectPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1[1] = "ChallengeMaze_Team1_Edit"
L1_1[2] = "ChallengeMaze_Team2_Edit"
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  A0_2._avatar_selection = A1_2
  L4_2 = G
  L4_2 = L4_2.new
  L5_2 = G
  L5_2 = L5_2.CommonMultiSelectClickAvatarStrategy
  L4_2 = L4_2(L5_2)
  A0_2._click_avatar_strategy = L4_2
  L4_2 = A0_2._click_avatar_strategy
  L5_2 = L4_2
  L4_2 = L4_2.set_init_selection
  L6_2 = A0_2._avatar_selection
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._click_avatar_strategy
  L5_2 = L4_2
  L4_2 = L4_2.register_selection_change_callback
  L6_2 = A2_2
  L7_2 = A3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = G
  L4_2 = L4_2.new
  L5_2 = G
  L5_2 = L5_2.CommonMultiSelectClickTeamStrategy
  L4_2 = L4_2(L5_2)
  A0_2._click_team_strategy = L4_2
  L4_2 = A0_2._click_team_strategy
  L5_2 = L4_2
  L4_2 = L4_2.set_init_selection
  L6_2 = A0_2._avatar_selection
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._click_team_strategy
  L5_2 = L4_2
  L4_2 = L4_2.register_selection_change_callback
  L6_2 = A2_2
  L7_2 = A3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_select_avatar
  L5_2 = L4_2
  L4_2 = L4_2.register_top_avatar_callback
  L6_2 = A0_2._get_top_avatars
  L7_2 = A0_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_select_avatar
  L5_2 = L4_2
  L4_2 = L4_2.register_avatar_setup_callback
  L6_2 = A0_2._setup_avatar_icon_view
  L7_2 = A0_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_select_avatar
  L5_2 = L4_2
  L4_2 = L4_2.register_team_setup_callback
  L6_2 = A0_2._setup_team_view
  L7_2 = A0_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_select_avatar
  L5_2 = L4_2
  L4_2 = L4_2.set_select_strategy
  L6_2 = A0_2._click_avatar_strategy
  L7_2 = A0_2._click_team_strategy
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_select_avatar
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = G
  L6_2 = L6_2.AvatarUtils
  L6_2 = L6_2.get_all_avatars
  L6_2, L7_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
end
L0_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.refresh_team_list
  L1_2(L2_2)
end
L0_1.refresh_team_list = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._avatar_selection
  L2_2 = L1_2
  L1_2 = L1_2.get_all_selected_avatars
  return L1_2(L2_2)
end
L0_1._get_top_avatars = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A1_2
  L3_2 = A1_2.setup_view
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L4_2 = A1_2
  L3_2 = A1_2.set_show_hp
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._avatar_selection
  L4_2 = L3_2
  L3_2 = L3_2.get_team_index_by_avatar
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A1_2
  L4_2 = A1_2.set_mask_hint
  L6_2 = L3_2 ~= nil
  L7_2 = L1_1[L3_2]
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._setup_avatar_icon_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._avatar_selection
  L4_2 = L3_2
  L3_2 = L3_2.is_team_data_equal_editing_team
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A2_2
  L4_2 = A2_2.set_is_fake_disable
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L5_2 = A2_2
  L4_2 = A2_2.show_activate_hint
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1._setup_team_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L2_1
return L0_1
