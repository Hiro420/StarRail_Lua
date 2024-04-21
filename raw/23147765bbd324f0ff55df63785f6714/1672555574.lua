local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.RewardBox.BattleEvolveBuildRewardBoxDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.RewardBox.BattleEvolveBuildWeaponUpPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.ActivityEvolveBuildUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.ActivityEvolveBuildRaccoonTalkPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Select.BattleEvolveBuildSelectGearPropPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleEvolveBuildRewardBoxDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1[0] = "5374"
L1_1[1] = "5393"
L2_1 = "EvolveRewardBoxToastDialog_Fadein_Blue"
L3_1 = "EvolveRewardBoxToastDialog_Fadein_Gold"
L4_1 = "UIText_EvolveBuild_SpecialRewardMainTitle01"
L5_1 = "UIText_EvolveBuild_SpecialRewardMainTitle"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.BattleEvolveBuildRewardBoxDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L3_2 = 4
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._block_id = L1_2
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.set_battle_pause
  L2_2 = true
  L1_2(L2_2)
end
L0_1.ctor = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  A0_2._coins_reward = L3_2
  A0_2._basic_coins = A2_2
  A0_2._only_coin_count = 0
  L3_2 = {}
  A0_2._weapon_up_reward = L3_2
  L3_2 = 0
  L4_2 = A1_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    L7_2 = L7_2.GearConfig
    if L7_2 ~= nil then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._weapon_up_reward
      L9_2 = A1_2[L6_2]
      L7_2(L8_2, L9_2)
    else
      L7_2 = A0_2._only_coin_count
      L7_2 = L7_2 + 1
      A0_2._only_coin_count = L7_2
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._generate_prop_data
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1.init = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityEvolveBuildRaccoonTalkPanel
  L4_2 = G
  L4_2 = L4_2.ActivityEvolveBuildRaccoonTalkPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._raccoon_talk_panel = L1_2
  L1_2 = A0_2._raccoon_talk_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tips
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.weapon_up_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_weapon_up_view_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.weapon_up_view
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_weapon_up_view_fadein_end
    L0_3(L1_3)
  end
  L1_2.mOnFadeInEndAction = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.props_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_props_view_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_ui_animation_event
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_weapon_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_coin_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_title
  L1_2(L2_2)
  L1_2 = A0_2._raccoon_talk_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_no_gear_tips
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._play_fade_in
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = L1_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = G
    L6_2 = L6_2.ActivityEvolveBuildUtils
    L6_2 = L6_2.is_in_specific_period_stage
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
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
L0_1._trigger_tutorial = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._prop_data
  L1_2 = #L1_2
  if 3 < L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayFromBegin
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_root
    L3_2 = L3_1
    L1_2(L2_2, L3_2)
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayFromBegin
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_root
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
  end
end
L0_1._play_fade_in = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
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
  L7_2 = L7_2.BattleEvolveBuildWeaponUpPanel
  L8_2 = G
  L8_2 = L8_2.BattleEvolveBuildWeaponUpPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_21::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._unique_weapon_up_reward
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L8_2 = A0_2._cost_tool_level
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._weapon_up_panels
  L6_2 = A2_2 + 1
  L5_2[L6_2] = L4_2
  return L3_2
end
L0_1._on_weapon_up_view_change = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
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
  L7_2 = L7_2.BattleEvolveBuildSelectGearPropPanel
  L8_2 = G
  L8_2 = L8_2.BattleEvolveBuildSelectGearPropPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_21::
  L5_2 = A2_2 + 1
  L6_2 = A0_2._prop_data
  L6_2 = #L6_2
  if L5_2 <= L6_2 then
    L6_2 = L4_2
    L5_2 = L4_2.setup_view
    L7_2 = A0_2._prop_data
    L8_2 = A2_2 + 1
    L7_2 = L7_2[L8_2]
    L7_2 = L7_2.GearConfig
    L7_2 = L7_2.GearID
    L5_2(L6_2, L7_2)
    L6_2 = L4_2
    L5_2 = L4_2.setup_reward_effect_bg
    L5_2(L6_2)
  else
    L6_2 = L4_2
    L5_2 = L4_2.setup_coin_view
    L5_2(L6_2)
  end
  return L3_2
end
L0_1._on_props_view_change = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = G
  L1_2 = L1_2.ActivityEvolveBuildUtils
  L1_2 = L1_2.get_evolve_build_gear_manager
  L1_2 = L1_2()
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_weapon_up
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._weapon_up_reward
  L4_2 = #L4_2
  L4_2 = 0 < L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._weapon_up_reward
  L2_2 = #L2_2
  if L2_2 == 0 then
    return
  end
  L2_2 = {}
  A0_2._exist_weapon_up_reward = L2_2
  L2_2 = {}
  A0_2._cost_tool_level = L2_2
  L2_2 = 1
  L3_2 = A0_2._weapon_up_reward
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._weapon_up_reward
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.GearConfig
    L8_2 = L1_2
    L7_2 = L1_2.HasGear
    L9_2 = L6_2.GearID
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L7_2 = A0_2._exist_weapon_up_reward
      L8_2 = L6_2.GearID
      L7_2 = L7_2[L8_2]
      if L7_2 == nil then
        L7_2 = {}
        L8_2 = L6_2.GearID
        L7_2.GearID = L8_2
        L8_2 = {}
        L9_2 = L6_2.Level
        L8_2[1] = L9_2
        L7_2.PreLevel = L8_2
        L8_2 = A0_2._exist_weapon_up_reward
        L9_2 = L6_2.GearID
        L8_2[L9_2] = L7_2
      else
        L7_2 = table
        L7_2 = L7_2.insert
        L8_2 = A0_2._exist_weapon_up_reward
        L9_2 = L6_2.GearID
        L8_2 = L8_2[L9_2]
        L8_2 = L8_2.PreLevel
        L9_2 = L6_2.Level
        L7_2(L8_2, L9_2)
      end
    else
      L7_2 = A0_2._cost_tool_level
      L8_2 = L6_2.GearID
      L7_2 = L7_2[L8_2]
      if L7_2 == nil then
        L7_2 = A0_2._cost_tool_level
        L8_2 = L6_2.GearID
        L9_2 = L6_2.Level
        L7_2[L8_2] = L9_2
      end
    end
  end
  L2_2 = {}
  A0_2._unique_weapon_up_reward = L2_2
  L2_2 = pairs
  L3_2 = A0_2._exist_weapon_up_reward
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._unique_weapon_up_reward
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = A0_2._unique_weapon_up_reward
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._sort
    L4_3 = A0_3.GearID
    L5_3 = A1_3.GearID
    return L2_3(L3_3, L4_3, L5_3)
  end
  L2_2(L3_2, L4_2)
end
L0_1._setup_weapon_reward = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._basic_coins
  L2_2 = 1
  L3_2 = A0_2._coins_reward
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._coins_reward
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.CoinDelta
    L1_2 = L1_2 + L6_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_res_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_res
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = 0 < L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.image_res
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.GlobalVars
  L5_2 = L5_2.s_ModuleManager
  L5_2 = L5_2.EvolveBuildModule
  L5_2 = L5_2.CoinCurrencyIconPath
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_coin_reward = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.EvolveBuildModule
  L1_2 = L1_2.LevelInstance
  if L1_2 then
    L2_2 = L1_2.StagePeriodType
    L2_2 = #L2_2
    if L2_2 == 3 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_reward_title
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = L4_1
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_reward_title
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = L5_1
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._setup_title = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_no_gear_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._weapon_up_reward
  L3_2 = #L3_2
  L3_2 = L3_2 == 0
  L1_2(L2_2, L3_2)
end
L0_1._setup_no_gear_tips = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = {}
  A0_2._prop_data = L2_2
  A0_2._prop_coin_nums = 0
  L2_2 = pairs
  L3_2 = A0_2._weapon_up_reward
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._prop_data
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2._prop_data
  L2_2 = #L2_2
  if L2_2 < 2 then
    return
  end
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = A0_2._prop_data
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._sort
    L4_3 = A0_3.GearConfig
    L4_3 = L4_3.GearID
    L5_3 = A1_3.GearConfig
    L5_3 = L5_3.GearID
    return L2_3(L3_3, L4_3, L5_3)
  end
  L2_2(L3_2, L4_2)
end
L0_1._generate_prop_data = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = G
  L3_2 = L3_2.ActivityEvolveBuildUtils
  L3_2 = L3_2.get_evolve_build_gear_manager
  L3_2 = L3_2()
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ActivityEvolveBuildGearCollectionExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.ActivityEvolveBuildGearCollectionExcelTable
  L5_2 = L5_2.GetData
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  L6_2 = L4_2.Type
  L7_2 = L5_2.Type
  if L6_2 == L7_2 then
    L7_2 = L3_2
    L6_2 = L3_2.TryGetGearLevel
    L8_2 = L4_2.ID
    L6_2 = L6_2(L7_2, L8_2)
    L8_2 = L3_2
    L7_2 = L3_2.TryGetGearLevel
    L9_2 = L5_2.ID
    L7_2 = L7_2(L8_2, L9_2)
    L6_2 = L6_2 > L7_2
    return L6_2
  else
    L6_2 = L4_2.Type
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.EvolveGearType
    L7_2 = L7_2.Forge
    if L6_2 ~= L7_2 then
      L6_2 = L5_2.Type
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.EvolveGearType
      L7_2 = L7_2.Forge
      if L6_2 ~= L7_2 then
        goto lbl_63
      end
    end
    L6_2 = L4_2.Type
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.EvolveGearType
    L7_2 = L7_2.Forge
    L6_2 = L6_2 == L7_2
    do return L6_2 end
    goto lbl_90
    ::lbl_63::
    L6_2 = L4_2.Type
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.EvolveGearType
    L7_2 = L7_2.Tool
    if L6_2 ~= L7_2 then
      L6_2 = L5_2.Type
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.EvolveGearType
      L7_2 = L7_2.Tool
      if L6_2 ~= L7_2 then
        goto lbl_90
      end
    end
    L6_2 = L4_2.Type
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.EvolveGearType
    L7_2 = L7_2.Tool
    L6_2 = L6_2 == L7_2
    return L6_2
  end
  ::lbl_90::
  L6_2 = L4_2.ID
  L7_2 = L5_2.ID
  L6_2 = L6_2 < L7_2
  return L6_2
end
L0_1._sort = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.props_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._prop_data
  L3_2 = #L3_2
  L4_2 = A0_2._only_coin_count
  L3_2 = L3_2 + L4_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.props_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.props_view
  L2_2 = L1_2
  L1_2 = L1_2.PlayFadeIn
  L1_2(L2_2)
end
L0_1._setup_prop_view = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == "RewardListFadeIn" then
    L2_2 = A0_2._reward_fadein_finish
    if L2_2 == nil then
      L2_2 = A0_2._unique_weapon_up_reward
      if L2_2 then
        L2_2 = {}
        A0_2._weapon_up_panels = L2_2
        L2_2 = A0_2._binder
        L2_2 = L2_2.weapon_up_view
        L3_2 = L2_2
        L2_2 = L2_2.SetListItemCount
        L4_2 = A0_2._unique_weapon_up_reward
        L4_2 = #L4_2
        L5_2 = true
        L2_2(L3_2, L4_2, L5_2)
        L2_2 = A0_2._binder
        L2_2 = L2_2.weapon_up_view
        L3_2 = L2_2
        L2_2 = L2_2.RefreshAllShownItem
        L2_2(L3_2)
        L2_2 = A0_2._binder
        L2_2 = L2_2.weapon_up_view
        L3_2 = L2_2
        L2_2 = L2_2.PlayFadeIn
        L2_2(L3_2)
        L3_2 = A0_2
        L2_2 = A0_2._trigger_tutorial
        L2_2(L3_2)
        L3_2 = A0_2
        L2_2 = A0_2._init_ui_navigation
        L2_2(L3_2)
        L2_2 = A0_2._block_id
        if L2_2 ~= nil then
          L2_2 = CS
          L2_2 = L2_2.RPG
          L2_2 = L2_2.Client
          L2_2 = L2_2.GlobalVars
          L2_2 = L2_2.s_UIManager
          L3_2 = L2_2
          L2_2 = L2_2.TryUnblockFixedTime
          L4_2 = A0_2._block_id
          L2_2(L3_2, L4_2)
          A0_2._block_id = nil
        end
        A0_2._reward_fadein_finish = true
      end
    end
  elseif A1_2 == "PropFadeIn" then
    L3_2 = A0_2
    L2_2 = A0_2._setup_prop_view
    L2_2(L3_2)
  end
end
L0_1._on_ui_animation_event = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 1
  L2_2 = A0_2._weapon_up_panels
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._weapon_up_panels
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.try_change_to_forge
    L5_2(L6_2)
  end
end
L0_1._on_weapon_up_view_fadein_end = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.set_battle_pause
  L2_2 = false
  L1_2(L2_2)
end
L0_1._on_dispose = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L6_2 = A0_2
    L5_2 = A0_2.get_navigation_target
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._on_enter_zoom = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.weapon_up_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = L1_2.UserObjectData
    if L2_2 then
      L2_2 = L1_2.UserObjectData
      L3_2 = L2_2
      L2_2 = L2_2.get_navigation_btn
      L2_2 = L2_2(L3_2)
      L2_2 = L2_2.gameObject
      return L2_2
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L6_1
function L6_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = true
    return L2_2
  end
end
L0_1._is_can_to_zoom = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L6_1
return L0_1
