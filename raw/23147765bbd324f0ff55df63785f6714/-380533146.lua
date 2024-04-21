local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildLeaveDialogBinder"
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
L7_1 = "EvolveBuildLeaveDialog"
L8_1 = G
L8_1 = L8_1.UIController
L6_1 = L6_1(L7_1, L8_1)
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.EvolveBuildLeaveDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
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
L6_1.ctor = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._level_info = A1_2
  L2_2 = A1_2.BattleInfo
  A0_2._battle_info = L2_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetStage
  L4_2 = A1_2.BattleInfo
  L4_2 = L4_2.CurLevelId
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._stage = L2_2
end
L6_1.init = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.close_btn
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.continue_btn
  L4_2 = A0_2._continue_battle
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.giveup_btn
  L4_2 = A0_2._giveup_battle
  L1_2(L2_2, L3_2, L4_2)
end
L6_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.stage_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._stage
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._stage
  L1_2 = L1_2.ID
  L2_2 = L0_1.TutorialStageID
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._do_tutorial_hide
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_team_bonus
  L3_2 = A0_2._battle_info
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_progress_panel
  L3_2 = A0_2._battle_info
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_gear_panel
  L3_2 = A0_2._battle_info
  L1_2(L2_2, L3_2)
  L1_2 = L5_1
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.ProtoAvatars2Avatars
  L4_2 = A0_2._level_info
  L4_2 = L4_2.AvatarList
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_team_members
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_enter_zoom
  L4_2 = NavigationZoneType
  L4_2 = L4_2.Zone1
  L2_2(L3_2, L4_2)
end
L6_1._setup_view = L7_1
function L7_1(A0_2)
  local L1_2
end
L6_1._on_dispose = L7_1
function L7_1(A0_2, A1_2)
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
L6_1._on_enter_zoom = L7_1
function L7_1(A0_2)
  local L1_2
end
L6_1._on_enter_special_zoom = L7_1
function L7_1(A0_2)
  local L1_2
end
L6_1._on_leave_special_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.giveup_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L6_1._do_tutorial_hide = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A1_2 == nil then
    return
  end
  L2_2 = A1_2.CurExp
  L3_2 = L2_1.GetBattleExpStep
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.team_level
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.GetStage
  L6_2 = A1_2.CurLevelId
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 == nil then
    return
  end
  L6_2 = A0_2
  L5_2 = A0_2.async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.team_bonus_icon
  L8_2 = L4_2.TeamBonusIconPath
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.team_bonus_desc
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L4_2.TeamBonusShortDesc
  L5_2(L6_2, L7_2)
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.CalcTeamBonusBuffParam
  L7_2 = L4_2.TeamBonusMazeBuff
  L8_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.team_bonus_num
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetTextID
  L8_2 = L4_2.TeamBonusNumFormat
  L9_2 = L5_2
  L10_2 = L5_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
end
L6_1._setup_team_bonus = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  if A1_2 == nil then
    return
  end
  L2_2 = A1_2.WeaponSlotList
  L2_2 = L2_2.Count
  L3_2 = A1_2.AccessorySlotList
  L3_2 = L3_2.Count
  L4_2 = L2_2
  L5_2 = L3_2
  L6_2 = L2_1.SlotInfos2GearEquipInfos
  L7_2 = A1_2.WeaponSlotList
  L6_2 = L6_2(L7_2)
  L7_2 = L2_1.SlotInfos2GearEquipInfos
  L8_2 = A1_2.AccessorySlotList
  L7_2 = L7_2(L8_2)
  L8_2 = L2_1.GetSortedGearEquipInfo
  L9_2 = L6_2
  L10_2 = L7_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = A0_2._binder
  L9_2 = L9_2.weapon_panel
  L10_2 = L9_2
  L9_2 = L9_2.set_level_text_color
  L11_2 = L0_1.DarkTextColor
  L9_2(L10_2, L11_2)
  L9_2 = A0_2._binder
  L9_2 = L9_2.accessory_panel
  L10_2 = L9_2
  L9_2 = L9_2.set_level_text_color
  L11_2 = L0_1.DarkTextColor
  L9_2(L10_2, L11_2)
  L9_2 = A0_2._binder
  L9_2 = L9_2.weapon_panel
  L10_2 = L9_2
  L9_2 = L9_2.set_item_interactable
  L11_2 = false
  L9_2(L10_2, L11_2)
  L9_2 = A0_2._binder
  L9_2 = L9_2.accessory_panel
  L10_2 = L9_2
  L9_2 = L9_2.set_item_interactable
  L11_2 = false
  L9_2(L10_2, L11_2)
  L9_2 = A0_2._binder
  L9_2 = L9_2.weapon_panel
  L10_2 = L9_2
  L9_2 = L9_2.setup_view
  L11_2 = L3_1
  L12_2 = L5_1
  L13_2 = L8_2.WeaponList
  L12_2 = L12_2(L13_2)
  L13_2 = L2_2
  L14_2 = L4_2
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  L9_2 = A0_2._binder
  L9_2 = L9_2.accessory_panel
  L10_2 = L9_2
  L9_2 = L9_2.setup_view
  L11_2 = L4_1
  L12_2 = L5_1
  L13_2 = L8_2.AccessoryList
  L12_2 = L12_2(L13_2)
  L13_2 = L3_2
  L14_2 = L5_2
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
end
L6_1._setup_gear_panel = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A1_2 == nil then
    return
  end
  L2_2 = L5_1
  L3_2 = A1_2.PeriodIdList
  L2_2 = L2_2(L3_2)
  L3_2 = A1_2.CurPeriod
  L4_2 = A1_2.CurWave
  L5_2 = 1
  L6_2 = L3_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.EvolveBuildStagePeriodExcelTable
    L9_2 = L9_2.GetData
    L10_2 = L2_2[L8_2]
    L9_2 = L9_2(L10_2)
    L10_2 = L9_2.WaveCount
    L4_2 = L4_2 - L10_2
  end
  L5_2 = G
  L5_2 = L5_2.ActivityEvolveBuildUtils
  L5_2 = L5_2.ProgressState
  L5_2 = L5_2.Finish
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
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = ipairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.team_members
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.setup_view_avatar_data
    L9_2 = A1_2[L5_2]
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.set_btn_interactable
    L9_2 = false
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.set_active
    L9_2 = A1_2[L5_2]
    L9_2 = L9_2 ~= nil
    L7_2(L8_2, L9_2)
  end
end
L6_1._setup_team_members = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.ContinueLevel
  L3_2 = A0_2._stage
  L3_2 = L3_2.ID
  L1_2(L2_2, L3_2)
end
L6_1._continue_battle = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.TryQuitLevel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L6_1._giveup_battle = L7_1
return L6_1
