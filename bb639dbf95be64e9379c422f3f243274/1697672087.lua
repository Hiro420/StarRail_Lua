local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UIUtils.UIColorUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonBuffDetailDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonBuffTipsDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.TreasureDungeon.TreasureDungeonUI3DPage"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureDungeonMainPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.TreasureDungeonModule
L1_1 = L1_1.Instance
L2_1 = nil
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.TreasureDungeonMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.TreasureDungeonUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._ui3d_grid = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_switch_timer_end
  L4_2 = 0.7
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._switch_timer = L1_2
  A0_2._need_ultra_hint = false
  A0_2._explore_point_in_pick = false
  A0_2._explore_point_in_attack = false
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.FNDGDJPJODN
  L2_2 = L2_2.HIHOEJKKKEF
  L2_2 = #L2_2
  L3_2 = A0_2._on_add_hp
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.FNDGDJPJODN
  L2_2 = L2_2.LPACBJAJJJP
  L2_2 = #L2_2
  L3_2 = A0_2._on_sub_hp
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.FNDGDJPJODN
  L2_2 = L2_2.ICKIOFABPOD
  L2_2 = #L2_2
  L3_2 = A0_2._on_no_explore_sub_hp
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.FNDGDJPJODN
  L2_2 = L2_2.CIMAHCFONHC
  L2_2 = #L2_2
  L3_2 = A0_2._on_add_attack
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.FNDGDJPJODN
  L2_2 = L2_2.IBPODMHAJPL
  L2_2 = #L2_2
  L3_2 = A0_2._on_add_defence
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.FNDGDJPJODN
  L2_2 = L2_2.GMACKDOAHFI
  L2_2 = #L2_2
  L3_2 = A0_2._on_add_explore
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.FNDGDJPJODN
  L2_2 = L2_2.CHGHCAGLNPA
  L2_2 = #L2_2
  L3_2 = A0_2._on_add_explore_overflow
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.FNDGDJPJODN
  L2_2 = L2_2.AOLEGMEPDEJ
  L2_2 = #L2_2
  L3_2 = A0_2._on_sub_explore
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.FNDGDJPJODN
  L2_2 = L2_2.EJLKBEPCEDI
  L2_2 = #L2_2
  L3_2 = A0_2._on_summon_monster
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.FNDGDJPJODN
  L2_2 = L2_2.FPAMKEEEOKG
  L2_2 = #L2_2
  L3_2 = A0_2._on_ultra_kill_monster
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.FNDGDJPJODN
  L2_2 = L2_2.CNJIANIDNND
  L2_2 = #L2_2
  L3_2 = A0_2._on_add_trial_avatar
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.FNDGDJPJODN
  L2_2 = L2_2.AJBBCMJDLLH
  L2_2 = #L2_2
  L3_2 = A0_2._on_door_opend
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.FNDGDJPJODN
  L2_2 = L2_2.EDADENBGKMI
  L2_2 = #L2_2
  L3_2 = A0_2._on_monster_enhance
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.FNDGDJPJODN
  L2_2 = L2_2.NOCPJFEAMHA
  L2_2 = #L2_2
  L3_2 = A0_2._on_monster_weaken
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.FNDGDJPJODN
  L2_2 = L2_2.ONBPPAFIMLL
  L2_2 = #L2_2
  L3_2 = A0_2._on_monster_aura_remove
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.FNDGDJPJODN
  L2_2 = L2_2.LEBJFNDNEFP
  L2_2 = #L2_2
  L3_2 = A0_2._on_special_monster_run
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.FNDGDJPJODN
  L2_2 = L2_2.FKBOFGMDGIJ
  L2_2 = #L2_2
  L3_2 = A0_2._on_special_monster_kill
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.FNDGDJPJODN
  L2_2 = L2_2.APJAMNOGFFK
  L2_2 = #L2_2
  L3_2 = A0_2._on_battle_buff_add_explore
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.FNDGDJPJODN
  L2_2 = L2_2.CLHGIOJALOI
  L2_2 = #L2_2
  L3_2 = A0_2._on_battle_buff_open_grid
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.FNDGDJPJODN
  L2_2 = L2_2.CANGPBOMAKL
  L2_2 = #L2_2
  L3_2 = A0_2._on_battle_buff_add_item
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.FNDGDJPJODN
  L2_2 = L2_2.BMFMNMJIOBA
  L2_2 = #L2_2
  L3_2 = A0_2._on_avatar_dead
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.FNDGDJPJODN
  L2_2 = L2_2.IPJBFIMPAOP
  L2_2 = #L2_2
  L3_2 = A0_2._on_trial_avatar_dead
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.FNDGDJPJODN
  L2_2 = L2_2.DHPAHBNPDOD
  L2_2 = #L2_2
  L3_2 = A0_2._on_battle_buff_success
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.FNDGDJPJODN
  L2_2 = L2_2.CBBNMMDOAML
  L2_2 = #L2_2
  L3_2 = A0_2._on_battle_buff_fail
  L1_2[L2_2] = L3_2
  L2_1 = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L2_2 = G
    L2_2 = L2_2.ImportCsToLua
    L2_2 = L2_2.TransitionStyle_Default
    if L2_2 then
      goto lbl_11
    end
  end
  L2_2 = G
  L2_2 = L2_2.ImportCsToLua
  L2_2 = L2_2.TransitionStyle_OpenWithCut
  ::lbl_11::
  A0_2._transition_style = L2_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetTreasureDungeonLevelInstance
  L2_2 = L2_2(L3_2)
  A0_2._data = L2_2
  L2_2 = A1_2 or L2_2
  if not A1_2 then
    L2_2 = false
  end
  A0_2._is_first_enter = L2_2
  A0_2._need_fade_out = false
  A0_2._need_fade_in = false
  A0_2._need_update_map = false
  L2_2 = A0_2._is_first_enter
  A0_2._in_switch = L2_2
  L2_2 = A0_2._is_first_enter
  A0_2._need_enter_audio = L2_2
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TreasureDungeonRefresh
  L4_2 = A0_2._on_refresh_notify
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuitTreasureDungeon
  L4_2 = A0_2._on_quit_treasuredungeon
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HideLoadingPage
  L4_2 = A0_2._on_hide_loading_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_env_buff
  L4_2 = A0_2._on_btn_env_buff
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_intro
  L4_2 = A0_2._on_btn_intro
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.ultra_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_ultra_mode_changed
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._ui3d_grid
  L2_2 = L1_2
  L1_2 = L1_2.register_navigation_callback
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3.save_navigation_target
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._ui3d_grid
  L2_2 = L1_2
  L1_2 = L1_2.register_fade_in_callback
  L3_2 = A0_2._on_fade_in_end
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.GetAdventureAudioManager
    L2_2 = L2_2(L3_2)
  end
  A0_2._adv_audio_mgr = L2_2
  L2_2 = A0_2._adv_audio_mgr
  if L2_2 ~= nil then
    L2_2 = A0_2._adv_audio_mgr
    L3_2 = L2_2
    L2_2 = L2_2.SwitchUIMenuBGM
    L4_2 = "State_Menu_Season_Treasure_Dungeon"
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._adv_audio_mgr
  if L1_2 ~= nil then
    L1_2 = A0_2._adv_audio_mgr
    L2_2 = L1_2
    L1_2 = L1_2.StopUIMenuBGM
    L1_2(L2_2)
  end
end
L0_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_main_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._data
  L3_2 = L3_2.IsHard
  if L3_2 then
    L3_2 = "UIText_TreasureDungeon_Challenge_Hard"
    if L3_2 then
      goto lbl_12
    end
  end
  L3_2 = "UIText_TreasureDungeon_Challenge_Normal"
  ::lbl_12::
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_sub_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._data
  L3_2 = L3_2.GroupRow
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_hard
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.IsHard
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_grid
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_map
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_explore_point
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_floor
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_team
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_env_buff
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_buff
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_ultra
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_floor_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_menu_unlock
  L1_2(L2_2)
  L1_2 = A0_2._is_first_enter
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._try_show_env_buff_dialog
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._try_trigger_tutorial
    L3_2 = A0_2._data
    L3_2 = L3_2.RefreshParam
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._data
    L1_2 = L1_2.RefreshParam
    L2_2 = L1_2
    L1_2 = L1_2.Clear
    L1_2(L2_2)
    L1_2 = A0_2._data
    L1_2.LastInteractGridIndex = 0
    L2_2 = A0_2
    L1_2 = A0_2._on_refresh_notify
    L3_2 = A0_2._data
    L3_2 = L3_2.RefreshParam
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._on_refresh_notify
    L3_2 = A0_2._data
    L3_2 = L3_2.RefreshParam
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._ui3d_grid
  L2_2 = L1_2
  L1_2 = L1_2.set_level
  L3_2 = A0_2._data
  L1_2(L2_2, L3_2)
end
L0_1._setup_grid = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._set_in_ultra_mode
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._ui3d_grid
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._data
  L1_2(L2_2, L3_2)
  A0_2._need_fade_in = true
end
L0_1._setup_map = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._set_in_ultra_mode
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._data
  L2_2 = L2_2.RefreshParam
  L2_2 = L2_2.RefreshedGridIDs
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._ui3d_grid
  L3_2 = L2_2
  L2_2 = L2_2._try_play_changed
  L4_2 = A0_2._data
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._ui3d_grid
  L3_2 = L2_2
  L2_2 = L2_2.setup_view_on_change
  L4_2 = A0_2._data
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._refresh_map = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._switch_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = A0_2._switch_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = ipairs
  L2_2 = A0_2._ui3d_grid
  L2_2 = L2_2._panels_grid
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.set_active_light_weight
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
  A0_2._need_fade_out = false
  A0_2._need_fade_in = true
  A0_2._need_enter_audio = true
  L1_2 = A0_2._data
  if L1_2 ~= nil then
    L1_2 = A0_2._data
    L1_2 = L1_2.RefreshParam
    L1_2 = L1_2.IsGetNewEnvBuff
    if L1_2 then
      L1_2 = A0_2._data
      L1_2 = L1_2.RefreshParam
      L1_2.IsGetNewEnvBuff = false
      L2_2 = A0_2
      L1_2 = A0_2._try_show_env_buff_dialog
      L1_2(L2_2)
  end
  else
    L2_2 = A0_2
    L1_2 = A0_2._on_refresh_notify
    L3_2 = A0_2._data
    L3_2 = L3_2.RefreshParam
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_switch_timer_end = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_explore_point
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._data
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._data
  L2_2 = L2_2.RefreshParam
  L2_2.IsExplorePointUpdated = false
end
L0_1._refresh_explore_point = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_floor_count
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._data
  L3_2 = L3_2.MaxFloor
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_floor
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._data
  L3_2 = L3_2.FloorID
  L1_2(L2_2, L3_2)
end
L0_1._refresh_floor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_team
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._data
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._refresh_team = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._data
  L1_2 = L1_2.RefreshParam
  if L1_2 ~= nil then
    L1_2 = A0_2._data
    L1_2 = L1_2.RefreshParam
    L1_2 = L1_2.IsTeamUpdated
    if L1_2 then
      L1_2 = A0_2._is_first_enter
      if not L1_2 then
        return
      end
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_team
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._data
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_team = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.ultra_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._data
  L3_2 = L3_2.UltraItem
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_in_ultra_mode
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._refresh_ultra = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._data
  L1_2 = L1_2.CurrentEnvironmentBuff
  L1_2 = L1_2 ~= nil
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_env_buff
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_env_buff
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_env_buff = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_monster_detail_btn
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_wait_count
  L1_2(L2_2)
end
L0_1._refresh_floor_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_detail_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._data
  L1_2(L2_2, L3_2)
end
L0_1._refresh_monster_detail_btn = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_wait
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._data
  L3_2 = L3_2.WaitNum
  L1_2(L2_2, L3_2)
end
L0_1._refresh_wait_count = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_buff
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._data
  L1_2(L2_2, L3_2)
end
L0_1._refresh_buff = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == nil then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.IsLoading
  if L3_2 then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh_menu_unlock
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_notify_map_data
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._need_fade_out
  if not L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._try_trigger_tutorial
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2.is_top_page_or_dialog
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh_notify_map
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.is_top_page_or_dialog
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = A0_2._in_switch
    if not L3_2 then
      goto lbl_42
    end
  end
  do return end
  ::lbl_42::
  L4_2 = A0_2
  L3_2 = A0_2._refresh_notify_buff
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.is_top_page_or_dialog
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh_notify_record
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.is_top_page_or_dialog
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L3_2 = A1_2.IsExplorePointUpdated
  if L3_2 then
    L3_2 = A0_2._explore_point_in_pick
    if not L3_2 then
      L3_2 = A0_2._explore_point_in_attack
      if not L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2._refresh_explore_point
        L5_2 = true
        L3_2(L4_2, L5_2)
      end
    end
  end
  L3_2 = A1_2.IsTeamUpdated
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._refresh_team
    L3_2(L4_2)
    A1_2.IsTeamUpdated = false
  end
  L3_2 = A1_2.IsItemUpdated
  if L3_2 then
    L3_2 = A1_2.IsGetUltraItem
    if L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._play_ultra_hint
      L3_2(L4_2)
      A1_2.IsGetUltraItem = false
    else
      L4_2 = A0_2
      L3_2 = A0_2._refresh_ultra
      L3_2(L4_2)
    end
    A1_2.IsItemUpdated = false
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh_properties
  L3_2(L4_2)
end
L0_1._on_refresh_notify = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._data
  L1_2 = L1_2.CurrentEnvironmentBuff
  if L1_2 == nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.PopupQueueManager
  L2_2 = L1_2
  L1_2 = L1_2.inqueue
  L3_2 = "FullScreenToast"
  L4_2 = 1
  L5_2 = "Ui.Activity.TreasureDungeon.TreasureDungeonEnvironmentDialog"
  L6_2 = nil
  L7_2 = A0_2._data
  L7_2 = L7_2.CurrentEnvironmentBuff
  L8_2 = A0_2._data
  L8_2 = L8_2.FloorID
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._try_show_env_buff_dialog = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  if A1_2 == nil then
    return
  end
  L2_2 = A1_2.IsMapUpdated
  if L2_2 then
    L2_2 = A1_2.IsMapUpdated
    A0_2._need_update_map = L2_2
    L2_2 = A0_2._need_fade_in
    if not L2_2 then
      L2_2 = A0_2._need_fade_out
      if not L2_2 then
        L2_2 = A1_2.IsFloorUpdated
      end
      A0_2._need_fade_out = L2_2
    end
    A1_2.IsMapUpdated = false
    A1_2.IsFloorUpdated = false
  end
end
L0_1._refresh_notify_map_data = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 0
  L3_2 = A1_2.TriggeredTutorialKeys
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = G
    L6_2 = L6_2.NotifyManager
    L6_2 = L6_2.notify
    L7_2 = G
    L7_2 = L7_2.CS
    L7_2 = L7_2.NotifyType
    L7_2 = L7_2.TutorialTaskUnlock
    L8_2 = A1_2.TriggeredTutorialKeys
    L8_2 = L8_2[L5_2]
    L6_2(L7_2, L8_2)
  end
  L3_2 = A1_2
  L2_2 = A1_2.ClearTutorial
  L2_2(L3_2)
end
L0_1._try_trigger_tutorial = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._in_switch
  if not L2_2 then
    L2_2 = A0_2._need_fade_out
    if L2_2 then
      A0_2._need_fade_out = false
      A0_2._need_update_map = false
      A0_2._in_switch = true
      L2_2 = A0_2._data
      L2_2.LastBattleGridIndex = 0
      L2_2 = A0_2._ui3d_grid
      L3_2 = L2_2
      L2_2 = L2_2.play_fade_out
      L2_2(L3_2)
      L2_2 = A0_2._switch_timer
      L3_2 = L2_2
      L2_2 = L2_2.reset
      L2_2(L3_2)
      L2_2 = A0_2._switch_timer
      L3_2 = L2_2
      L2_2 = L2_2.start
      L2_2(L3_2)
  end
  else
    L2_2 = A0_2._need_fade_in
    if L2_2 then
      A0_2._need_fade_in = false
      A0_2._need_update_map = false
      L3_2 = A0_2
      L2_2 = A0_2._refresh_floor_info
      L2_2(L3_2)
      L2_2 = A0_2._ui3d_grid
      L3_2 = L2_2
      L2_2 = L2_2.setup_view
      L4_2 = A0_2._data
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._ui3d_grid
      L3_2 = L2_2
      L2_2 = L2_2.play_fade_in
      L4_2 = A0_2._in_switch
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._need_enter_audio
      if L2_2 then
        A0_2._need_enter_audio = false
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.Client
        L2_2 = L2_2.GlobalVars
        L2_2 = L2_2.s_AudioManager
        L3_2 = L2_2
        L2_2 = L2_2.PostEvent
        L4_2 = "Ev_sfx_ui_feedback_activity_TreasureDungeon_Grid_fadeIn"
        L2_2(L3_2, L4_2)
      end
      L3_2 = A0_2
      L2_2 = A0_2._refresh_floor
      L2_2(L3_2)
      L3_2 = A0_2
      L2_2 = A0_2.force_set_first_navigation_target
      L2_2(L3_2)
    else
      L2_2 = A0_2._need_update_map
      if L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2._refresh_floor_info
        L2_2(L3_2)
        L3_2 = A0_2
        L2_2 = A0_2._refresh_map
        L2_2(L3_2)
        A0_2._need_update_map = false
      end
    end
  end
end
L0_1._refresh_notify_map = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._in_switch = false
  L2_2 = A0_2
  L1_2 = A0_2._on_refresh_notify
  L3_2 = A0_2._data
  L3_2 = L3_2.RefreshParam
  L1_2(L2_2, L3_2)
end
L0_1._on_fade_in_end = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A1_2 ~= nil then
    L2_2 = A1_2.RecordData
    if L2_2 ~= nil then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L2_2 = A1_2.RecordData
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 0
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A1_2.RecordData
    L6_2 = L6_2[L5_2]
    L7_2 = A1_2.RecordData
    L8_2 = L7_2
    L7_2 = L7_2.RemoveAt
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L7_2 = L6_2.Type
    L7_2 = #L7_2
    L7_2 = L2_1[L7_2]
    if L7_2 ~= nil then
      L8_2 = L7_2
      L9_2 = A0_2
      L10_2 = L6_2
      L11_2 = A1_2
      L8_2(L9_2, L10_2, L11_2)
      L8_2 = L6_2.Type
      L9_2 = CS
      L9_2 = L9_2.FNDGDJPJODN
      L9_2 = L9_2.CNJIANIDNND
      if L8_2 == L9_2 then
        return
      end
    end
  end
  L2_2 = A1_2.RecordData
  L3_2 = L2_2
  L2_2 = L2_2.Clear
  L2_2(L3_2)
end
L0_1._refresh_notify_record = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.is_top_page_or_dialog
  L2_2 = L2_2(L3_2)
  if not L2_2 or A1_2 == nil then
    return
  end
  L2_2 = A1_2.IsBuffUpdated
  if L2_2 then
    A1_2.IsBuffUpdated = false
    L3_2 = A0_2
    L2_2 = A0_2._refresh_env_buff
    L2_2(L3_2)
    L2_2 = A0_2._data
    L2_2 = L2_2.LastInteractGridIndex
    L3_2 = A1_2.IsGetNewFloorBuff
    if L3_2 then
      A1_2.IsGetNewFloorBuff = false
      L3_2 = G
      L3_2 = L3_2.UIManager
      L3_2 = L3_2.load_and_show
      L4_2 = "Ui.Activity.TreasureDungeon.TreasureDungeonBuffSelectPage"
      L5_2 = A0_2._data
      L5_2 = L5_2.CurrentFloorBuff
      L3_2 = L3_2(L4_2, L5_2)
      L5_2 = L3_2
      L4_2 = L3_2.register_exit_callback
      function L6_2()
        local L0_3, L1_3, L2_3
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3._play_get_new_buff_hint
        L2_3 = L2_2
        L0_3(L1_3, L2_3)
      end
      L4_2(L5_2, L6_2)
    else
      L3_2 = A1_2.IsFloorBuffReplaced
      if L3_2 then
        A1_2.IsFloorBuffReplaced = false
        L4_2 = A0_2
        L3_2 = A0_2._play_get_new_buff_hint
        L5_2 = L2_2
        L3_2(L4_2, L5_2)
      else
        L4_2 = A0_2
        L3_2 = A0_2._refresh_buff
        L3_2(L4_2)
      end
    end
  end
end
L0_1._refresh_notify_buff = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  if L2_2 == nil then
    return
  end
  if A1_2 ~= nil and A1_2 ~= 0 then
    L3_2 = A0_2
    L2_2 = A0_2._try_show_grid_pick_hint
    L4_2 = A1_2
    L5_2 = A0_2._binder
    L5_2 = L5_2.panel_buff
    L6_2 = L5_2
    L5_2 = L5_2.get_position
    L5_2 = L5_2(L6_2)
    function L6_2()
      local L0_3, L1_3
      L0_3 = A0_2._binder
      if L0_3 == nil then
        return
      end
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._refresh_buff
      L0_3(L1_3)
      L0_3 = A0_2._binder
      L0_3 = L0_3.partical_buff
      L1_3 = L0_3
      L0_3 = L0_3.Play
      L0_3(L1_3)
    end
    L2_2(L3_2, L4_2, L5_2, L6_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._refresh_buff
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.partical_buff
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L2_2(L3_2)
  end
end
L0_1._play_get_new_buff_hint = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = A0_2
  L4_2 = A0_2._get_grid_ui_position
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._try_show_pick_hint
  L7_2 = L4_2
  L8_2 = A2_2
  L9_2 = A3_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L0_1._try_show_grid_pick_hint = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  if A1_2 == nil then
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.invoke_callback
    L5_2 = A3_2
    L4_2(L5_2)
    return
  end
  L4_2 = G
  L4_2 = L4_2.UIManager
  L4_2 = L4_2.load_and_async_show
  L5_2 = "Ui.Activity.TreasureDungeon.TreasureDungeonPickDialog"
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = L4_2.LuaTable
  L6_2 = L5_2
  L5_2 = L5_2.register_arrive_callback
  L7_2 = A3_2
  L5_2(L6_2, L7_2)
end
L0_1._try_show_pick_hint = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L5_2 = A0_2
  L4_2 = A0_2._get_grid_ui_position
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 == nil then
    L5_2 = G
    L5_2 = L5_2.Utils
    L5_2 = L5_2.invoke_callback
    L6_2 = A3_2
    L5_2(L6_2)
    return
  end
  L5_2 = G
  L5_2 = L5_2.UIManager
  L5_2 = L5_2.load_and_async_show
  L6_2 = "Ui.Activity.TreasureDungeon.TreasureDungeonAttackDialog"
  L7_2 = L4_2
  L8_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = L5_2.LuaTable
  L7_2 = L6_2
  L6_2 = L6_2.register_arrive_callback
  L8_2 = A3_2
  L6_2(L7_2, L8_2)
end
L0_1._try_show_attack_hint = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._ui3d_grid
  L3_2 = L2_2
  L2_2 = L2_2.get_grid
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L3_2 = nil
    return L3_2
  end
  L4_2 = L2_2
  L3_2 = L2_2.get_transform
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.position
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_UI3DCamera
  L5_2 = L4_2
  L4_2 = L4_2.WorldToScreenPoint
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.GlobalVars
  L5_2 = L5_2.s_UICamera
  L6_2 = L5_2
  L5_2 = L5_2.ScreenToWorldPoint
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Vector3
  L7_2 = L5_2.x
  L8_2 = L5_2.y
  L9_2 = 1.0
  return L6_2(L7_2, L8_2, L9_2)
end
L0_1._get_grid_ui_position = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._property_unlocked
  L2_2 = G
  L2_2 = L2_2.TutorialModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.get_tutorial_guide_data
  L4_2 = 8013
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = G
  L3_2 = L3_2.TutorialModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.get_tutorial_guide_data
  L5_2 = 8014
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = G
  L4_2 = L4_2.TutorialModule
  L4_2 = L4_2.Instance
  L5_2 = L4_2
  L4_2 = L4_2.get_tutorial_guide_data
  L6_2 = 8015
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L2_2.status
  L6_2 = CS
  L6_2 = L6_2.JBBGCGEMDLN
  L6_2 = L6_2.FOENFMPNMGJ
  L6_2 = #L6_2
  L5_2 = L5_2 == L6_2
  A0_2._property_unlocked = L5_2
  L5_2 = L3_2.status
  L6_2 = CS
  L6_2 = L6_2.JBBGCGEMDLN
  L6_2 = L6_2.FOENFMPNMGJ
  L6_2 = #L6_2
  L5_2 = L5_2 == L6_2
  A0_2._ultra_unlocked = L5_2
  L5_2 = L4_2.status
  L6_2 = CS
  L6_2 = L6_2.JBBGCGEMDLN
  L6_2 = L6_2.FOENFMPNMGJ
  L6_2 = #L6_2
  L5_2 = L5_2 == L6_2
  A0_2._buff_unlocked = L5_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_property
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A0_2._property_unlocked
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_ultra
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A0_2._ultra_unlocked
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.panel_buff
  L6_2 = L5_2
  L5_2 = L5_2.enable_buff
  L7_2 = A0_2._buff_unlocked
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._property_unlocked
  if L5_2 and L1_2 == false then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.UIAnimationUtils
    L5_2 = L5_2.PlayFromBegin
    L6_2 = A0_2._binder
    L6_2 = L6_2.anim_property
    L7_2 = "TDMainPage_Buff_Unlock"
    L5_2(L6_2, L7_2)
  end
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.LayoutRebuilder
  L5_2 = L5_2.ForceRebuildLayoutImmediate
  L6_2 = A0_2._binder
  L6_2 = L6_2.layout_menu
  L6_2 = L6_2.transform
  L5_2(L6_2)
end
L0_1._refresh_menu_unlock = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2.is_top_page
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_ultra
    L1_2 = L1_2.gameObject
    L1_2 = L1_2.activeInHierarchy
    if L1_2 then
      goto lbl_13
    end
  end
  A0_2._need_ultra_hint = true
  do return end
  ::lbl_13::
  A0_2._need_ultra_hint = false
  L2_2 = A0_2
  L1_2 = A0_2._refresh_menu_unlock
  L1_2(L2_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.LastInteractGridIndex
  L3_2 = A0_2
  L2_2 = A0_2._is_from_item_chest
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._get_from_chest_item_row
    L3_2 = L3_2(L4_2)
    if L3_2 ~= nil then
      L4_2 = L3_2.TypeParam
      L4_2 = L4_2[1]
      if L4_2 then
        goto lbl_32
      end
    end
    L4_2 = 1
    ::lbl_32::
    L6_2 = A0_2
    L5_2 = A0_2._try_play_get_chest
    L7_2 = L1_2
    L8_2 = L4_2
    L9_2 = A0_2._play_get_ultra_effect
    L5_2(L6_2, L7_2, L8_2, L9_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._get_grid_ui_position
    L5_2 = L1_2
    L3_2 = L3_2(L4_2, L5_2)
    L5_2 = A0_2
    L4_2 = A0_2._play_get_ultra_effect
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._play_ultra_hint = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._try_show_pick_hint
    L4_2 = A1_2
    L5_2 = A0_2._binder
    L5_2 = L5_2.partical_ultra
    L5_2 = L5_2.transform
    L5_2 = L5_2.position
    function L6_2()
      local L0_3, L1_3
      L0_3 = A0_2._binder
      if L0_3 == nil then
        return
      end
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._refresh_ultra
      L0_3(L1_3)
      L0_3 = A0_2._binder
      L0_3 = L0_3.partical_ultra
      L1_3 = L0_3
      L0_3 = L0_3.Play
      L0_3(L1_3)
    end
    L2_2(L3_2, L4_2, L5_2, L6_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._refresh_ultra
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.partical_ultra
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L2_2(L3_2)
  end
end
L0_1._play_get_ultra_effect = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_team
  L2_2 = L1_2
  L1_2 = L1_2.refresh_properties
  L1_2(L2_2)
end
L0_1._refresh_properties = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._ignore_exit
    if L1_2 then
      A0_2._ignore_exit = false
      return
    end
  end
  L1_2 = A0_2._is_in_ultra
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.is_gamepad_input
    L1_2 = L1_2()
    if not L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._refresh_ultra
      L1_2(L2_2)
      L2_2 = A0_2
      L1_2 = A0_2._on_ultra_mode_changed
      L3_2 = false
      L1_2(L2_2, L3_2)
    end
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Activity.TreasureDungeon.TreasureDungeonQuitConfirmDialog"
  L3_2 = A0_2._data
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_exit = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2.__name
  L3_2 = ""
  L4_2 = "TreasureDungeonEnvBuff"
  L5_2 = A0_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Activity.TreasureDungeon.TreasureDungeonEnvironmentDialog"
  L3_2 = A0_2._data
  L3_2 = L3_2.CurrentEnvironmentBuff
  L4_2 = A0_2._data
  L4_2 = L4_2.FloorID
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_env_buff = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2.__name
  L3_2 = ""
  L4_2 = "IntroBtn"
  L5_2 = A0_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_btn_intro = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._set_in_ultra_mode
    L4_2 = true
    L2_2(L3_2, L4_2)
  else
    A0_2._ignore_exit = true
    L3_2 = A0_2
    L2_2 = A0_2._set_in_ultra_mode
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_ultra_mode_changed = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._ui3d_grid
  L3_2 = L2_2
  L2_2 = L2_2.show_mask
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = ipairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.canvas_groups_to_mask
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if A1_2 then
      L7_2 = 0.3
      if L7_2 then
        goto lbl_16
      end
    end
    L7_2 = 1
    ::lbl_16::
    L6_2.alpha = L7_2
    L7_2 = not A1_2
    L6_2.blocksRaycasts = L7_2
  end
  L2_2 = ipairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.nodes_to_mask
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.SafeSetActive
    L9_2 = A1_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._show_mask = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.IsFinish
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.exit
    L2_2(L3_2)
    return
  end
  L2_2 = A1_2.IsAllDead
  if L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.ConfirmDialogUtil
    L2_2 = L2_2.ShowOkHint
    L3_2 = "UIText_TreasureDungeon_Hint_TeamDeadConfirm"
    L4_2 = "Common_ConfirmDialog_Title"
    L2_2 = L2_2(L3_2, L4_2)
    L4_2 = L2_2
    L3_2 = L2_2.SetExitCallback
    function L5_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = G
      L0_3 = L0_3.UIManager
      L0_3 = L0_3.load_and_async_show
      L1_3 = "Ui.Activity.TreasureDungeon.TreasureDungeonResultDialog"
      L2_3 = A1_2
      L3_3 = A0_2.exit
      L4_3 = A0_2
      L0_3(L1_3, L2_3, L3_3, L4_3)
    end
    L3_2(L4_2, L5_2)
  else
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_async_show
    L3_2 = "Ui.Activity.TreasureDungeon.TreasureDungeonResultDialog"
    L4_2 = A1_2
    L5_2 = A0_2.exit
    L6_2 = A0_2
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._on_quit_treasuredungeon = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_refresh_notify
  L3_2 = A0_2._data
  L3_2 = L3_2.RefreshParam
  L1_2(L2_2, L3_2)
end
L0_1._on_hide_loading_page = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L2_2 = L1_2
  L1_2 = L1_2.setup_all_incontrol_tip
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_first_child_dialog_open = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._on_refresh_notify
    L3_2 = A0_2._data
    L3_2 = L3_2.RefreshParam
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L2_2 = L1_2
  L1_2 = L1_2.setup_all_incontrol_tip
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_first_child_dialog_close = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_menu_unlock
  L1_2(L2_2)
  L1_2 = A0_2._need_ultra_hint
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._play_ultra_hint
    L1_2(L2_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_team
  L2_2 = L1_2
  L1_2 = L1_2.try_replay_hint
  L1_2(L2_2)
  L1_2 = A0_2._data
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._on_refresh_notify
    L3_2 = A0_2._data
    L3_2 = L3_2.RefreshParam
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_return_to_top = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._is_in_ultra = A1_2
  L2_2 = A0_2._ui3d_grid
  L3_2 = L2_2
  L2_2 = L2_2.refresh_ultra_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._show_mask
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L3_2 = L2_2
  L2_2 = L2_2.setup_all_incontrol_tip
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_short_cut_hint_panel
  if A1_2 then
    L4_2 = 9
    if L4_2 then
      goto lbl_20
    end
  end
  L4_2 = 31
  ::lbl_20::
  L2_2(L3_2, L4_2)
end
L0_1._set_in_ultra_mode = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.SourceGridId
  L4_2 = A0_2
  L3_2 = A0_2._try_play_get_chest
  L5_2 = L2_2
  L6_2 = A1_2.Param1
  if 0 < L6_2 then
    L6_2 = 1
    if L6_2 then
      goto lbl_11
    end
  end
  L6_2 = 0
  ::lbl_11::
  L7_2 = A0_2._play_hp_effect
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_add_hp = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_team
  L3_2 = L2_2
  L2_2 = L2_2.on_hp_damaged
  L2_2(L3_2)
end
L0_1._on_sub_hp = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_team
  L3_2 = L2_2
  L2_2 = L2_2.play_hp_explore_hint
  L2_2(L3_2)
end
L0_1._on_no_explore_sub_hp = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.SourceGridId
  L4_2 = A0_2
  L3_2 = A0_2._try_play_get_chest
  L5_2 = L2_2
  L6_2 = A1_2.Param1
  if 0 < L6_2 then
    L6_2 = 1
    if L6_2 then
      goto lbl_11
    end
  end
  L6_2 = 0
  ::lbl_11::
  L7_2 = A0_2._play_attack_added_effect
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A1_2.Param2
  if 0 < L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._play_convert_hp
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_add_attack = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.SourceGridId
  L4_2 = A0_2
  L3_2 = A0_2._try_play_get_chest
  L5_2 = L2_2
  L6_2 = A1_2.Param1
  if 0 < L6_2 then
    L6_2 = 1
    if L6_2 then
      goto lbl_11
    end
  end
  L6_2 = 0
  ::lbl_11::
  L7_2 = A0_2._play_defence_added_effect
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A1_2.Param2
  if 0 < L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._play_convert_hp
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_add_defence = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L5_2 = A0_2
  L4_2 = A0_2._is_from_item_chest
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L6_2 = A0_2
    L5_2 = A0_2._get_from_chest_item_row
    L5_2 = L5_2(L6_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.hint_panel
    L7_2 = L6_2
    L6_2 = L6_2.show_get_item
    L8_2 = A1_2
    L9_2 = L5_2
    L10_2 = A3_2
    L11_2 = A0_2
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  end
  if 0 < A2_2 then
    if L4_2 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.hint_panel
      L6_2 = L5_2
      L5_2 = L5_2.add_get_item_hint_effect
      L7_2 = A1_2
      L8_2 = A2_2
      L5_2(L6_2, L7_2, L8_2)
    else
      L6_2 = A0_2
      L5_2 = A0_2._get_grid_ui_position
      L7_2 = A1_2
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = G
      L6_2 = L6_2.Utils
      L6_2 = L6_2.invoke_callback
      L7_2 = A3_2
      L8_2 = A0_2
      L9_2 = L5_2
      L6_2(L7_2, L8_2, L9_2)
    end
  end
end
L0_1._try_play_get_chest = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_team
  L3_2 = L2_2
  L2_2 = L2_2.on_attack_added
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._play_attack_added_effect = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_team
  L3_2 = L2_2
  L2_2 = L2_2.on_defence_added
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._play_defence_added_effect = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_team
  L3_2 = L2_2
  L2_2 = L2_2.on_hp_recovered
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._play_hp_effect = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2._get_last_interact_item_row
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.hint_panel
  L4_2 = L3_2
  L3_2 = L3_2.show_convert_to_hp
  L5_2 = A1_2
  L6_2 = L2_2
  L7_2 = A0_2._play_hp_converted_effect
  L8_2 = A0_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._play_convert_hp = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIPileToastMessageTextID
  L4_2 = "UIText_TreasureDungeon_Stage_ItemConversionDesc"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_team
  L3_2 = L2_2
  L2_2 = L2_2.on_hp_recovered
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._play_hp_converted_effect = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.SourceGridId
  A0_2._explore_point_in_pick = true
  L4_2 = A0_2
  L3_2 = A0_2._try_play_get_chest
  L5_2 = L2_2
  L6_2 = 1
  L7_2 = A0_2._play_add_explore_effect
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_add_explore = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._try_show_pick_hint
  L4_2 = A1_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.panel_explore_point
  L5_2 = L5_2._binder
  L5_2 = L5_2.root
  L5_2 = L5_2.transform
  L5_2 = L5_2.position
  function L6_2()
    local L0_3, L1_3, L2_3
    A0_2._explore_point_in_pick = false
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh_explore_point
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._play_add_explore_effect = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._data
  L2_2 = L2_2.RefreshParam
  L2_2 = L2_2.IsGetChest
  if L2_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = A0_2._data
  L2_2 = L2_2.LastInteractGridIndex
  if L2_2 ~= 0 then
    L2_2 = A0_2._data
    L2_2 = L2_2.LastInteractGridIndex
    if L2_2 == A1_2 then
      goto lbl_18
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_18::
  L3_2 = A0_2
  L2_2 = A0_2._get_last_interact_item_row
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2 ~= nil
  return L3_2
end
L0_1._is_from_item_chest = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  L1_2 = L1_2.RefreshParam
  L1_2 = L1_2.IsGetChest
  if not L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.TreasureDungeonItemConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._data
  L2_2 = L2_2.RefreshParam
  L2_2 = L2_2.GotChestItemID
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.Type
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.TreasureDungeonItemType
    L3_2 = L3_2.ItemChest
    if L2_2 == L3_2 then
      goto lbl_29
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_29::
  return L1_2
end
L0_1._get_from_chest_item_row = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  L1_2 = L1_2.LastInteractGridIndex
  if L1_2 == 0 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._data
  L1_2 = L1_2.LastInteractGridType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.TreasureDungeonGridType
  L2_2 = L2_2.Item
  if L1_2 ~= L2_2 then
    L1_2 = A0_2._data
    L1_2 = L1_2.LastInteractGridType
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TreasureDungeonGridType
    L2_2 = L2_2.ItemRandom
    if L1_2 ~= L2_2 then
      L1_2 = nil
      return L1_2
    end
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.TreasureDungeonItemConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._data
  L2_2 = L2_2.LastInteractGridParam
  return L1_2(L2_2)
end
L0_1._get_last_interact_item_row = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIPileToastMessageTextID
  L4_2 = "UIText_TreasureDungeon_Stage_ExploreValue_Overflow"
  L2_2(L3_2, L4_2)
end
L0_1._on_add_explore_overflow = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._explore_point_in_attack = true
  L3_2 = A0_2
  L2_2 = A0_2._try_show_attack_hint
  L4_2 = A1_2.SourceGridId
  L5_2 = A0_2._binder
  L5_2 = L5_2.panel_explore_point
  L5_2 = L5_2._binder
  L5_2 = L5_2.root
  L5_2 = L5_2.transform
  L5_2 = L5_2.position
  function L6_2()
    local L0_3, L1_3, L2_3
    A0_2._explore_point_in_attack = false
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh_explore_point
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_sub_explore = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._ui3d_grid
  L3_2 = L2_2
  L2_2 = L2_2.get_grid
  L4_2 = A1_2.SourceGridId
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.play_summon
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIPileToastMessageTextID
  L4_2 = "UIText_TreasureDungeon_Hint_SummonAfterAction"
  L2_2(L3_2, L4_2)
end
L0_1._on_summon_monster = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._ui3d_grid
  L3_2 = L2_2
  L2_2 = L2_2.get_grid
  L4_2 = A1_2.TargetGridId
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.play_bomb
  L2_2(L3_2)
end
L0_1._on_ultra_kill_monster = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.Param1
  if L2_2 ~= 0 then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_async_show
    L3_2 = "Ui.Activity.TreasureDungeon.TreasureDungeonTrialAvatarDialog"
    L4_2 = A1_2.Param1
    function L5_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      L1_3 = A0_2._binder
      L1_3 = L1_3.panel_team
      L2_3 = L1_3
      L1_3 = L1_3.show_getten_detail
      L3_3 = A0_3
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
    end
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L3_2 = L2_2.LuaTable
    L4_2 = L3_2
    L3_2 = L3_2.set_exit_callback
    function L5_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._try_show_grid_pick_hint
      L2_3 = A1_2.SourceGridId
      L3_3 = A0_2._binder
      L3_3 = L3_3.node_team
      L3_3 = L3_3.transform
      L3_3 = L3_3.position
      L0_3(L1_3, L2_3, L3_3)
    end
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_add_trial_avatar = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._ui3d_grid
  L3_2 = L2_2
  L2_2 = L2_2.try_play_door_opend
  L4_2 = A1_2.SourceGridId
  L2_2(L3_2, L4_2)
end
L0_1._on_door_opend = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._ui3d_grid
  L3_2 = L2_2
  L2_2 = L2_2.get_grid
  L4_2 = A1_2.SourceGridId
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.play_enhance
  L2_2(L3_2)
end
L0_1._on_monster_enhance = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._ui3d_grid
  L3_2 = L2_2
  L2_2 = L2_2.get_grid
  L4_2 = A1_2.SourceGridId
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.play_weaken
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIPileToastMessageTextID
  L4_2 = "UIText_TreasureDungeon_Hint_UnopenGridKill"
  L2_2(L3_2, L4_2)
end
L0_1._on_monster_weaken = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIPileToastMessageTextID
  L4_2 = "UIText_TreasureDungeon_Hint_AuraKill"
  L2_2(L3_2, L4_2)
end
L0_1._on_monster_aura_remove = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIPileToastMessageTextID
  L4_2 = "UIText_TreasureDungeon_Hint_ReplaceAfterAction"
  L2_2(L3_2, L4_2)
end
L0_1._on_special_monster_run = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIPileToastMessageTextID
  L4_2 = "UIText_TreasureDungeon_Hint_ReplaceAfterAction_Bonus"
  L2_2(L3_2, L4_2)
end
L0_1._on_special_monster_kill = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastPile
  L2_2 = L2_2()
  L2_2.DescTextID = "UIText_TreasureDungeon_Hint_Item_ExploreRecovery"
  L3_2 = A1_2.Param1
  L2_2.TextIDParam = L3_2
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.UIPileToastMessageStruct
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_battle_buff_add_explore = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastPile
  L2_2 = L2_2()
  L2_2.DescTextID = "UIText_TreasureDungeon_Hint_Item_GridUnlock"
  L3_2 = A1_2.Param1
  L2_2.TextIDParam = L3_2
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.UIPileToastMessageStruct
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_battle_buff_open_grid = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastPile
  L2_2 = L2_2()
  L2_2.DescTextID = "UIText_TreasureDungeon_Hint_Item_AddItem"
  L3_2 = G
  L3_2 = L3_2.TreasureDungeonUtils
  L3_2 = L3_2.get_treasuredungeon_item_name_by_id
  L4_2 = A1_2.Param1
  L3_2 = L3_2(L4_2)
  L2_2.TextIDParam = L3_2
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.UIPileToastMessageStruct
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_battle_buff_add_item = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_buff
  L2_2 = L1_2
  L1_2 = L1_2.on_battle_buff_success
  L1_2(L2_2)
end
L0_1._on_battle_buff_success = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_buff
  L2_2 = L1_2
  L1_2 = L1_2.on_battle_buff_fail
  L1_2(L2_2)
end
L0_1._on_battle_buff_fail = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIPileToastMessageTextID
  L4_2 = "UIText_TreasureDungeon_Hint_AvatarDead"
  L2_2(L3_2, L4_2)
end
L0_1._on_avatar_dead = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIPileToastMessageTextID
  L4_2 = "UIText_TreasureDungeon_Hint_AvatarDead"
  L2_2(L3_2, L4_2)
end
L0_1._on_trial_avatar_dead = L3_1
function L3_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_first_enter
  L1_2 = not L1_2
  if L1_2 then
    L2_2 = A0_2._ui3d_grid
    L3_2 = L2_2
    L2_2 = L2_2.get_selected_object
    L4_2 = A0_2._data
    L4_2 = L4_2.LastBattleGridIndex
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 ~= nil then
      return L2_2
    end
  end
  L2_2 = A0_2._ui3d_grid
  L3_2 = L2_2
  L2_2 = L2_2.get_door_grid_object
  return L2_2(L3_2)
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._ui3d_grid
  L2_2 = L1_2
  L1_2 = L1_2.on_in_control_input_switch
  L1_2(L2_2)
end
L0_1._on_in_control_input_switch = L3_1
return L0_1
