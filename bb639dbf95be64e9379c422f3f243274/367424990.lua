local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Utilities.AvatarUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelect.BaseAvatarSelectPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeAvatarSelectPanel"
L2_1 = G
L2_1 = L2_1.BaseAvatarSelectPanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 1
L2_1 = 2
L3_1 = 0
L4_1 = "ChallengeMaze_Team1_Edit"
L5_1 = "ChallengeMaze_Team2_Edit"
L6_1 = "UIText_ChallengeMaze_Team1Only_Edit"
L7_1 = {}
L7_1[L1_1] = L4_1
L7_1[L2_1] = L5_1
function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._team_data = A1_2
  L4_2 = A2_2 or L4_2
  if not A2_2 then
    L4_2 = {}
  end
  A0_2._selected_avatars = L4_2
  L4_2 = {}
  A0_2._current_team = L4_2
  L4_2 = A0_2._current_team
  L4_2.teamData = A1_2
  L4_2 = {}
  A0_2._selected_avatars_in_all_teams = L4_2
  A0_2._show_team_index = true
  A0_2._other_teams = A3_2
  L4_2 = L0_1.super
  L4_2 = L4_2.init
  L5_2 = A0_2
  L4_2(L5_2)
end
L0_1.init = L8_1
function L8_1(A0_2, A1_2)
  A0_2._click_blocked_item_callback = A1_2
end
L0_1.register_click_blocked_item_callback = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._current_team = A1_2
  A0_2._other_teams = A2_2
  A0_2._selected_avatars = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._setup_view
  L4_2(L5_2)
end
L0_1.set_teams = L8_1
function L8_1(A0_2, A1_2)
  A0_2._show_team_index = A1_2
end
L0_1.set_show_team_index = L8_1
function L8_1(A0_2, A1_2)
  A0_2._selected_avatars_in_all_teams = A1_2
end
L0_1.set_selected_avatar_in_all_team = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.super
  L1_2 = L1_2._on_load
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_close
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.super
  L1_2 = L1_2._on_dispose
  L2_2 = A0_2
  L1_2(L2_2)
  A0_2._other_teams = nil
  A0_2._selected_avatars_in_all_teams = nil
  A0_2._click_blocked_item_callback = nil
end
L0_1._on_dispose = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = A0_2._strategy
  L1_2 = L1_2.is_selection_top
  if L1_2 then
    L1_2 = A0_2._selected_avatars_in_all_teams
  end
  return L1_2
end
L0_1.get_top_avatars = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = A0_2._selected_avatars
  return L1_2
end
L0_1.get_selected_avatars_in_cur_team = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.set_show_hp
  L5_2 = false
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._is_avatar_blocked
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = 0
  if L3_2 == true then
    L6_2 = A0_2
    L5_2 = A0_2._get_avatar_team_index_in_other_teams
    L7_2 = A2_2
    L5_2 = L5_2(L6_2, L7_2)
    L4_2 = L5_2
  else
    L6_2 = A0_2
    L5_2 = A0_2._get_avatar_team_index_in_cur_team
    L7_2 = A2_2
    L5_2 = L5_2(L6_2, L7_2)
    L4_2 = L5_2
  end
  L5_2 = A0_2._show_team_index
  if not L5_2 then
    L6_2 = A1_2
    L5_2 = A1_2.set_mask_hint
    L7_2 = L3_1
    L7_2 = L4_2 ~= L7_2
    L8_2 = L4_1
    L5_2(L6_2, L7_2, L8_2)
  else
    L6_2 = A1_2
    L5_2 = A1_2.set_mask_hint
    L7_2 = L3_1
    L7_2 = L4_2 ~= L7_2
    L8_2 = L7_1[L4_2]
    L5_2(L6_2, L7_2, L8_2)
  end
end
L0_1.setup_icon_view = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._is_avatar_blocked
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = A0_2._click_blocked_item_callback
    if L3_2 then
      L3_2 = A0_2._click_blocked_item_callback
      L4_2 = A1_2
      L3_2(L4_2)
    end
  end
  L3_2 = not L2_2
  return L3_2
end
L0_1.customized_click_check = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = A0_2._other_teams
  if L2_2 then
    L2_2 = pairs
    L3_2 = A0_2._other_teams
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      if L6_2 then
        L7_2 = L6_2.avatars
        if L7_2 then
          L7_2 = pairs
          L8_2 = L6_2.avatars
          L7_2, L8_2, L9_2 = L7_2(L8_2)
          for L10_2, L11_2 in L7_2, L8_2, L9_2 do
            if L11_2 == A1_2 then
              L12_2 = L6_2.teamData
              L12_2 = L12_2.LineupType
              L13_2 = CS
              L13_2 = L13_2.DEAEDMGDDHH
              L13_2 = L13_2.GIKNECLHJND
              if L12_2 == L13_2 then
                L12_2 = true
                return L12_2
              end
              L12_2 = L6_2.teamData
              L12_2 = L12_2.LineupType
              L13_2 = CS
              L13_2 = L13_2.DEAEDMGDDHH
              L13_2 = L13_2.FENMCOIKKHF
              if L12_2 == L13_2 then
                L12_2 = true
                return L12_2
              end
              L12_2 = L6_2.teamData
              L12_2 = L12_2.LineupType
              L13_2 = CS
              L13_2 = L13_2.DEAEDMGDDHH
              L13_2 = L13_2.PJKAEAFPEPK
              if L12_2 == L13_2 then
                L12_2 = true
                return L12_2
              end
            end
          end
        end
      end
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._is_avatar_blocked = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._get_avatar_team_index
  L4_2 = A0_2._current_team
  L4_2 = L4_2.teamData
  L5_2 = A0_2._selected_avatars
  L6_2 = A1_2
  return L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._get_avatar_team_index_in_cur_team = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2._other_teams
  if L2_2 == nil then
    L2_2 = L3_1
    return L2_2
  end
  L2_2 = pairs
  L3_2 = A0_2._other_teams
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = A0_2
    L7_2 = A0_2._get_avatar_team_index
    L9_2 = L6_2.teamData
    L10_2 = L6_2.avatars
    L11_2 = A1_2
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    L8_2 = L3_1
    if L7_2 ~= L8_2 then
      return L7_2
    end
  end
  L2_2 = L3_1
  return L2_2
end
L0_1._get_avatar_team_index_in_other_teams = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A1_2 == nil or A2_2 == nil then
    L4_2 = L3_1
    return L4_2
  end
  L4_2 = pairs
  L5_2 = A2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    if L8_2 == A3_2 then
      L9_2 = A1_2.LineupType
      L10_2 = CS
      L10_2 = L10_2.DEAEDMGDDHH
      L10_2 = L10_2.GIKNECLHJND
      if L9_2 == L10_2 then
        L9_2 = L1_1
        return L9_2
      end
      L9_2 = A1_2.LineupType
      L10_2 = CS
      L10_2 = L10_2.DEAEDMGDDHH
      L10_2 = L10_2.FENMCOIKKHF
      if L9_2 == L10_2 then
        L9_2 = L2_1
        return L9_2
      end
    end
  end
  L4_2 = L3_1
  return L4_2
end
L0_1._get_avatar_team_index = L8_1
return L0_1
