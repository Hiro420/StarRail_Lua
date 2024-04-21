local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildStageEntrance"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildShopPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildGearUnlockDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.ActivityEvolveBuildUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildConst"
L0_1 = L0_1(L1_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.EvolveBuildModule
L2_1 = G
L2_1 = L2_1.Utils
L2_1 = L2_1.create_lua_table_from_cs_list
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "EvolveBuildMainPage"
L5_1 = G
L5_1 = L5_1.UIController
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.EvolveBuildMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_BelowBlack
  A0_2._transition_style = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L3_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ActivityModule
  L2_2 = L1_2
  L1_2 = L1_2.GetEvolveBuildActivityData
  L1_2 = L1_2(L2_2)
  A0_2._activity_data = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.FFOMLPONIFB
  L2_2 = L1_2
  L1_2 = L1_2.LKKGMCOONJN
  L1_2(L2_2)
end
L3_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.close_btn
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.shop_btn
  L4_2 = A0_2._open_shop_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.collection_btn
  L4_2 = A0_2._open_collection_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.level_reward_btn
  L4_2 = A0_2._open_level_reward_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.quest_reward_btn
  L4_2 = A0_2._open_quest_reward_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.arrow_left
  L4_2 = A0_2._prev_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.arrow_right
  L4_2 = A0_2._next_page
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_timer
  L2_2 = L1_2
  L1_2 = L1_2.SetTargetTime
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.EndTimeDate
  function L4_2(A0_3)
    local L1_3, L2_3
    L2_3 = A0_3
    L1_3 = A0_3.exit
    L1_3(L2_3)
  end
  L5_2 = A0_2
  L6_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_remain_timer
  L2_2 = L1_2
  L1_2 = L1_2.SetTargetTime
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.EndTimeDate
  function L4_2(A0_3)
    local L1_3, L2_3
    L2_3 = A0_3
    L1_3 = A0_3.exit
    L1_3(L2_3)
  end
  L5_2 = A0_2
  L6_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.ActivityEvolveBuildUtils
  L1_2 = L1_2.start_ui_bgm
  L1_2()
  L2_2 = A0_2
  L1_2 = A0_2._get_first_page_index
  L1_2 = L1_2(L2_2)
  A0_2.cur_page_index = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._show_page
  L3_2 = A0_2.cur_page_index
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "EvolveBuildLevelRewardButton"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.level_reward_red_dot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "EvolveBuildQuestRewardButton"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.quest_reward_red_dot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_open_gear_unlock_dialog
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_navigation_target
  L4_2 = A0_2
  L3_2 = A0_2._get_first_navi_target
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L3_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.ActivityEvolveBuildUtils
  L1_2 = L1_2.stop_ui_bgm
  L1_2()
end
L3_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_notify_tutorial
  L1_2(L2_2)
end
L3_1._on_return_to_top = L4_1
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
L3_1._on_enter_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_first_navi_target
  return L1_2(L2_2)
end
L3_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2
end
L3_1._on_enter_special_zoom = L4_1
function L4_1(A0_2)
  local L1_2
end
L3_1._on_leave_special_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_stage_btns
  L3_2 = A0_2.cur_page_index
  L1_2(L2_2, L3_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.FindAvailableFameReward
  L3_2 = L1_1.TotalExp
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.fame_level_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  if L1_2 ~= nil then
    L4_2 = L1_2.Level
    if L4_2 then
      goto lbl_17
    end
  end
  L4_2 = 0
  ::lbl_17::
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.shop_btn
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.IsSkillShopAvailable
  L3_2 = L3_2(L4_2)
  L3_2 = not L3_2
  L2_2.IsInFakeDisableState = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.shop_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L3_1._refresh = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = A0_2
  L2_2 = A0_2._is_available_page_index
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L2_2 = {}
  L3_2 = {}
  L4_2 = 414001
  L5_2 = 414002
  L6_2 = 414003
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L4_2 = {}
  L5_2 = 414004
  L6_2 = 414006
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L5_2 = {}
  L6_2 = 414007
  L5_2[1] = L6_2
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L3_2 = {}
  L4_2 = {}
  L5_2 = A0_2._binder
  L5_2 = L5_2.stage1_btn
  L6_2 = A0_2._binder
  L6_2 = L6_2.stage2_btn
  L7_2 = A0_2._binder
  L7_2 = L7_2.stage3_btn
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L5_2 = {}
  L6_2 = A0_2._binder
  L6_2 = L6_2.stage5_btn
  L7_2 = A0_2._binder
  L7_2 = L7_2.stage6_btn
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L6_2 = {}
  L7_2 = A0_2._binder
  L7_2 = L7_2.stage7_btn
  L6_2[1] = L7_2
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L4_2 = {}
  L5_2 = ipairs
  L6_2 = L2_2[A1_2]
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = L3_2[A1_2]
    L10_2 = L10_2[L8_2]
    L11_2 = L1_1
    L12_2 = L11_2
    L11_2 = L11_2.GetStage
    L13_2 = L9_2
    L11_2 = L11_2(L12_2, L13_2)
    L13_2 = L10_2
    L12_2 = L10_2.setup_view
    L14_2 = L11_2
    L12_2(L13_2, L14_2)
    L12_2 = table
    L12_2 = L12_2.insert
    L13_2 = L4_2
    L15_2 = L10_2
    L14_2 = L10_2.button
    L14_2, L15_2 = L14_2(L15_2)
    L12_2(L13_2, L14_2, L15_2)
  end
  L6_2 = A0_2
  L5_2 = A0_2.setup_navigation
  L7_2 = L4_2
  L8_2 = NavigationType
  L8_2 = L8_2.Horizontal
  L5_2(L6_2, L7_2, L8_2)
end
L3_1._setup_stage_btns = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = 1 <= A1_2 and A1_2 <= 3
  return L2_2
end
L3_1._is_available_page_index = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = {}
  L2_2[414001] = 1
  L2_2[414002] = 1
  L2_2[414003] = 1
  L2_2[414004] = 2
  L2_2[414006] = 2
  L2_2[414007] = 3
  L3_2 = L2_2[A1_2]
  return L3_2
end
L3_1._stage_id_to_page_index = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1.InProgressStageID
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L3_2 = L2_2
  L2_2 = L2_2.GetEvolveBuildLastEnteredStageID
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._stage_id_to_page_index
  L5_2 = L1_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._stage_id_to_page_index
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    if not L3_2 then
      L3_2 = 1
    end
  end
  return L3_2
end
L3_1._get_first_page_index = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = {}
  L3_2 = A0_2._binder
  L3_2 = L3_2.stage1_btn
  L4_2 = L3_2
  L3_2 = L3_2.game_obj
  L3_2 = L3_2(L4_2)
  L2_2[414001] = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.stage2_btn
  L4_2 = L3_2
  L3_2 = L3_2.game_obj
  L3_2 = L3_2(L4_2)
  L2_2[414002] = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.stage3_btn
  L4_2 = L3_2
  L3_2 = L3_2.game_obj
  L3_2 = L3_2(L4_2)
  L2_2[414003] = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.stage5_btn
  L4_2 = L3_2
  L3_2 = L3_2.game_obj
  L3_2 = L3_2(L4_2)
  L2_2[414004] = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.stage6_btn
  L4_2 = L3_2
  L3_2 = L3_2.game_obj
  L3_2 = L3_2(L4_2)
  L2_2[414006] = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.stage7_btn
  L4_2 = L3_2
  L3_2 = L3_2.game_obj
  L3_2 = L3_2(L4_2)
  L2_2[414007] = L3_2
  L3_2 = L2_2[A1_2]
  return L3_2
end
L3_1._stage_id_to_navi_target = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1.InProgressStageID
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L3_2 = L2_2
  L2_2 = L2_2.GetEvolveBuildLastEnteredStageID
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._stage_id_to_navi_target
  L5_2 = L1_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._stage_id_to_navi_target
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    if not L3_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.stage_btns
      L3_2 = L3_2[1]
      L4_2 = L3_2
      L3_2 = L3_2.game_obj
      L3_2 = L3_2(L4_2)
    end
  end
  return L3_2
end
L3_1._get_first_navi_target = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2
  if A1_2 == 1 then
    L3_2 = "EvolveBuildMainPage_BgSwitch2"
    return L3_2
  elseif A1_2 == 3 then
    L3_2 = "EvolveBuildMainPage_BgSwitch3"
    return L3_2
  end
  if A1_2 == 2 then
    if A2_2 == 1 then
      L3_2 = "EvolveBuildMainPage_BgSwitch1"
      return L3_2
    elseif A2_2 == 3 then
      L3_2 = "EvolveBuildMainPage_BgSwitch4"
      return L3_2
    end
  end
  L3_2 = "EvolveBuildMainPage_BgSwitch1"
  return L3_2
end
L3_1._get_anim_clip_name = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if A1_2 == 1 then
    if A2_2 == 2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.stage_btns
      L3_2 = L3_2[3]
      L4_2 = L3_2
      L3_2 = L3_2.game_obj
      return L3_2(L4_2)
    end
    L3_2 = A0_2._binder
    L3_2 = L3_2.stage_btns
    L3_2 = L3_2[1]
    L4_2 = L3_2
    L3_2 = L3_2.game_obj
    return L3_2(L4_2)
  elseif A1_2 == 3 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.stage_btns
    L3_2 = L3_2[7]
    L4_2 = L3_2
    L3_2 = L3_2.game_obj
    return L3_2(L4_2)
  elseif A1_2 == 2 then
    if A2_2 == 3 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.stage_btns
      L3_2 = L3_2[6]
      L4_2 = L3_2
      L3_2 = L3_2.game_obj
      return L3_2(L4_2)
    end
    L3_2 = A0_2._binder
    L3_2 = L3_2.stage_btns
    L3_2 = L3_2[4]
    L4_2 = L3_2
    L3_2 = L3_2.game_obj
    return L3_2(L4_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.stage_btns
  L3_2 = L3_2[1]
  L4_2 = L3_2
  L3_2 = L3_2.game_obj
  return L3_2(L4_2)
end
L3_1._page_index_to_navi_target = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A0_2
  L3_2 = A0_2._is_available_page_index
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2.set_navigation_target
  L5_2 = nil
  L3_2(L4_2, L5_2)
  L3_2 = ipairs
  L4_2 = A0_2._binder
  L4_2 = L4_2.pages
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.SafeSetActive
    L10_2 = L6_2 == A1_2
    L8_2(L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.Stop
    L8_2(L9_2)
    L9_2 = L7_2
    L8_2 = L7_2.Play
    L8_2(L9_2)
  end
  L3_2 = ipairs
  L4_2 = A0_2._binder
  L4_2 = L4_2.page_dots
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.SafeSetActive
    L10_2 = L6_2 == A1_2
    L8_2(L9_2, L10_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._setup_stage_btns
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_arrows
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_difficulty_panel
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._get_anim_clip_name
  L5_2 = A1_2
  L6_2 = A0_2.cur_page_index
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if A2_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.UIAnimationUtils
    L4_2 = L4_2.PlayToEnd
    L5_2 = A0_2._binder
    L5_2 = L5_2.bg_anim
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  else
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.UIAnimationUtils
    L4_2 = L4_2.PlayFromBegin
    L5_2 = A0_2._binder
    L5_2 = L5_2.bg_anim
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2._page_index_to_navi_target
  L6_2 = A1_2
  L7_2 = A0_2.cur_page_index
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2.set_navigation_target
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  A0_2.cur_page_index = A1_2
end
L3_1._show_page = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.InProgressStage
  if L1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._show_stage_in_progress_toast
    L4_2 = L1_2.Name
    L2_2(L3_2, L4_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._show_page
  L4_2 = A0_2.cur_page_index
  L4_2 = L4_2 + 1
  L2_2(L3_2, L4_2)
end
L3_1._next_page = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.InProgressStage
  if L1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._show_stage_in_progress_toast
    L4_2 = L1_2.Name
    L2_2(L3_2, L4_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._show_page
  L4_2 = A0_2.cur_page_index
  L4_2 = L4_2 - 1
  L2_2(L3_2, L4_2)
end
L3_1._prev_page = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIPileToastMessageString
  L4_2 = G
  L4_2 = L4_2.TextmapStatic
  L4_2 = L4_2.GetText
  L5_2 = "UIText_EvolveBuild_OtherStageInProgress"
  L6_2 = G
  L6_2 = L6_2.TextmapStatic
  L6_2 = L6_2.GetText
  L7_2 = A1_2
  L6_2, L7_2 = L6_2(L7_2)
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L3_1._show_stage_in_progress_toast = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.arrow_left
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L5_2 = A0_2
  L4_2 = A0_2._is_available_page_index
  L6_2 = A1_2 - 1
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.arrow_right
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L5_2 = A0_2
  L4_2 = A0_2._is_available_page_index
  L6_2 = A1_2 + 1
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L3_1._refresh_arrows = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.IsSkillShopAvailable
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_EvolveBuild_SkillShopLocked"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = L1_1.InProgressStage
  if L1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._show_stage_in_progress_toast
    L4_2 = L1_2.Name
    L2_2(L3_2, L4_2)
    return
  end
  L1_1.IsSkillShopTipSeen = true
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = G
  L3_2 = L3_2.EvolveBuildShopPage
  L2_2(L3_2)
end
L3_1._open_shop_page = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L2_1
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetNewlyUnlockedGearIDs
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = #L1_2
  if 0 < L2_2 then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_async_show
    L3_2 = G
    L3_2 = L3_2.EvolveBuildGearUnlockDialog
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._try_notify_tutorial
    L2_2(L3_2)
  end
end
L3_1._try_open_gear_unlock_dialog = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = pairs
  L2_2 = L0_1.MainPageTutorialIDs
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.GlobalVars
    L6_2 = L6_2.s_ModuleManager
    L6_2 = L6_2.QuestModule
    L7_2 = L6_2
    L6_2 = L6_2.IsQuestStatus
    L8_2 = L4_2
    L9_2 = CS
    L9_2 = L9_2.LEOGBBOPKKO
    L9_2 = L9_2.JKFPIINHGPD
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    if L6_2 then
      L6_2 = G
      L6_2 = L6_2.SuperDebug
      L6_2 = L6_2.Log
      L7_2 = "[EvolveBuild] Notifying Tutorial#"
      L8_2 = L5_2
      L7_2 = L7_2 .. L8_2
      L6_2(L7_2)
      L6_2 = G
      L6_2 = L6_2.NotifyManager
      L6_2 = L6_2.notify
      L7_2 = G
      L7_2 = L7_2.CS
      L7_2 = L7_2.NotifyType
      L7_2 = L7_2.TutorialTaskUnlock
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
    end
  end
end
L3_1._try_notify_tutorial = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Activity.EvolveBuild.Collection.EvolveBuildCollectionPage"
  L1_2(L2_2)
end
L3_1._open_collection_page = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = L1_2
  L1_2 = L1_2.SetEvolveBuildLevelRewardSeen
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ActivityForceRefreshRedDot
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Activity.EvolveBuild.EvolveBuildLevelRewardPage"
  L1_2(L2_2)
end
L3_1._open_level_reward_page = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = L1_2
  L1_2 = L1_2.SetEvolveBuildQuestRewardSeen
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ActivityForceRefreshRedDot
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.ActivityRewardUtils
  L1_2 = L1_2.show_common_activity_reward_page
  L2_2 = L0_1.ActivityRewardID
  L3_2 = "Ui.Activity.EvolveBuild.EvolveBuildQuestRewardPageBinder"
  L4_2 = nil
  L5_2 = "EvolveBuildQuestRewardTab"
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L3_1._open_quest_reward_page = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.difficulty_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.difficulty_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 or L4_2
  L4_2 = A1_2 and 0 < A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.difficulty_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L0_1.DifficultyText
  L4_2 = L4_2[A1_2]
  L2_2(L3_2, L4_2)
end
L3_1._setup_difficulty_panel = L4_1
return L3_1
