local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildResultPageBinder"
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
L5_1 = 2
L6_1 = 3
L7_1 = G
L7_1 = L7_1.Utils
L7_1 = L7_1.create_lua_table_from_cs_list
L8_1 = G
L8_1 = L8_1.Class
L9_1 = "EvolveBuildResultPage"
L10_1 = G
L10_1 = L10_1.UIController
L8_1 = L8_1(L9_1, L10_1)
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.EvolveBuildResultPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
  A0_2._is_resp_esc = false
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
L8_1.ctor = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._level_info = A1_2
  L3_2 = A1_2.BattleInfo
  A0_2._battle_info = L3_2
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetStage
  L5_2 = A1_2.BattleInfo
  L5_2 = L5_2.CurLevelId
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._stage = L3_2
  A0_2._result_type = A2_2
end
L8_1.init = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.close_btn
  L4_2 = A0_2._return_to_maze
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.close_btn2
  L4_2 = A0_2._return_to_maze
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.arrow_right
  L4_2 = A0_2._show_stats_panel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.arrow_left
  L4_2 = A0_2._show_result_panel
  L1_2(L2_2, L3_2, L4_2)
end
L8_1._on_load = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.exp
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = "+"
  L4_2 = A0_2._level_info
  L4_2 = L4_2.CurGameExp
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.coin
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = "+"
  L4_2 = A0_2._battle_info
  L4_2 = L4_2.CurCoin
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.team_bonus_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._stage
  L3_2 = L3_2.TeamBonusShortDesc
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._stage
  L1_2 = L1_2.ID
  L2_2 = L0_1.TutorialStageID
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._do_tutorial_hide
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._setup_score_rank
    L3_2 = A0_2._level_info
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_stage_name
  L3_2 = A0_2._stage
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_result_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_team_bonus
  L3_2 = A0_2._battle_info
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_progress_panel
  L3_2 = A0_2._battle_info
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_weapon_damage_num
  L3_2 = A0_2._battle_info
  L3_2 = L3_2.GearDamageList
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_avatar_damage_num
  L3_2 = A0_2._level_info
  L3_2 = L3_2.AvatarList
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_trigger_tutorial
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L8_1._setup_view = L9_1
function L9_1(A0_2)
  local L1_2
end
L8_1._on_dispose = L9_1
function L9_1(A0_2, A1_2)
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
L8_1._on_enter_zoom = L9_1
function L9_1(A0_2)
  local L1_2
end
L8_1._on_enter_special_zoom = L9_1
function L9_1(A0_2)
  local L1_2
end
L8_1._on_leave_special_zoom = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.stage_name_1
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.Name
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.stage_name_2
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.Name
  L2_2(L3_2, L4_2)
end
L8_1._setup_stage_name = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if A1_2 == nil then
    return
  end
  L2_2 = A1_2.RoundCnt
  L3_2 = A0_2._binder
  L3_2 = L3_2.wave_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = 0
  L4_2 = 0
  L5_2 = 0
  L6_2 = A1_2.BattleTargetList
  L6_2 = L6_2.Count
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = A1_2.BattleTargetList
    L9_2 = L9_2[L8_2]
    L10_2 = L9_2.Id
    if L10_2 ~= 90009 then
      L10_2 = L9_2.Id
      if L10_2 ~= 90010 then
        goto lbl_29
      end
    end
    L10_2 = L9_2.Progress
    L3_2 = L3_2 + L10_2
    goto lbl_34
    ::lbl_29::
    L10_2 = L9_2.Id
    if L10_2 == 90011 then
      L10_2 = L9_2.Progress
      L4_2 = L4_2 + L10_2
    end
    ::lbl_34::
  end
  L5_2 = L3_2 + L4_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.score
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetText
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.base_score
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetText
  L8_2 = L3_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.wave_score
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetText
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.base_score_panel
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L4_2 ~= 0
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.wave_score_panel
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L4_2 ~= 0
  L6_2(L7_2, L8_2)
  L6_2 = A1_2.BattleInfo
  if L6_2 == nil then
    return
  end
  L7_2 = L1_1
  L8_2 = L7_2
  L7_2 = L7_2.GetStage
  L9_2 = L6_2.CurLevelId
  L7_2 = L7_2(L8_2, L9_2)
  if L7_2 == nil then
    return
  end
  L9_2 = L7_2
  L8_2 = L7_2.GetRankName
  L10_2 = L5_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = L0_1.RankIconPath
  L9_2 = L9_2[L8_2]
  L10_2 = A0_2._binder
  L10_2 = L10_2.high_score
  L11_2 = L10_2
  L10_2 = L10_2.SafeSetText
  L12_2 = L7_2.HighScore
  L10_2(L11_2, L12_2)
  L10_2 = A0_2._binder
  L10_2 = L10_2.rank_text
  L11_2 = L10_2
  L10_2 = L10_2.SafeSetText
  L12_2 = L8_2
  L10_2(L11_2, L12_2)
  L10_2 = A0_2._binder
  L10_2 = L10_2.new_record_mark
  L11_2 = L10_2
  L10_2 = L10_2.SafeSetActive
  L12_2 = L7_2.HighScore
  L12_2 = L5_2 >= L12_2
  L10_2(L11_2, L12_2)
  L11_2 = A0_2
  L10_2 = A0_2.async_load_sprite_to
  L12_2 = A0_2._binder
  L12_2 = L12_2.rank_icon
  L13_2 = L9_2
  L10_2(L11_2, L12_2, L13_2)
end
L8_1._setup_score_rank = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.rank_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.score_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.high_score_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.base_score_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.wave_score_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.coin_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.end_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.tutorial_end_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L8_1._do_tutorial_hide = L9_1
function L9_1(A0_2, A1_2)
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
L8_1._setup_team_bonus = L9_1
function L9_1(A0_2, A1_2)
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
  L12_2 = L7_1
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
  L12_2 = L7_1
  L13_2 = L8_2.AccessoryList
  L12_2 = L12_2(L13_2)
  L13_2 = L3_2
  L14_2 = L5_2
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
end
L8_1._setup_gear_panel = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A1_2 == nil then
    return
  end
  L2_2 = L7_1
  L3_2 = A1_2.PeriodIdList
  L2_2 = L2_2(L3_2)
  L3_2 = A1_2.CurPeriod
  L4_2 = A1_2.CurWave
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
L8_1._setup_progress_panel = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._damage_info_list_to_bars_data
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.bar_chart
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L8_1._setup_stats_chart = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = {}
  if A1_2 == nil then
    return L2_2
  end
  L3_2 = 0
  L4_2 = 0
  L5_2 = A1_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A1_2[L7_2]
    L9_2 = math
    L9_2 = L9_2.max
    L10_2 = L3_2
    L11_2 = L8_2.Damage
    L9_2 = L9_2(L10_2, L11_2)
    L3_2 = L9_2
  end
  L4_2 = 0
  L5_2 = A1_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A1_2[L7_2]
    L9_2 = {}
    L10_2 = L1_1
    L11_2 = L10_2
    L10_2 = L10_2.GetWeapon
    L12_2 = L8_2.GearId
    L10_2 = L10_2(L11_2, L12_2)
    L9_2.weapon = L10_2
    L10_2 = L8_2.HpDamage
    L9_2.hp_damage = L10_2
    L10_2 = L8_2.Damage
    L9_2.damage = L10_2
    L9_2.max_damage = L3_2
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L2_2
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
  L4_2 = table
  L4_2 = L4_2.sort
  L5_2 = L2_2
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.damage
    L3_3 = A1_3.damage
    L2_3 = L2_3 > L3_3
    return L2_3
  end
  L4_2(L5_2, L6_2)
  return L2_2
end
L8_1._damage_info_list_to_bars_data = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = 0
  L3_2 = 0
  L4_2 = A1_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    L7_2 = L7_2.Damage
    L2_2 = L2_2 + L7_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.weapon_damage_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L0_1.NumTextFormat
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L8_1._setup_weapon_damage_num = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = 0
  L3_2 = 0
  L4_2 = A1_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    L7_2 = L7_2.Damage
    L2_2 = L2_2 + L7_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.avatar_damage_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L0_1.NumTextFormat
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L8_1._setup_avatar_damage_num = L9_1
function L9_1(A0_2, A1_2)
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
L8_1._setup_team_members = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
  L1_2 = A0_2._stage
  L1_2.ShowNewRecordMark = false
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.ReturnToMaze
  L1_2(L2_2)
end
L8_1._return_to_maze = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.result_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.stats_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.page_dot_1
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.page_dot_2
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.arrow_left
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.arrow_right
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._stats_panel_already_shown
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.stats_panel_anim
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L1_2(L2_2)
    A0_2._stats_panel_already_shown = true
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.root_anim
    L2_2 = L1_2
    L1_2 = L1_2.Stop
    L1_2(L2_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.root_anim
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = "EvolveBuildResultDialog_Switch"
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_stats_chart
  L3_2 = A0_2._battle_info
  L3_2 = L3_2.GearDamageList
  L1_2(L2_2, L3_2)
  L1_2 = L7_1
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
end
L8_1._show_stats_panel = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.result_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.stats_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.page_dot_1
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.page_dot_2
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.arrow_left
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.arrow_right
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._stats_panel_already_shown
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.root_anim
    L2_2 = L1_2
    L1_2 = L1_2.Stop
    L1_2(L2_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.root_anim
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = "EvolveBuildResultDialog_Switch"
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_gear_panel
  L3_2 = A0_2._battle_info
  L1_2(L2_2, L3_2)
end
L8_1._show_result_panel = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._result_type
  L2_2 = L5_1
  if L1_2 == L2_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.TutorialTaskUnlock
    L3_2 = L0_1.AllAvatarDeadTutorialID
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._result_type
    L2_2 = L6_1
    if L1_2 == L2_2 then
      L1_2 = G
      L1_2 = L1_2.NotifyManager
      L1_2 = L1_2.notify
      L2_2 = G
      L2_2 = L2_2.CS
      L2_2 = L2_2.NotifyType
      L2_2 = L2_2.TutorialTaskUnlock
      L3_2 = L0_1.NoDeadLineTutorialID
      L1_2(L2_2, L3_2)
    end
  end
end
L8_1._try_trigger_tutorial = L9_1
return L8_1
