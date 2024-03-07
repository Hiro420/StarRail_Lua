local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.Challenge.Maze.ChallengeResultDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = "ChallengeMaze_Succeed"
L1_1 = "ChallengeMaze_Prefect"
L2_1 = "ChallengeMaze_Button_Continue"
L3_1 = "ChallengeMaze_Button_Next"
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.GlobalVars
L4_1 = L4_1.s_ModuleManager
L4_1 = L4_1.ChallengeModule
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.GlobalVars
L5_1 = L5_1.s_ModuleManager
L5_1 = L5_1.TeamModule
L6_1 = G
L6_1 = L6_1.Class
L7_1 = "ChallengeResultDialog"
L8_1 = G
L8_1 = L8_1.UIController
L6_1 = L6_1(L7_1, L8_1)
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChallengeResultDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._is_resp_esc = false
  L1_2 = {}
  A0_2._reward_item_table = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L6_1.ctor = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A1_2.IsWin
  A0_2._is_win = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.ChallengeModule
  L3_2 = L3_2.CurrentChallengeInstance
  A0_2._challenge_instance = L3_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A1_2.RewardItemList
  L3_2 = L3_2(L4_2)
  A0_2._reward_item_table = L3_2
  A0_2._is_from_resettle = A2_2
  L3_2 = G
  L3_2 = L3_2.RewardUtils
  L3_2 = L3_2.sort_reward_item
  L4_2 = A0_2._reward_item_table
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._init_config_ids
  L3_2(L4_2)
end
L6_1.init = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._config_ids = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._reward_item_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._config_ids
    L8_2 = L5_2.ConfigID
    L6_2(L7_2, L8_2)
  end
end
L6_1._init_config_ids = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L6_1._on_in_control_action_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_ids
  if L1_2 ~= nil then
    L1_2 = A0_2._config_ids
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = {}
      L2_2 = A0_2._config_ids
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L6_1._on_left_stick_button_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_continue
  L4_2 = A0_2._on_btn_continue
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_reward_item_change
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.CurChallengeProgressUpdate
  L4_2 = A0_2._on_cur_challenge_progress_update
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HideLoadingPage
  L4_2 = A0_2._on_hide_loading_page
  L1_2(L2_2, L3_2, L4_2)
end
L6_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_challenge_target
  L3_2 = A0_2._is_from_resettle
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_turn_cost
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_continue_btn
  L1_2(L2_2)
end
L6_1._setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_turn_cost
  L1_2(L2_2)
end
L6_1._on_cur_challenge_progress_update = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.challenge_target_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view_challenge_result
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L6_1._setup_challenge_target = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_reward_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._reward_item_table
  L3_2 = #L3_2
  L3_2 = 0 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._reward_item_table
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L6_1._setup_reward = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._challenge_instance
  L1_2 = L1_2.TurnCost
  A0_2._turn_cost = L1_2
  L1_2 = L4_1.CurrentChallengeInstance
  L1_2 = L1_2.ChallengeDataRef
  L1_2 = L1_2.ChallengeCountDown
  L2_2 = A0_2._turn_cost
  L1_2 = L1_2 - L2_2
  A0_2._turn_left = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_round
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._turn_left
  L1_2(L2_2, L3_2)
end
L6_1._setup_turn_cost = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_level_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L4_1.CurrentChallengeInstance
  L3_2 = L3_2.ChallengeDataRef
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L0_1
  L1_2(L2_2, L3_2)
end
L6_1._setup_title = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_continue
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L6_1._setup_continue_btn = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RewardItemIconLite
    L8_2 = G
    L8_2 = L8_2.RewardItemIconLiteBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._reward_item_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view_by_display_data
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L6_1._on_reward_item_change = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L4_1.CurrentChallengeInstance
  if L1_2 ~= nil then
    L1_2 = true
    L2_2 = false
    L3_2 = true
    L4_2 = L4_1.CurrentChallengeInstance
    L4_2 = L4_2.ChallengeDataRef
    L4_2 = L4_2.GroupID
    L5_2 = L4_1
    L6_2 = L5_2
    L5_2 = L5_2.SetContinueChallengeData
    L7_2 = L1_2
    L8_2 = L2_2
    L9_2 = L3_2
    L10_2 = L4_2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.DPBNIGGBOMJ
  L1_2(L2_2, L3_2)
  L1_2 = L4_1
  L2_2 = L1_2
  L1_2 = L1_2.LeaveChallenge
  L1_2(L2_2)
end
L6_1._on_btn_exit = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = L4_1.CurrentChallengeInstance
  if L1_2 ~= nil then
    L1_2 = true
    L2_2 = true
    L3_2 = false
    L4_2 = L4_1.CurrentChallengeInstance
    L4_2 = L4_2.ChallengeDataRef
    L5_2 = L4_2.GroupID
    L6_2 = L4_2.ChallengeGroupDataRef
    L7_2 = L6_2
    L6_2 = L6_2.GetNextChallengeData
    L8_2 = L4_2.ID
    L6_2 = L6_2(L7_2, L8_2)
    L6_2 = L6_2.ID
    L7_2 = L4_2.ID
    if L6_2 == L7_2 then
      L3_2 = true
    end
    L7_2 = L4_1
    L8_2 = L7_2
    L7_2 = L7_2.SetContinueChallengeData
    L9_2 = L1_2
    L10_2 = L2_2
    L11_2 = L3_2
    L12_2 = L5_2
    L13_2 = L6_2
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.DPBNIGGBOMJ
  L1_2(L2_2, L3_2)
  L1_2 = L4_1
  L2_2 = L1_2
  L1_2 = L1_2.LeaveChallenge
  L1_2(L2_2)
end
L6_1._on_btn_continue = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_from_resettle
  if not L1_2 then
    L1_2 = A0_2._fade_animation
    if L1_2 ~= nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.anim_root
      L2_2 = L1_2
      L1_2 = L1_2.Play
      L3_2 = A0_2._fade_animation
      L3_2 = L3_2.EntranceAnimationClip
      L3_2 = L3_2.name
      L1_2(L2_2, L3_2)
    end
    L2_2 = A0_2
    L1_2 = A0_2._setup_challenge_target
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L6_1._on_hide_loading_page = L7_1
return L6_1
