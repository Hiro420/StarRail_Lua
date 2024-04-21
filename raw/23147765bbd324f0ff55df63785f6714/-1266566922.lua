local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.Battle.Pause.BattleEvolveBuildCustomPanelBinder"
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
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.EvolveBuildUtils
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.EvolveGearType
L3_1 = L3_1.Tool
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.EvolveGearType
L4_1 = L4_1.Plugin
L5_1 = G
L5_1 = L5_1.Utils
L5_1 = L5_1.create_lua_table_from_cs_list
L6_1 = G
L6_1 = L6_1.Class
L7_1 = "BattleEvolveBuildCustomPanel"
L8_1 = G
L8_1 = L8_1.BasePanel
L6_1 = L6_1(L7_1, L8_1)
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.weapon_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_detail_panel
  L3_2 = A0_2._binder
  L3_2 = L3_2.detail_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.accessory_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_detail_panel
  L3_2 = A0_2._binder
  L3_2 = L3_2.detail_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.simple_desc_btn
  L4_2 = A0_2._toggle_simple_desc
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.forge_guide_btn
  L4_2 = A0_2._open_forge_guide_dialog
  L1_2(L2_2, L3_2, L4_2)
end
L6_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = L1_2
  L1_2 = L1_2.GetEvolveBuildSelectGearShortDesc
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.simple_desc_btn
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._get_gear_manager
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_coin_num
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_team_level
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = L2_1.GetSortedEvolveBuildGearEquipInfo
  L3_2 = L3_2()
  L5_2 = A0_2
  L4_2 = A0_2._setup_gear_view
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.EvolveBuildModule
  L4_2 = L4_2.LevelInstance
  L6_2 = A0_2
  L5_2 = A0_2._setup_progress_panel
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  if L4_2 ~= nil then
    L5_2 = L1_1
    L6_2 = L5_2
    L5_2 = L5_2.GetStage
    L7_2 = L4_2.LevelID
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      goto lbl_45
    end
  end
  L5_2 = nil
  ::lbl_45::
  if L5_2 ~= nil then
    L6_2 = A0_2._binder
    L6_2 = L6_2.stage_name
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetTextID
    L8_2 = L5_2.Name
    L6_2(L7_2, L8_2)
    L7_2 = A0_2
    L6_2 = A0_2._setup_team_bonus
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L7_2 = A0_2
    L6_2 = A0_2._do_tutorial_hide
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L6_1.setup_view = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A1_2 == nil then
    return
  end
  L2_2 = L5_1
  L3_2 = A1_2.StagePeriodIDList
  L2_2 = L2_2(L3_2)
  L3_2 = A1_2.StagePeriodType
  L3_2 = #L3_2
  L4_2 = G
  L4_2 = L4_2.ActivityEvolveBuildUtils
  L4_2 = L4_2.get_cur_period_count
  L4_2 = L4_2()
  L5_2 = G
  L5_2 = L5_2.ActivityEvolveBuildUtils
  L5_2 = L5_2.ProgressState
  L5_2 = L5_2.Doing
  L6_2 = A0_2._binder
  L6_2 = L6_2.progress_panel
  L7_2 = L6_2
  L6_2 = L6_2.setup_view
  L8_2 = L2_2
  L9_2 = L3_2
  L10_2 = L4_2
  L11_2 = L5_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
end
L6_1._setup_progress_panel = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if A1_2 == nil then
    return
  end
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.weapon_panel
    L1_3 = L0_3
    L0_3 = L0_3.clear_checked_btns
    L0_3(L1_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.accessory_panel
    L1_3 = L0_3
    L0_3 = L0_3.clear_checked_btns
    L0_3(L1_3)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.weapon_panel
  L4_2 = L3_2
  L3_2 = L3_2.register_btn_click_callback
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.accessory_panel
  L4_2 = L3_2
  L3_2 = L3_2.register_btn_click_callback
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.weapon_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L3_1
  L6_2 = L5_1
  L7_2 = A1_2.WeaponList
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.accessory_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L4_1
  L6_2 = L5_1
  L7_2 = A1_2.AccessoryList
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L3_2 = A1_2.WeaponList
  L3_2 = L3_2.Count
  if 0 < L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.detail_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = A1_2.WeaponList
    L5_2 = L5_2[0]
    L5_2 = L5_2.GearConfig
    L3_2(L4_2, L5_2)
  else
    L3_2 = A1_2.AccessoryList
    L3_2 = L3_2.Count
    if 0 < L3_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.detail_panel
      L4_2 = L3_2
      L3_2 = L3_2.setup_view
      L5_2 = A1_2.AccessoryList
      L5_2 = L5_2[0]
      L5_2 = L5_2.GearConfig
      L3_2(L4_2, L5_2)
    else
      L3_2 = A0_2._binder
      L3_2 = L3_2.detail_panel
      L4_2 = L3_2
      L3_2 = L3_2.setup_empty
      L5_2 = L3_1
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = {}
  L4_2 = ipairs
  L5_2 = A0_2._binder
  L5_2 = L5_2.weapon_panel
  L6_2 = L5_2
  L5_2 = L5_2.get_slot_panels
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2(L6_2)
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L3_2
    L12_2 = L8_2
    L11_2 = L8_2.get_navigation_btn
    L11_2, L12_2 = L11_2(L12_2)
    L9_2(L10_2, L11_2, L12_2)
  end
  L4_2 = ipairs
  L5_2 = A0_2._binder
  L5_2 = L5_2.accessory_panel
  L6_2 = L5_2
  L5_2 = L5_2.get_slot_panels
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2(L6_2)
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L3_2
    L12_2 = L8_2
    L11_2 = L8_2.get_navigation_btn
    L11_2, L12_2 = L11_2(L12_2)
    L9_2(L10_2, L11_2, L12_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2.setup_navigation
  L6_2 = L3_2
  L7_2 = NavigationType
  L7_2 = L7_2.Horizontal
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2.set_navigation_target
  L7_2 = A0_2
  L6_2 = A0_2.get_first_selected_object
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2(L7_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.weapon_panel
  L5_2 = L4_2
  L4_2 = L4_2.get_slot_panels
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2[1]
  if L4_2 then
    L6_2 = L4_2
    L5_2 = L4_2._on_btn_root
    L5_2(L6_2)
  end
end
L6_1._setup_gear_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.weapon_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_slot_panels
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2[1]
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.get_navigation_btn
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2.gameObject
    if L2_2 then
      goto lbl_14
    end
  end
  L2_2 = nil
  ::lbl_14::
  return L2_2
end
L6_1.get_first_selected_object = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.BattleInstanceRef
    if L2_2 ~= nil then
      goto lbl_15
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_15::
  L2_2 = L1_2.BattleInstanceRef
  L2_2 = L2_2.TurnBasedGameModeRef
  L2_2 = L2_2.EvolveBuildGearManager
  return L2_2
end
L6_1._get_gear_manager = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == nil then
    return
  end
  L3_2 = A1_2
  L2_2 = A1_2.GetProperty
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.EvolveBuildPropertyType
  L4_2 = L4_2.Coin
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.FixPoint
  L3_2 = L3_2.RoundToInt
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L2_2 = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.coin_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L6_1._setup_coin_num = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == nil then
    return
  end
  L3_2 = A1_2
  L2_2 = A1_2.GetProperty
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.EvolveBuildPropertyType
  L4_2 = L4_2.CurExpStep
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.FixPoint
  L3_2 = L3_2.RoundToInt
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L2_2 = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.team_level
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L6_1._setup_team_level = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.team_bonus_icon
  L5_2 = A1_2.TeamBonusIconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.team_bonus_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.TeamBonusShortDesc
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L3_2 = L2_2.BattleInstanceRef
  L3_2 = L3_2.GameWorldRef
  L3_2 = L3_2.EntityManagerRef
  L3_2 = L3_2.LevelEntity
  L5_2 = L3_2
  L4_2 = L3_2.GetComponent
  L6_2 = typeof
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.LevelDataComponent
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = L4_2
  L5_2 = L4_2.EvaluateStageMazeBuffDescParam
  L7_2 = A1_2.TeamBonusMazeBuffID
  L8_2 = 1
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.team_bonus_num
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetTextID
  L8_2 = A1_2.TeamBonusNumFormat
  L9_2 = G
  L9_2 = L9_2.UITextUtils
  L9_2 = L9_2.GetSkillParams
  L10_2 = L5_2
  L9_2, L10_2 = L9_2(L10_2)
  L6_2(L7_2, L8_2, L9_2, L10_2)
end
L6_1._setup_team_bonus = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A1_2.ID
    L3_2 = L0_1.TutorialStageID
    if L2_2 == L3_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.coin_panel
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
    end
  end
end
L6_1._do_tutorial_hide = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = L1_2
  L1_2 = L1_2.GetEvolveBuildSelectGearShortDesc
  L1_2 = L1_2(L2_2)
  L2_2 = not L1_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.User
  L4_2 = L3_2
  L3_2 = L3_2.SetEvolveBuildSelectGearShortDesc
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.ForceSave
  L3_2()
  L3_2 = A0_2._binder
  L3_2 = L3_2.simple_desc_btn
  L4_2 = L3_2
  L3_2 = L3_2.SetChecked
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.detail_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_buff_desc
  L3_2(L4_2)
end
L6_1._toggle_simple_desc = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Battle.ActivityEvolveBuild.Mix.BattleEvolveBuildMixPage"
  L1_2(L2_2)
end
L6_1._open_forge_guide_dialog = L7_1
return L6_1
