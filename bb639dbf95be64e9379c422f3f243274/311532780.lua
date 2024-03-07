local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Challenge.Entrance.ChallengeDetailPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarMainPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.MonsterTipsDialog"
L0_1(L1_1)
L0_1 = 4
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.TeamModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.ChallengeModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.FeatureSwitchModule
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "ChallengeDetailPage"
L6_1 = G
L6_1 = L6_1.UIController
L4_1 = L4_1(L5_1, L6_1)
L4_1._textid_start_schedule = "ChallengeMaze_Start_repeat"
L4_1._textid_start_once = "ChallengeMaze_Start_onceonly"
L4_1._textid_all_team_empty = "UIText_Challenge_Team_Toast_Empty"
L4_1._textid_any_team_empty = "UIText_Challenge_Team_Toast_AtLeastOne"
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.GlobalVars
L5_1 = L5_1.s_ModuleManager
L5_1 = L5_1.AvatarModule
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = G
  L3_2 = L3_2.ImportCsToLua
  L3_2 = L3_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L3_2
  L3_2 = G
  L3_2 = L3_2.ImportCsToLua
  L3_2 = L3_2.TransitionStyle_AboveBlack
  A0_2._transition_style = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._create_binder
  L5_2 = G
  L5_2 = L5_2.ChallengeDetailPageBinder
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._binder = L3_2
  L4_2 = A0_2
  L3_2 = A0_2.fetch_ui3d
  L5_2 = G
  L5_2 = L5_2.ChallengeSelectUI3DPage
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._challenge_select_ui3d = L3_2
  A0_2._pause_game = true
  L3_2 = {}
  L4_2 = NavigationZoneType
  L4_2 = L4_2.Zone1
  L3_2[1] = L4_2
  A0_2.listen_zooms = L3_2
end
L4_1.ctor = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = L2_1
  L4_2 = L3_2
  L3_2 = L3_2.GetChallengeData
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._challenge_data = L3_2
  A0_2._index = A2_2
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetExtraTeam
  L5_2 = CS
  L5_2 = L5_2.DEAEDMGDDHH
  L5_2 = L5_2.GIKNECLHJND
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._first_team_data = L3_2
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetExtraTeam
  L5_2 = CS
  L5_2 = L5_2.DEAEDMGDDHH
  L5_2 = L5_2.FENMCOIKKHF
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._second_team_data = L3_2
  L3_2 = L2_1
  L4_2 = L3_2
  L3_2 = L3_2.GetChallengeLineupSaveData
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._lineup_save_data = L3_2
  L3_2 = A0_2._lineup_save_data
  if L3_2 ~= nil then
    L3_2 = A0_2._lineup_save_data
    L3_2 = L3_2.AvatarList1
    A0_2._first_avatar_id_list = L3_2
    L3_2 = A0_2._challenge_data
    if L3_2 ~= nil then
      L3_2 = A0_2._challenge_data
      L3_2 = L3_2.StageNum
      if 1 < L3_2 then
        L3_2 = A0_2._lineup_save_data
        L3_2 = L3_2.AvatarList2
        A0_2._second_avatar_id_list = L3_2
      end
    end
  end
end
L4_1.init = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 32
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._exit_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_start
  L4_2 = A0_2._on_btn_start
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_avatar_detail
  L4_2 = A0_2._on_btn_avatar_detail
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_gamepad_switch_select
  L4_2 = A0_2._on_gamepad_switch_select
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_gamepad_show_tip
  L4_2 = A0_2._on_gamepad_show_tip
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_switch_team
  L4_2 = A0_2._on_btn_switch_team
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_clear_team
  L4_2 = A0_2._on_btn_clear_team
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_gamepad_switch_team
  L4_2 = A0_2._on_btn_switch_team
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_gamepad_clear_team
  L4_2 = A0_2._on_btn_clear_team
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_lineup_bar_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_monster_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_monster_bar_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_scroll_rect
  L1_2(L2_2)
end
L4_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._cur_lineup_bar_panel = nil
  A0_2._lineup_bar_panels = nil
  L1_2 = pairs
  L2_2 = A0_2._monster_bar_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.dispose
    L6_2(L7_2)
  end
  A0_2._monster_bar_panels = nil
  A0_2._challenge_data = nil
  A0_2._index = nil
  A0_2._first_team_data = nil
  A0_2._second_team_data = nil
  L1_2 = A0_2._challenge_select_ui3d
  if L1_2 ~= nil then
    L1_2 = A0_2._challenge_select_ui3d
    L2_2 = L1_2
    L1_2 = L1_2.show_world_map_camera
    L1_2(L2_2)
  end
end
L4_1._on_dispose = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_layout_group
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_avatar_select_panel
  L1_2(L2_2)
  L1_2 = A0_2._challenge_data
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._check_in_schedule
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_bg
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_desc
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_stage_num
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_monster_bar_panel
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_challenge_target
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_open_status
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_btn_start
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_auto_skip_tips
    L1_2(L2_2)
  end
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.rect_transform_content
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L2_2 = L1_2
  L1_2 = L1_2.SetVerticalScrollPercent
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.rect_transform_scroll_rect
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_start_status
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_edit_click
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_challenge_target
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_gamepad_btns
  L1_2(L2_2)
  L1_2 = A0_2._challenge_select_ui3d
  if L1_2 ~= nil then
    L1_2 = A0_2._challenge_select_ui3d
    L2_2 = L1_2
    L1_2 = L1_2.show_detail_camera
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L4_1._setup_view = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_select_avatar
    L3_2 = L2_2
    L2_2 = L2_2.refresh_without_sort
    L2_2(L3_2)
    L2_2 = pairs
    L3_2 = A0_2._lineup_bar_panels
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L8_2 = L6_2
      L7_2 = L6_2.refresh_view
      L7_2(L8_2)
    end
  end
end
L4_1._on_view_active_change = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._challenge_data
  L1_2 = L1_2.ChallengeGroupDataRef
  L2_2 = L1_2.IsScheduleChallenge
  if L2_2 then
    L3_2 = L1_2
    L2_2 = L1_2.IsInSchedule
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L3_2 = G
      L3_2 = L3_2.SuperDebug
      L3_2 = L3_2.LogErrorFormat
      L4_2 = "\229\189\147\229\137\141\230\183\177\230\184\138\229\136\134\231\187\132\228\184\141\229\156\168\229\188\128\230\148\190\230\151\182\233\151\180\229\134\133\239\188\129\239\188\129"
      L3_2(L4_2)
      L4_2 = A0_2
      L3_2 = A0_2.exit
      L3_2(L4_2)
    end
  end
end
L4_1._check_in_schedule = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._challenge_data
  L1_2 = L1_2.StageNum
  L2_2 = 1
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._wave_monster_datas
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2[1]
    L6_2 = L6_2[1]
    L7_2 = A0_2._monster_bar_panels
    L7_2 = L7_2[L5_2]
    L8_2 = L7_2
    L7_2 = L7_2.setup_view
    L9_2 = A0_2._challenge_data
    L10_2 = L9_2
    L9_2 = L9_2.GetMonsterWeakListByStageIndex
    L11_2 = L5_2 - 1
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = L6_2.MonsterID
    L11_2 = L6_2.Level
    L7_2(L8_2, L9_2, L10_2, L11_2)
  end
end
L4_1._setup_monster_bar_panel = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = {}
  A0_2._wave_monster_datas = L1_2
  L1_2 = A0_2._challenge_data
  L1_2 = L1_2.StageNum
  L2_2 = 0
  L3_2 = L1_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = {}
    L7_2 = A0_2._challenge_data
    L8_2 = L7_2
    L7_2 = L7_2.GetEventCountByStageIndex
    L7_2 = L7_2(L8_2)
    L8_2 = 0
    L9_2 = L7_2 - 1
    L10_2 = 1
    for L11_2 = L8_2, L9_2, L10_2 do
      L12_2 = G
      L12_2 = L12_2.Utils
      L12_2 = L12_2.create_lua_table_from_cs_list
      L13_2 = A0_2._challenge_data
      L14_2 = L13_2
      L13_2 = L13_2.GetAllWaveMonsterDataByStageIndexAndEventIndex
      L15_2 = L5_2
      L16_2 = L11_2
      L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2, L15_2, L16_2)
      L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
      L13_2 = #L6_2
      L13_2 = L13_2 + 1
      L6_2[L13_2] = L12_2
    end
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._wave_monster_datas
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
  end
end
L4_1._init_monster_data = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._challenge_data
  L2_2 = L1_2
  L1_2 = L1_2.GetChallengeTargetDataList
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  A0_2._challenge_target_datas = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.challenge_target_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L4_1._get_cloned_challenge_targets
  L5_2 = A0_2._challenge_target_datas
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.challenge_target_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_history_target_data
  L4_2 = A0_2._challenge_target_datas
  L2_2(L3_2, L4_2)
end
L4_1._setup_challenge_target = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._challenge_data
  L2_2 = L1_2
  L1_2 = L1_2.GetOpenResult
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.IsOpen
  A0_2._is_open = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_start
  L3_2 = A0_2._is_open
  L2_2.interactable = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_disable_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._is_open
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_array
  L3_2 = L1_2.Params
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_disable_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L1_2.DisableHintTextID
  L6_2 = unpack
  L7_2 = L2_2
  L6_2, L7_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L4_1._setup_open_status = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._challenge_data
  L1_2 = L1_2.ChallengeGroupDataRef
  L1_2 = L1_2.IsScheduleChallenge
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_start
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L4_1._textid_start_schedule
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_start
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L4_1._textid_start_once
    L1_2(L2_2, L3_2)
  end
end
L4_1._setup_btn_start = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_auto_skip_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ChallengeUtils
  L3_2 = L3_2.CanTriggerChallengeAutoSettle
  L4_2 = A0_2._challenge_data
  L4_2 = L4_2.ID
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L4_1._setup_auto_skip_tips = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.RemoveAllListeners
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 ~= nil then
      L0_3 = A0_2._is_scroll_rect_init
      if not L0_3 then
        goto lbl_8
      end
    end
    do return end
    ::lbl_8::
    L0_3 = A0_2._binder
    L0_3 = L0_3.scroll_bar
    L0_3 = L0_3.gameObject
    L0_3 = L0_3.activeSelf
    if L0_3 then
      L1_3 = A0_2._binder
      L1_3 = L1_3.scroll_rect
      L2_3 = CS
      L2_3 = L2_3.UnityEngine
      L2_3 = L2_3.UI
      L2_3 = L2_3.ScrollRect
      L2_3 = L2_3.MovementType
      L2_3 = L2_3.Elastic
      L1_3.movementType = L2_3
    else
      L1_3 = A0_2._binder
      L1_3 = L1_3.scroll_rect
      L2_3 = CS
      L2_3 = L2_3.UnityEngine
      L2_3 = L2_3.UI
      L2_3 = L2_3.ScrollRect
      L2_3 = L2_3.MovementType
      L2_3 = L2_3.Clamped
      L1_3.movementType = L2_3
    end
    A0_2._is_scroll_rect_init = true
  end
  L1_2(L2_2, L3_2)
end
L4_1._init_scroll_rect = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_open
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_start
  L2_2 = A0_2._is_open
  L1_2.interactable = L2_2
end
L4_1._refresh_start_status = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._challenge_data
  if L1_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = 1
  L2_2 = A0_2._challenge_data
  L2_2 = L2_2.StageNum
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._lineup_bar_panels
    L5_2 = L5_2[L4_2]
    if L5_2 ~= nil then
      L7_2 = L5_2
      L6_2 = L5_2.is_empty
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = false
        return L6_2
      end
    end
  end
  L1_2 = true
  return L1_2
end
L4_1._is_all_lineup_not_empty = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.challenge_target_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh_by_avatar_data
  L4_2 = A0_2
  L3_2 = A0_2._get_avatars_in_all_team
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L4_1._refresh_challenge_target_with_team_data = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.register_click_item_callback
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_select_avatar
    L3_3 = A0_2._binder
    L3_3 = L3_3.panel_select_avatar
    L4_3 = L3_3
    L3_3 = L3_3.get_selected_avatars_in_cur_team
    L3_3 = L3_3(L4_3)
    L4_3 = A0_3
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._refresh_select_panel
    L1_3(L2_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._refresh_start_status
    L1_3(L2_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.register_click_blocked_item_callback
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._remove_avatar
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._refresh_select_panel
    L1_3(L2_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._refresh_start_status
    L1_3(L2_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cur_lineup_bar_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_team
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._cur_lineup_bar_panel
  L3_2 = L2_2
  L2_2 = L2_2.get_avatars
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._get_other_teams
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_select_avatar
  L5_2 = L4_2
  L4_2 = L4_2.init
  L6_2 = L1_2
  L7_2 = L2_2
  L8_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L4_1._init_avatar_select_panel = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  A0_2._lineup_bar_panels = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.lineup_bar_panel
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2._first_team_data
  L4_2 = A0_2._first_avatar_id_list
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.lineup_bar_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_slot_click
  L3_2 = A0_2
  L4_2 = A0_2._on_slot_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.lineup_bar_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_edit_click
  L3_2 = A0_2
  L4_2 = A0_2._on_edit_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.lineup_bar_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_bar_selected
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2._lineup_bar_panels
  L3_2 = A0_2._binder
  L3_2 = L3_2.lineup_bar_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.lineup_bar_panel_second
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2._second_team_data
  L4_2 = A0_2._second_avatar_id_list
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.lineup_bar_panel_second
  L2_2 = L1_2
  L1_2 = L1_2.bind_slot_click
  L3_2 = A0_2
  L4_2 = A0_2._on_slot_click_second
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.lineup_bar_panel_second
  L2_2 = L1_2
  L1_2 = L1_2.bind_edit_click
  L3_2 = A0_2
  L4_2 = A0_2._on_edit_click_second
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.lineup_bar_panel_second
  L2_2 = L1_2
  L1_2 = L1_2.set_bar_selected
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2._lineup_bar_panels
  L3_2 = A0_2._binder
  L3_2 = L3_2.lineup_bar_panel_second
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._lineup_bar_panels
  L1_2 = L1_2[1]
  A0_2._cur_lineup_bar_panel = L1_2
end
L4_1._init_lineup_bar_panel = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._monster_bar_panels = L1_2
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2._monster_bar_panels
  L3_2 = A0_2._binder
  L3_2 = L3_2.monster_bar_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._challenge_data
  L1_2 = L1_2.StageNum
  if 1 < L1_2 then
    L1_2 = table
    L1_2 = L1_2.insert
    L2_2 = A0_2._monster_bar_panels
    L3_2 = A0_2._binder
    L3_2 = L3_2.monster_bar_panel_second
    L1_2(L2_2, L3_2)
  end
  L1_2 = ipairs
  L2_2 = A0_2._monster_bar_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.register_detail_btn_callback
    L8_2 = A0_2
    function L9_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._preview_monster
      L2_3 = L4_2
      L0_3(L1_3, L2_3)
    end
    L6_2(L7_2, L8_2, L9_2)
  end
end
L4_1._init_monster_bar_panel = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  L3_2 = A0_2._wave_monster_datas
  L3_2 = L3_2[A1_2]
  L4_2 = ipairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = #L2_2
    L9_2 = L9_2 + 1
    L10_2 = L8_2[1]
    L2_2[L9_2] = L10_2
  end
  L4_2 = G
  L4_2 = L4_2.new
  L5_2 = G
  L5_2 = L5_2.MonsterTipsDialog
  L4_2 = L4_2(L5_2)
  L6_2 = L4_2
  L5_2 = L4_2.init_by_challenge
  L7_2 = L3_2
  L8_2 = L2_2
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.async_show
  L5_2(L6_2)
end
L4_1._preview_monster = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._cur_lineup_bar_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_challenge_target_with_team_data
  L3_2(L4_2)
end
L4_1._on_select_avatar = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._challenge_data
  L1_2 = L1_2.ChallengeGroupDataRef
  L1_2 = L1_2.IsScheduleChallenge
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_bg_once_image
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
end
L4_1._setup_bg = L6_1
function L6_1(A0_2)
  local L1_2
end
L4_1._setup_challenge_info = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._challenge_data
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._challenge_data
  L2_2 = L1_2
  L1_2 = L1_2.GetBattleEventRow
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.create_lua_table_from_cs_array
    L3_2 = L1_2.ParamList
    L2_2 = L2_2(L3_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_desc
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L1_2.DescrptionText
    L6_2 = unpack
    L7_2 = L2_2
    L6_2, L7_2 = L6_2(L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L4_1._setup_desc = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_team2
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._challenge_data
  L3_2 = L3_2.StageNum
  L3_2 = 1 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.set_show_team_index
  L3_2 = A0_2._challenge_data
  L3_2 = L3_2.StageNum
  L3_2 = 1 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.team1_in_control_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._challenge_data
  L3_2 = L3_2.StageNum
  L3_2 = 1 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.team1_in_control_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._challenge_data
  L3_2 = L3_2.StageNum
  L3_2 = 1 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_switch_team
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._challenge_data
  L3_2 = L3_2.StageNum
  L3_2 = 1 < L3_2
  L1_2(L2_2, L3_2)
end
L4_1._setup_stage_num = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.set_teams
  L4_2 = A0_2
  L3_2 = A0_2._get_cur_team
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._get_other_teams
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._cur_lineup_bar_panel
  L6_2 = L5_2
  L5_2 = L5_2.get_avatars
  L5_2, L6_2 = L5_2(L6_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.set_selected_avatar_in_all_team
  L4_2 = A0_2
  L3_2 = A0_2._get_avatars_in_all_team
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L4_1._refresh_select_panel = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._switch_cur_lineup
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_select_panel
  L1_2(L2_2)
end
L4_1._on_edit_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._switch_cur_lineup
  L3_2 = 2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_select_panel
  L1_2(L2_2)
end
L4_1._on_edit_click_second = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2._switch_cur_lineup
  L5_2 = 1
  L3_2(L4_2, L5_2)
  if A2_2 ~= nil then
    L3_2 = A0_2._cur_lineup_bar_panel
    L4_2 = L3_2
    L3_2 = L3_2.remove_avatar_by_index
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._refresh_start_status
    L3_2(L4_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh_select_panel
  L3_2(L4_2)
end
L4_1._on_slot_click = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2._switch_cur_lineup
  L5_2 = 2
  L3_2(L4_2, L5_2)
  if A2_2 ~= nil then
    L3_2 = A0_2._cur_lineup_bar_panel
    L4_2 = L3_2
    L3_2 = L3_2.remove_avatar_by_index
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._refresh_start_status
    L3_2(L4_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh_select_panel
  L3_2(L4_2)
end
L4_1._on_slot_click_second = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cur_lineup_bar_panel
  if L2_2 then
    L2_2 = A0_2._cur_lineup_bar_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_bar_selected
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._lineup_bar_panels
  L2_2 = L2_2[A1_2]
  A0_2._cur_lineup_bar_panel = L2_2
  L2_2 = A0_2._cur_lineup_bar_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_bar_selected
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L4_1._switch_cur_lineup = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_edit_team_data
  L3_2 = A0_2._cur_lineup_bar_panel
  return L1_2(L2_2, L3_2)
end
L4_1._get_cur_team = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2._lineup_bar_panels
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 ~= nil then
      L7_2 = A0_2._cur_lineup_bar_panel
      if L6_2 ~= L7_2 then
        L8_2 = A0_2
        L7_2 = A0_2._create_edit_team_data
        L9_2 = L6_2
        L7_2 = L7_2(L8_2, L9_2)
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = L1_2
        L10_2 = L7_2
        L8_2(L9_2, L10_2)
      end
    end
  end
  return L1_2
end
L4_1._get_other_teams = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2._lineup_bar_panels
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 ~= nil then
      L8_2 = A0_2
      L7_2 = A0_2._create_edit_team_data
      L9_2 = L6_2
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  return L1_2
end
L4_1._get_all_teams = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = {}
  L4_2 = A1_2
  L3_2 = A1_2.get_team
  L3_2 = L3_2(L4_2)
  L2_2.teamData = L3_2
  L3_2 = {}
  L2_2.avatars = L3_2
  L4_2 = A1_2
  L3_2 = A1_2.get_avatars
  L3_2 = L3_2(L4_2)
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    if L8_2 ~= nil then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L2_2.avatars
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  end
  return L2_2
end
L4_1._create_edit_team_data = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = pairs
  L3_2 = A0_2._lineup_bar_panels
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 ~= nil then
      L7_2 = L4_1.index_of_item
      L9_2 = L6_2
      L8_2 = L6_2.get_avatars
      L8_2 = L8_2(L9_2)
      L9_2 = A1_2
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 ~= nil then
        L9_2 = L6_2
        L8_2 = L6_2.remove_avatar_by_index
        L10_2 = L7_2
        L8_2(L9_2, L10_2)
        return
      end
    end
  end
end
L4_1._remove_avatar = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 == A1_2 then
      return L5_2
    end
  end
  L2_2 = nil
  return L2_2
end
L4_1.index_of_item = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2._lineup_bar_panels
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 ~= nil then
      L8_2 = L6_2
      L7_2 = L6_2.get_avatars
      L7_2 = L7_2(L8_2)
      L8_2 = pairs
      L9_2 = L7_2
      L8_2, L9_2, L10_2 = L8_2(L9_2)
      for L11_2, L12_2 in L8_2, L9_2, L10_2 do
        if L12_2 ~= nil then
          L13_2 = table
          L13_2 = L13_2.insert
          L14_2 = L1_2
          L15_2 = L12_2
          L13_2(L14_2, L15_2)
        end
      end
    end
  end
  return L1_2
end
L4_1._get_avatars_in_all_team = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L4_1._exit_page = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.IsFeatureClosed
  L3_2 = CS
  L3_2 = L3_2.NPLIJJDOLJK
  L3_2 = L3_2.OEBEMCLDNHO
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = L3_1
    L2_2 = L1_2
    L1_2 = L1_2.IsFeaturePartialClosed
    L3_2 = CS
    L3_2 = L3_2.NPLIJJDOLJK
    L3_2 = L3_2.OEBEMCLDNHO
    L4_2 = A0_2._challenge_data
    L4_2 = L4_2.ID
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    if not L1_2 then
      goto lbl_32
    end
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowOkHint
  L2_2 = "UIText_Toast_System_Off_Tips_1"
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TextID
  L3_2 = L3_2.empty
  L1_2(L2_2, L3_2)
  do return end
  ::lbl_32::
  L2_2 = A0_2
  L1_2 = A0_2._is_all_lineup_not_empty
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = L4_1._textid_any_team_empty
    L1_2(L2_2, L3_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_save_team
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.HPBHNDLOPNC
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChallengeModule
  L2_2 = L1_2
  L1_2 = L1_2.EnterChallenge
  L3_2 = A0_2._challenge_data
  L3_2 = L3_2.ID
  L1_2(L2_2, L3_2)
end
L4_1._on_btn_start = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = "Ui.Avatar.ChallengeTeamInfoProvider"
  L4_2 = A0_2
  L3_2 = A0_2._get_all_teams
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = L1_2
  L2_2 = L1_2.get_avatars_in_team
  L2_2 = L2_2(L3_2)
  L3_2 = nil
  if L2_2 ~= nil then
    L3_2 = L2_2[1]
  end
  L4_2 = G
  L4_2 = L4_2.UIManager
  L4_2 = L4_2.load_and_async_show
  L5_2 = G
  L5_2 = L5_2.AvatarMainPage
  L6_2 = nil
  L7_2 = nil
  L8_2 = L1_2
  L9_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L4_1._on_btn_avatar_detail = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == 1 then
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.GetExtraTeam
    L4_2 = CS
    L4_2 = L4_2.DEAEDMGDDHH
    L4_2 = L4_2.GIKNECLHJND
    return L2_2(L3_2, L4_2)
  end
  if A1_2 == 2 then
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.GetExtraTeam
    L4_2 = CS
    L4_2 = L4_2.DEAEDMGDDHH
    L4_2 = L4_2.FENMCOIKKHF
    return L2_2(L3_2, L4_2)
  end
end
L4_1._get_team_lineup = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2._lineup_bar_panels
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.get_avatars
    L7_2 = L7_2(L8_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = L4_1._gen_avatar_id_list
    L11_2 = L7_2
    L10_2, L11_2 = L10_2(L11_2)
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = A0_2._challenge_data
    if L8_2 then
      L8_2 = A0_2._challenge_data
      L8_2 = L8_2.StageNum
      if L5_2 <= L8_2 then
        L8_2 = L4_1._save_team
        L10_2 = A0_2
        L9_2 = A0_2._get_team_lineup
        L11_2 = L5_2
        L9_2 = L9_2(L10_2, L11_2)
        L10_2 = L4_1._gen_avatar_list
        L11_2 = L7_2
        L10_2, L11_2 = L10_2(L11_2)
        L8_2(L9_2, L10_2, L11_2)
      end
    end
  end
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.SaveLineupSaveData
  L4_2 = A0_2._challenge_data
  L4_2 = L4_2.ID
  L5_2 = L1_2[1]
  L6_2 = L1_2[2]
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L4_1._on_btn_save_team = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.AvatarData
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L2_2 = 1
  L3_2 = L0_1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = L1_2
    L6_2 = L1_2.Add
    L8_2 = A0_2[L5_2]
    L6_2(L7_2, L8_2)
  end
  return L1_2
end
L4_1._gen_avatar_list = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.UInt32
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L2_2 = 1
  L3_2 = L0_1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2[L5_2]
    if L6_2 ~= nil then
      L7_2 = L1_2
      L6_2 = L1_2.Add
      L8_2 = A0_2[L5_2]
      L8_2 = L8_2.ID
      L6_2(L7_2, L8_2)
    end
  end
  return L1_2
end
L4_1._gen_avatar_id_list = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.SetTeamMember
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L4_1._save_team = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = #L1_2
    L7_2 = L7_2 + 1
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.BaseChallengeTargetData
    L8_2 = L8_2.Clone
    L9_2 = L6_2
    L8_2 = L8_2(L9_2)
    L1_2[L7_2] = L8_2
  end
  return L1_2
end
L4_1._get_cloned_challenge_targets = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_lineup_bar_panel
  L2_2 = A0_2._lineup_bar_panels
  L2_2 = L2_2[1]
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_edit_click_second
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._on_edit_click
    L1_2(L2_2)
  end
end
L4_1._on_gamepad_switch_select = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_lineup_bar_panel
  L2_2 = A0_2._lineup_bar_panels
  L2_2 = L2_2[1]
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._preview_monster
    L3_2 = 1
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._preview_monster
    L3_2 = 2
    L1_2(L2_2, L3_2)
  end
end
L4_1._on_gamepad_show_tip = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._has_multi_teams
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._is_all_team_empty
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = L4_1._textid_all_team_empty
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._lineup_bar_panels
  L1_2 = L1_2[1]
  L2_2 = A0_2._lineup_bar_panels
  L2_2 = L2_2[2]
  L4_2 = L1_2
  L3_2 = L1_2.get_avatars
  L3_2 = L3_2(L4_2)
  L5_2 = L1_2
  L4_2 = L1_2.setup_view
  L7_2 = L2_2
  L6_2 = L2_2.get_avatars
  L6_2, L7_2 = L6_2(L7_2)
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = L2_2
  L4_2 = L2_2.setup_view
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_select_panel
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_start_status
  L4_2(L5_2)
end
L4_1._on_btn_switch_team = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._is_all_team_empty
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = L4_1._textid_all_team_empty
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._lineup_bar_panels
  L1_2 = L1_2[1]
  L3_2 = L1_2
  L2_2 = L1_2.setup_view
  L4_2 = {}
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._has_multi_teams
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._lineup_bar_panels
    L2_2 = L2_2[2]
    L4_2 = L2_2
    L3_2 = L2_2.setup_view
    L5_2 = {}
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_select_panel
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_start_status
  L2_2(L3_2)
end
L4_1._on_btn_clear_team = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2._challenge_data
  L1_2 = L1_2.StageNum
  L1_2 = 1 < L1_2
  return L1_2
end
L4_1._has_multi_teams = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._lineup_bar_panels
  L1_2 = L1_2[1]
  L3_2 = L1_2
  L2_2 = L1_2.is_empty
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  L3_2 = A0_2
  L2_2 = A0_2._has_multi_teams
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._lineup_bar_panels
    L2_2 = L2_2[2]
    L4_2 = L2_2
    L3_2 = L2_2.is_empty
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L3_2 = false
      return L3_2
    end
  end
  L2_2 = true
  return L2_2
end
L4_1._is_all_team_empty = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L4_1._init_ui_navigation = L6_1
function L6_1(A0_2, A1_2)
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
L4_1._on_enter_zoom = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L4_1.get_first_selected_object = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_gamepad_btns
  L2_2(L3_2)
end
L4_1._on_in_control_input_switch = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._set_gamepad_keymap_visible
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L4_1._on_enter_special_zoom = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_gamepad_keymap_visible
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L4_1._on_leave_special_zoom = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_text_switch_select
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_text_show_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_text_switch_team
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_text_clear_team
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L4_1._set_gamepad_keymap_visible = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  L2_2 = A0_2._challenge_data
  if L2_2 then
    L2_2 = A0_2._challenge_data
    L2_2 = L2_2.StageNum
    L2_2 = 1 < L2_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_switch_select
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L1_2 or L5_2
  if L1_2 then
    L5_2 = L2_2
  end
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_show_tip
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_switch_team
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L1_2 or L5_2
  if L1_2 then
    L5_2 = L2_2
  end
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_clear_team
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_switch_team
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L1_2 and L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_clear_team
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L1_2
  L3_2(L4_2, L5_2)
end
L4_1._refresh_gamepad_btns = L6_1
return L4_1
