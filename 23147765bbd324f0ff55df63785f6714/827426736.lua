local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Challenge.DrinkMakerChallengeDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Challenge.Components.DrinkMakerChallengGroupPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Challenge.Components.DrinkMakerChallengGroupPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.DrinkMakerBarUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerChallengeDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.DrinkMakerModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.Prefs
L2_1 = L2_1.User
L3_1 = 1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.DrinkMakerChallengeDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._pause_game = true
  L1_2 = G
  L1_2 = L1_2.DrinkMakerBarUtils
  L1_2 = L1_2.get_unlock_submission_list
  L1_2 = L1_2()
  A0_2._unlock_submission_list = L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_challenge_data
  L1_2(L2_2)
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_challenge_group
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_get_challenge_item
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_challenges
  L1_2(L2_2)
  L1_2 = A0_2._challenge_groups
  L1_2 = #L1_2
  L1_2 = L1_2 == 0
  if L1_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._try_select_next_challenge
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_challenge_click
    L4_2 = A0_2._challenge_groups
    L5_2 = L3_1
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.Challenges
    L5_2 = L3_1
    L4_2 = L4_2[L5_2]
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._init_ui_navigation
  L2_2(L3_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.DrinkMakerChallengeFinish
  L4_2 = A0_2._on_challenge_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.DrinkMakerGetChallengeReward
  L4_2 = A0_2._on_challenge_reward
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_show_finish_result
  L1_2(L2_2)
end
L0_1._on_return_to_top = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L4_1
function L4_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_challenge_group
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    if L2_2 ~= nil then
      L2_2 = L1_2.UserObjectData
      L4_2 = L2_2
      L3_2 = L2_2.get_first_selected_object
      return L3_2(L4_2)
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_dict
  L2_2 = L1_1.DrinkMakerBarChallenges
  L1_2 = L1_2(L2_2)
  A0_2._all_challenge = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_challenge_group_data
  L3_2 = A0_2._all_challenge
  L1_2(L2_2, L3_2)
end
L0_1._init_challenge_data = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = {}
  A0_2._challenge_groups = L2_2
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.Row
    L9_2 = L8_2.UnlockParam
    L9_2 = L9_2[0]
    L10_2 = L7_2.IsUnlock
    if not L10_2 then
      L10_2 = L8_2.UnlockType
      L11_2 = CS
      L11_2 = L11_2.RPG
      L11_2 = L11_2.GameCore
      L11_2 = L11_2.DrinkMakerUnlockType
      L11_2 = L11_2.SubMission
      if L10_2 == L11_2 then
        goto lbl_23
      end
    end
    L9_2 = 0
    ::lbl_23::
    L10_2 = L2_2[L9_2]
    if L10_2 == nil then
      L10_2 = {}
      L2_2[L9_2] = L10_2
      L10_2 = L2_2[L9_2]
      L11_2 = {}
      L10_2.Challenges = L11_2
    end
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L2_2[L9_2]
    L11_2 = L11_2.Challenges
    L12_2 = L7_2
    L10_2(L11_2, L12_2)
  end
  L3_2 = L2_2[0]
  if L3_2 ~= nil then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2._challenge_groups
    L5_2 = L2_2[0]
    L3_2(L4_2, L5_2)
  end
  L3_2 = ipairs
  L4_2 = A0_2._unlock_submission_list
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L2_2[L7_2]
    if L8_2 ~= nil then
      L8_2 = L2_2[L7_2]
      L9_2 = G
      L9_2 = L9_2.DrinkMakerBarUtils
      L9_2 = L9_2.get_unlock_title
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      L8_2.Title = L9_2
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = A0_2._challenge_groups
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  end
end
L0_1._create_challenge_group_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_challenge_group
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._challenge_groups
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_challenge_group
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._setup_challenges = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._cur_challenge
  L1_2(L2_2, L3_2)
end
L0_1._setup_cur_challenge = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = 1
  L2_2 = A0_2._challenge_groups
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.scroll_challenge_group
    L6_2 = L5_2
    L5_2 = L5_2.GetShownItemByItemIndex
    L7_2 = L4_2 - 1
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 ~= nil then
      L6_2 = L5_2.UserObjectData
      L8_2 = L6_2
      L7_2 = L6_2.set_selected
      L9_2 = A0_2._cur_challenge
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        L8_2 = A0_2._binder
        L8_2 = L8_2.scroll_rect
        L9_2 = L8_2
        L8_2 = L8_2.ScrollToTransform
        L11_2 = L7_2
        L10_2 = L7_2.get_root_transform
        L10_2, L11_2 = L10_2(L11_2)
        L8_2(L9_2, L10_2, L11_2)
      end
    end
  end
end
L0_1._setup_select_state = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = 1
  L2_2 = A0_2._challenge_groups
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.scroll_challenge_group
    L6_2 = L5_2
    L5_2 = L5_2.GetShownItemByItemIndex
    L7_2 = L4_2 - 1
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 ~= nil then
      L6_2 = L5_2.UserObjectData
      L8_2 = L6_2
      L7_2 = L6_2.get_selected_panel
      L9_2 = A0_2._cur_challenge
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        L8_2 = A0_2._binder
        L8_2 = L8_2.scroll_rect
        L9_2 = L8_2
        L8_2 = L8_2.ScrollToTransform
        L11_2 = L7_2
        L10_2 = L7_2.get_root_transform
        L10_2, L11_2 = L10_2(L11_2)
        L8_2(L9_2, L10_2, L11_2)
        return
      end
    end
  end
end
L0_1._move_to_select_item = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._finish_challenge
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_challenges
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_select_next_challenge
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_cur_challenge
    L1_2(L2_2)
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.DrinkMaker.Challenge.DrinkMakerChallengeResultDialog"
  L3_2 = A0_2._finish_challenge
  L4_2 = A0_2._finish_reward
  L1_2(L2_2, L3_2, L4_2)
  A0_2._finish_challenge = nil
  A0_2._finish_reward = nil
end
L0_1._try_show_finish_result = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = ipairs
  L2_2 = A0_2._challenge_groups
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = ipairs
    L7_2 = L5_2.Challenges
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      L11_2 = A0_2._cur_challenge
      if L11_2 ~= L10_2 then
        L11_2 = L10_2.IsUnlock
        if L11_2 then
          L11_2 = L10_2.IsFinish
          if not L11_2 then
            L12_2 = A0_2
            L11_2 = A0_2._on_challenge_click
            L13_2 = L10_2
            L11_2(L12_2, L13_2)
            L12_2 = A0_2
            L11_2 = A0_2._move_to_select_item
            L11_2(L12_2)
            L11_2 = true
            return L11_2
          end
        end
      end
    end
  end
  L1_2 = false
  return L1_2
end
L0_1._try_select_next_challenge = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.DrinkMakerChallengGroupPanel
    L8_2 = G
    L8_2 = L8_2.DrinkMakerChallengGroupPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A2_2 + 1
  L6_2 = A0_2._challenge_groups
  L6_2 = L6_2[L5_2]
  L8_2 = L4_2
  L7_2 = L4_2.register_click_callback
  L9_2 = A0_2._on_challenge_click
  L10_2 = A0_2
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = L4_2
  L7_2 = L4_2.setup_view
  L9_2 = L6_2.Challenges
  L10_2 = L6_2.Title
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = L4_2
  L7_2 = L4_2.set_selected
  L9_2 = A0_2._cur_challenge
  L7_2(L8_2, L9_2)
  L8_2 = L3_2
  L7_2 = L3_2.SetSubList
  L10_2 = L4_2
  L9_2 = L4_2.get_static_list
  L9_2, L10_2 = L9_2(L10_2)
  L7_2(L8_2, L9_2, L10_2)
  return L3_2
end
L0_1._on_get_challenge_item = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cur_challenge
  if L2_2 == A1_2 then
    return
  end
  A0_2._cur_challenge = A1_2
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.GetDrinkMakerNewChallenges
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.Remove
  L4_2 = A0_2._cur_challenge
  L4_2 = L4_2.ID
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_cur_challenge
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_select_state
  L2_2(L3_2)
end
L0_1._on_challenge_click = L4_1
function L4_1(A0_2, A1_2)
  A0_2._finish_challenge = A1_2
end
L0_1._on_challenge_finish = L4_1
function L4_1(A0_2, A1_2)
  A0_2._finish_reward = A1_2
end
L0_1._on_challenge_reward = L4_1
return L0_1
