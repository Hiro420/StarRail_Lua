local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Select.BattleEvolveBuildSelectGearPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Select.BattleEvolveBuildSelectGearCardPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Select.BattleEvolveBuildSelectSlotListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Select.BattleEvolveBuildSelectGearDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.ActivityEvolveBuildTeamBonusInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.TopBarAreaPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleEvolveBuildSelectGearPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_EvolveBuild_RemoveButton"
L2_1 = "UIText_BtnBack"
L3_1 = "UIText_EvolveBuild_ChooseRemove"
L4_1 = "UIText_EvolveBuild_ChooseRemoveDoubleCheck"
L5_1 = "UIText_EvolveBuild_ChooseSkipDoubleCheck"
L6_1 = "UIText_EvolveBuild_ChooseRemove_Tips"
L7_1 = 3106003
L8_1 = "5372"
L9_1 = "5373"
L10_1 = "5395"
L11_1 = "5408"
L12_1 = "5410"
L13_1 = "SlotConfirmAnimFinish"
L14_1 = "EvolveBuild_Skip_UnlockQuest"
L15_1 = "#FAC065"
L16_1 = "#FF0000"
L17_1 = "UI_EvolveWeaponPick_TipsFadeIn"
L18_1 = "UI_EvolveWeaponPick_TipsFadeOut"
L19_1 = {}
L19_1[0] = 0
L19_1[1] = 1
L19_1[9] = 2
function L20_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.BattleEvolveBuildSelectGearPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_Default
  A0_2._transition_style = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.EvolveBuildModule
  A0_2._evolve_build_module = L1_2
  A0_2._pause_game = true
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.set_battle_pause
  L2_2 = true
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._record_open_level
  L1_2(L2_2)
end
L0_1.ctor = L20_1
function L20_1(A0_2, A1_2)
  A0_2._init_param = A1_2
end
L0_1.init = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  A0_2._init_equip_weapons = L1_2
  L1_2 = 0
  L2_2 = A0_2._init_param
  L2_2 = L2_2.ForEquippedTool
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._init_param
    L5_2 = L5_2.ForEquippedTool
    L5_2 = L5_2[L4_2]
    if L5_2 ~= nil then
      L5_2 = table
      L5_2 = L5_2.insert
      L6_2 = A0_2._init_equip_weapons
      L7_2 = A0_2._init_param
      L7_2 = L7_2.ForEquippedTool
      L7_2 = L7_2[L4_2]
      L5_2(L6_2, L7_2)
    end
  end
end
L0_1._init_equip_weapon_table = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  A0_2._init_equip_accessroy = L1_2
  L1_2 = 0
  L2_2 = A0_2._init_param
  L2_2 = L2_2.ForEquippedPlugin
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._init_param
    L5_2 = L5_2.ForEquippedPlugin
    L5_2 = L5_2[L4_2]
    if L5_2 ~= nil then
      L5_2 = table
      L5_2 = L5_2.insert
      L6_2 = A0_2._init_equip_accessroy
      L7_2 = A0_2._init_param
      L7_2 = L7_2.ForEquippedPlugin
      L7_2 = L7_2[L4_2]
      L5_2(L6_2, L7_2)
    end
  end
end
L0_1._init_equip_accessroy_table = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIBattleEvolveBuildReRoll
  L4_2 = A0_2._on_ntf_reroll
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIBattleEvolveBuildNewSelectInfo
  L4_2 = A0_2._on_new_select_info
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._ui_animation_event
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_drop_confirm
  L4_2 = A0_2._on_btn_drop_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reroll
  L4_2 = A0_2._on_btn_reroll
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_skip
  L4_2 = A0_2._on_btn_skip
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_drop
  L4_2 = A0_2._on_btn_drop
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_short_desc
  L4_2 = A0_2._on_btn_buff_simple
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_open_mix
  L4_2 = A0_2._on_btn_open_mix
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty_confirm
  L4_2 = A0_2._on_btn_empty_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_intro
  L4_2 = A0_2._on_btn_intro
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.rpg_anim_event_tips_root
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L18_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_tips_fade_out_end
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_drop_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.TopBarAreaPanel
  L4_2 = G
  L4_2 = L4_2.TopBarAreaPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._top_bar_panel = L1_2
  L1_2 = A0_2._top_bar_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_top_bar
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.BattleEvolveBuildSelectGearDetailPanel
  L4_2 = G
  L4_2 = L4_2.BattleEvolveBuildSelectGearDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._detail_panel = L1_2
  L1_2 = A0_2._detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_detail_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_on_btn_root_callback
  L3_2 = A0_2._on_detail_panel_empty_close
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.BattleEvolveBuildSelectSlotListPanel
  L4_2 = G
  L4_2 = L4_2.BattleEvolveBuildSelectSlotListPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._accessory_slot_list_panel = L1_2
  L1_2 = A0_2._accessory_slot_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_detail_panel
  L3_2 = A0_2._detail_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._accessory_slot_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_accessory_list
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._accessory_slot_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_slot_btn_root_callback
  L3_2 = A0_2._on_base_slot_btn_root
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.BattleEvolveBuildSelectSlotListPanel
  L4_2 = G
  L4_2 = L4_2.BattleEvolveBuildSelectSlotListPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._weapon_slot_list_panel = L1_2
  L1_2 = A0_2._weapon_slot_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_detail_panel
  L3_2 = A0_2._detail_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._weapon_slot_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_weapon_list
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._weapon_slot_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_slot_btn_root_callback
  L3_2 = A0_2._on_base_slot_btn_root
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityEvolveBuildTeamBonusInfoPanel
  L4_2 = G
  L4_2 = L4_2.ActivityEvolveBuildTeamBonusInfoPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._team_buff_panel = L1_2
  L1_2 = A0_2._team_buff_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_team_buff_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L4_2 = A0_2
  L3_2 = A0_2.fade_in_duration
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._init_var
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_pre_add_gear_id
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_empty_view
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_slot_list_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_drop_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_skip_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_reroll_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_top_left_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_card_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_team_buff_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_reroll_times
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_refresh_tips
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_select_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_drop_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_confirm_interactable
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_short_desc
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.User
  L4_2 = L3_2
  L3_2 = L3_2.GetEvolveBuildSelectGearShortDesc
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_trigger_tutorial
  L1_2(L2_2)
end
L0_1._setup_view = L20_1
function L20_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._card_panels = L1_2
  A0_2._is_drop_mode = false
  A0_2._select_index = nil
  A0_2._pre_select_panel = nil
  A0_2._select_confirm = false
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.EvolveBuildModule
  L1_2.LastSelectGearID = nil
end
L0_1._init_var = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.EvolveBuildUtils
  L1_2 = L1_2.GetSortedEvolveBuildGearEquipInfo
  L1_2 = L1_2()
  L2_2 = A0_2._weapon_slot_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.EvolveGearType
  L4_2 = L4_2.Tool
  L6_2 = A0_2
  L5_2 = A0_2._create_lua_table_from_cs_list
  L7_2 = L1_2.WeaponList
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2._accessory_slot_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.EvolveGearType
  L4_2 = L4_2.Plugin
  L6_2 = A0_2
  L5_2 = A0_2._create_lua_table_from_cs_list
  L7_2 = L1_2.AccessoryList
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_slot_animation
  L2_2(L3_2)
end
L0_1._setup_slot_list_view = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.EvolveBuildUtils
  L1_2 = L1_2.GetSortedEvolveBuildGearEquipInfo
  L1_2 = L1_2()
  L2_2 = A0_2._weapon_slot_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_equipinfo
  L5_2 = A0_2
  L4_2 = A0_2._create_lua_table_from_cs_list
  L6_2 = L1_2.WeaponList
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._accessory_slot_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_equipinfo
  L5_2 = A0_2
  L4_2 = A0_2._create_lua_table_from_cs_list
  L6_2 = L1_2.AccessoryList
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_slot_animation
  L2_2(L3_2)
end
L0_1._refresh_slot_list_view = L20_1
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = {}
  if A1_2 ~= nil then
    L3_2 = 0
    L4_2 = A1_2.Count
    L4_2 = L4_2 - 1
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = L6_2 + 1
      L8_2 = A1_2[L6_2]
      L2_2[L7_2] = L8_2
    end
  end
  return L2_2
end
L0_1._create_lua_table_from_cs_list = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueCommonExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L14_1
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.IntValue
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.QuestModule
  L3_2 = L2_2
  L2_2 = L2_2.TryGetQuestData
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2 ~= nil
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_skip
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1._setup_btn_skip_view = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.FixPoint
  L1_2 = L1_2.RoundToInt
  L2_2 = G
  L2_2 = L2_2.ActivityEvolveBuildUtils
  L2_2 = L2_2.get_evolve_build_gear_manager
  L2_2 = L2_2()
  L3_2 = L2_2
  L2_2 = L2_2.GetProperty
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.EvolveBuildPropertyType
  L4_2 = L4_2.LostCount
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ConstValueCommonExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "EvolveBuild_Remove_UnlockQuest"
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.Value
  L2_2 = L2_2.IntValue
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.QuestModule
  L4_2 = L3_2
  L3_2 = L3_2.TryGetQuestData
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2 ~= nil
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_abandon
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  if not L4_2 then
    return
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_drop_times
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = L1_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_drop
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetInteractable
  L7_2 = 0 < L1_2
  L5_2(L6_2, L7_2)
  L5_2 = G
  L5_2 = L5_2.UIColorUtils
  L5_2 = L5_2.GetColor
  L6_2 = L15_1
  L5_2 = L5_2(L6_2)
  if L1_2 == 0 then
    L6_2 = G
    L6_2 = L6_2.UIColorUtils
    L6_2 = L6_2.GetColor
    L7_2 = L16_1
    L6_2 = L6_2(L7_2)
    L5_2 = L6_2
  end
  L6_2 = A0_2._binder
  L6_2 = L6_2.txt_drop_times
  L6_2.color = L5_2
end
L0_1._setup_btn_drop_view = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueCommonExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "EvolveBuild_Reset_UnlockQuest"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.IntValue
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.QuestModule
  L3_2 = L2_2
  L2_2 = L2_2.TryGetQuestData
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2 ~= nil
  A0_2._enable_reroll = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reroll
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._enable_reroll
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_reroll_tips
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._enable_reroll
  L3_2(L4_2, L5_2)
end
L0_1._setup_reroll_view = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.FixPoint
  L1_2 = L1_2.RoundToInt
  L2_2 = G
  L2_2 = L2_2.ActivityEvolveBuildUtils
  L2_2 = L2_2.get_evolve_build_gear_manager
  L2_2 = L2_2()
  L3_2 = L2_2
  L2_2 = L2_2.GetProperty
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.EvolveBuildPropertyType
  L4_2 = L4_2.CurExpStep
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_pre_level
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = G
  L4_2 = L4_2.ActivityEvolveBuildUtils
  L4_2 = L4_2.get_evolve_build_gear_manager
  L4_2 = L4_2()
  L4_2 = L4_2.LastExpStepOnGearSelect
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_cur_level
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_top_left_view = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.FixPoint
  L1_2 = L1_2.RoundToInt
  L2_2 = G
  L2_2 = L2_2.ActivityEvolveBuildUtils
  L2_2 = L2_2.get_evolve_build_gear_manager
  L2_2 = L2_2()
  L3_2 = L2_2
  L2_2 = L2_2.GetProperty
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.EvolveBuildPropertyType
  L4_2 = L4_2.ReRoll
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_reroll_cur_times
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_reroll
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = 0 < L1_2
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.UIColorUtils
  L2_2 = L2_2.GetColor
  L3_2 = L15_1
  L2_2 = L2_2(L3_2)
  if L1_2 == 0 then
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = L16_1
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_reroll_cur_times
  L3_2.color = L2_2
end
L0_1._refresh_reroll_times = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 1
  L2_2 = A0_2._card_panels
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._card_panels
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.setup_buff_desc
    L5_2(L6_2)
  end
end
L0_1._refresh_buff_desc = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_forge_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_resonance_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._init_refresh_tips = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._pre_select_panel
  if L1_2 then
    L1_2 = A0_2._is_drop_mode
    if not L1_2 then
      L1_2 = A0_2._pre_select_panel
      L2_2 = L1_2
      L1_2 = L1_2.is_forge_card
      L1_2 = L1_2(L2_2)
      L2_2 = A0_2._pre_select_panel
      L3_2 = L2_2
      L2_2 = L2_2.is_resonance_card
      L2_2 = L2_2(L3_2)
      if L1_2 or L2_2 then
        L3_2 = A0_2._binder
        L3_2 = L3_2.node_forge_tips
        L4_2 = L3_2
        L3_2 = L3_2.SafeSetActive
        L5_2 = L1_2
        L3_2(L4_2, L5_2)
        L3_2 = A0_2._binder
        L3_2 = L3_2.node_resonance_tips
        L4_2 = L3_2
        L3_2 = L3_2.SafeSetActive
        L5_2 = L2_2
        L3_2(L4_2, L5_2)
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.Client
        L3_2 = L3_2.UIAnimationUtils
        L3_2 = L3_2.PlayFromBegin
        L4_2 = A0_2._binder
        L4_2 = L4_2.anim_tips_root
        L5_2 = L17_1
        L3_2(L4_2, L5_2)
      else
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.Client
        L3_2 = L3_2.UIAnimationUtils
        L3_2 = L3_2.PlayFromBegin
        L4_2 = A0_2._binder
        L4_2 = L4_2.anim_tips_root
        L5_2 = L18_1
        L3_2(L4_2, L5_2)
      end
    end
  end
end
L0_1._refresh_select_tips = L20_1
function L20_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_refresh_tips
  L1_2(L2_2)
end
L0_1._on_tips_fade_out_end = L20_1
function L20_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._weapon_slot_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh_slot_animation
  L1_2(L2_2)
  L1_2 = A0_2._accessory_slot_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh_slot_animation
  L1_2(L2_2)
end
L0_1._refresh_slot_animation = L20_1
function L20_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._weapon_slot_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.try_play_confirm_animation
  L1_2(L2_2)
  L1_2 = A0_2._accessory_slot_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.try_play_confirm_animation
  L1_2(L2_2)
end
L0_1._confirm_slot_animation = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_title_times
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_drop_mode
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_drop_mode
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.FixPoint
    L1_2 = L1_2.RoundToInt
    L2_2 = G
    L2_2 = L2_2.ActivityEvolveBuildUtils
    L2_2 = L2_2.get_evolve_build_gear_manager
    L2_2 = L2_2()
    L3_2 = L2_2
    L2_2 = L2_2.GetProperty
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.EvolveBuildPropertyType
    L4_2 = L4_2.LostCount
    L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2(L3_2, L4_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_select_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L3_1
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_select_title_times
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_select_title
    L2_2 = L1_2
    L1_2 = L1_2.SetCustomizedText
    L3_2 = tostring
    L4_2 = A0_2._init_param
    L4_2 = L4_2.CurCount
    L3_2 = L3_2(L4_2)
    L4_2 = "/"
    L5_2 = tostring
    L6_2 = A0_2._init_param
    L6_2 = L6_2.MaxCount
    L5_2 = L5_2(L6_2)
    L3_2 = L3_2 .. L4_2 .. L5_2
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_select_title = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = A0_2._pre_select_panel
  L3_2 = A0_2._select_index
  L3_2 = A0_2._is_drop_mode
  L3_2 = L3_2 ~= nil and L3_2
  L1_2(L2_2, L3_2)
end
L0_1._refresh_btn_confirm_interactable = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = 0
  L2_2 = A0_2._init_param
  L2_2 = L2_2.ForSelected
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.ActivityEvolveBuildGearCollectionExcelTable
    L5_2 = L5_2.GetData
    L6_2 = A0_2._init_param
    L6_2 = L6_2.ForSelected
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.GearConfig
    L6_2 = L6_2.GearID
    L5_2 = L5_2(L6_2)
    L6_2 = L5_2.Type
    L6_2 = #L6_2
    L6_2 = L19_1[L6_2]
    L8_2 = A0_2
    L7_2 = A0_2.instantiate_object
    L9_2 = A0_2._binder
    L9_2 = L9_2.prefab_load_meta_card
    L9_2 = L9_2.MultiPrefabList
    L9_2 = L9_2[L6_2]
    L10_2 = A0_2._binder
    L10_2 = L10_2.prefab_load_meta_card
    L10_2 = L10_2.transform
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L9_2 = A0_2
    L8_2 = A0_2.create_panel
    L10_2 = G
    L10_2 = L10_2.BattleEvolveBuildSelectGearCardPanel
    L11_2 = G
    L11_2 = L11_2.BattleEvolveBuildSelectGearCardPanelBinder
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.register_delete_anim_end_callback
    L11_2 = A0_2._on_drop_anim_end
    L12_2 = A0_2
    L9_2(L10_2, L11_2, L12_2)
    L10_2 = L8_2
    L9_2 = L8_2.bind
    L11_2 = L7_2
    L9_2(L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.register_callback
    L11_2 = A0_2._on_card_select
    L12_2 = A0_2
    L9_2(L10_2, L11_2, L12_2)
    L9_2 = A0_2._card_panels
    L10_2 = L4_2 + 1
    L9_2[L10_2] = L8_2
    L10_2 = L8_2
    L9_2 = L8_2.setup_view
    L11_2 = A0_2._init_param
    L11_2 = L11_2.ForSelected
    L11_2 = L11_2[L4_2]
    L12_2 = L4_2
    L9_2(L10_2, L11_2, L12_2)
  end
end
L0_1._setup_card_view = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._team_buff_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = G
  L3_2 = L3_2.ActivityEvolveBuildUtils
  L3_2 = L3_2.get_evolve_build_gear_manager
  L3_2 = L3_2()
  L3_2 = L3_2.StageMergedID
  L1_2(L2_2, L3_2)
end
L0_1._setup_team_buff_view = L20_1
function L20_1(A0_2)
  local L1_2
  L1_2 = A0_2._open_level
  if L1_2 == nil then
    L1_2 = G
    L1_2 = L1_2.ActivityEvolveBuildUtils
    L1_2 = L1_2.get_evolve_build_gear_manager
    L1_2 = L1_2()
    L1_2 = L1_2.LastExpStepOnGearSelect
    L1_2 = L1_2 + 1
    A0_2._open_level = L1_2
  else
    L1_2 = A0_2._open_level
    L1_2 = L1_2 + 1
    A0_2._open_level = L1_2
  end
end
L0_1._record_open_level = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.ActivityEvolveBuildUtils
  L1_2 = L1_2.is_in_specific_period_stage
  L2_2 = 0
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.EvolveBuildTutorialConfigExcelTable
    L1_2 = L1_2.GetData
    L2_2 = A0_2._open_level
    L3_2 = G
    L3_2 = L3_2.ActivityEvolveBuildUtils
    L3_2 = L3_2.PERIOD_ID
    L3_2 = L3_2[0]
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L2_2 = L1_2.WeaponLevel
      if 0 < L2_2 then
        L2_2 = G
        L2_2 = L2_2.ActivityEvolveBuildUtils
        L2_2 = L2_2.get_evolve_build_gear_manager
        L2_2 = L2_2()
        L3_2 = L2_2
        L2_2 = L2_2.TryGetGearLevel
        L4_2 = L7_1
        L2_2 = L2_2(L3_2, L4_2)
        L3_2 = L1_2.WeaponLevel
        if L2_2 < L3_2 then
          L3_2 = A0_2
          L2_2 = A0_2._is_selected_contains_gear
          L4_2 = L7_1
          L2_2 = L2_2(L3_2, L4_2)
          if L2_2 then
            L3_2 = A0_2
            L2_2 = A0_2._trigger_tutorial
            L4_2 = L1_2.TutorialID
            L2_2(L3_2, L4_2)
          end
        end
      else
        L3_2 = A0_2
        L2_2 = A0_2._trigger_tutorial
        L4_2 = L1_2.TutorialID
        L2_2(L3_2, L4_2)
      end
    end
    L2_2 = G
    L2_2 = L2_2.ActivityEvolveBuildUtils
    L2_2 = L2_2.get_evolve_build_gear_manager
    L2_2 = L2_2()
    L3_2 = L2_2
    L2_2 = L2_2.TryGetGearLevel
    L4_2 = L7_1
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 == 7 then
      L3_2 = A0_2
      L2_2 = A0_2._is_selected_contains_gear
      L4_2 = L7_1
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2._trigger_tutorial
        L4_2 = L8_1
        L2_2(L3_2, L4_2)
      end
    end
    L3_2 = A0_2
    L2_2 = A0_2._is_selected_contains_gear
    L4_2 = 3106903
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._trigger_tutorial
      L4_2 = L9_1
      L2_2(L3_2, L4_2)
    end
  else
    L1_2 = G
    L1_2 = L1_2.ActivityEvolveBuildUtils
    L1_2 = L1_2.is_in_specific_period_stage
    L2_2 = 1
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.GameCore
      L1_2 = L1_2.EvolveBuildTutorialConfigExcelTable
      L1_2 = L1_2.GetData
      L2_2 = A0_2._open_level
      L3_2 = G
      L3_2 = L3_2.ActivityEvolveBuildUtils
      L3_2 = L3_2.PERIOD_ID
      L3_2 = L3_2[1]
      L1_2 = L1_2(L2_2, L3_2)
      if L1_2 then
        L3_2 = A0_2
        L2_2 = A0_2._trigger_tutorial
        L4_2 = L1_2.TutorialID
        L2_2(L3_2, L4_2)
      else
        L3_2 = A0_2
        L2_2 = A0_2._is_selected_contains_forge
        L2_2 = L2_2(L3_2)
        if L2_2 then
          L3_2 = A0_2
          L2_2 = A0_2._trigger_tutorial
          L4_2 = L11_1
          L2_2(L3_2, L4_2)
        end
      end
    else
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.GameCore
      L1_2 = L1_2.EvolveBuildTutorialConfigExcelTable
      L1_2 = L1_2.GetData
      L2_2 = A0_2._open_level
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.GlobalVars
      L3_2 = L3_2.s_ModuleManager
      L3_2 = L3_2.EvolveBuildModule
      L3_2 = L3_2.LevelInstance
      L3_2 = L3_2.LevelID
      L1_2 = L1_2(L2_2, L3_2)
      if L1_2 then
        L3_2 = A0_2
        L2_2 = A0_2._trigger_tutorial
        L4_2 = L1_2.TutorialID
        L2_2(L3_2, L4_2)
      end
    end
  end
  L1_2 = A0_2._enable_reroll
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._trigger_tutorial
    L3_2 = L10_1
    L1_2(L2_2, L3_2)
  end
end
L0_1._try_trigger_tutorial = L20_1
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TutorialTaskUnlock
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogFormat
  L3_2 = "[hwx] notify "
  L4_2 = tostring
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
end
L0_1._trigger_tutorial = L20_1
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = 0
  L3_2 = A0_2._init_param
  L3_2 = L3_2.ForSelected
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._init_param
    L6_2 = L6_2.ForSelected
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.GearConfig
    L6_2 = L6_2.GearID
    if L6_2 == A1_2 then
      L6_2 = true
      return L6_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._is_selected_contains_gear = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 0
  L2_2 = A0_2._init_param
  L2_2 = L2_2.ForSelected
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.ActivityEvolveBuildGearCollectionExcelTable
    L5_2 = L5_2.GetData
    L6_2 = A0_2._init_param
    L6_2 = L6_2.ForSelected
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.GearConfig
    L6_2 = L6_2.GearID
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L6_2 = L5_2.Type
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.EvolveGearType
      L7_2 = L7_2.Forge
      if L6_2 == L7_2 then
        L6_2 = true
        return L6_2
      end
    end
  end
  L1_2 = false
  return L1_2
end
L0_1._is_selected_contains_forge = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = A0_2._card_panels
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.destroy_object
    L7_2 = A0_2._card_panels
    L7_2 = L7_2[L4_2]
    L8_2 = L7_2
    L7_2 = L7_2.get_root_transform
    L7_2 = L7_2(L8_2)
    L7_2 = L7_2.gameObject
    L8_2 = true
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = A0_2._card_panels
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.dispose
    L5_2(L6_2)
    L5_2 = G
    L5_2 = L5_2.delete
    L6_2 = A0_2._card_panels
    L6_2 = L6_2[L4_2]
    L5_2(L6_2)
  end
end
L0_1._clear_card_view = L20_1
function L20_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.set_battle_pause
  L2_2 = true
  L1_2(L2_2)
end
L0_1._on_return_to_top = L20_1
function L20_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._clear_card_view
  L2_2(L3_2)
  A0_2._init_param = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_view
  L2_2(L3_2)
end
L0_1._on_ntf_reroll = L20_1
function L20_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 ~= nil then
    L2_2 = A1_2.ForSelected
    if L2_2 ~= nil then
      L2_2 = A1_2.ForSelected
      L2_2 = L2_2.Count
      if L2_2 ~= 0 then
        goto lbl_13
      end
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
  do return end
  ::lbl_13::
  L3_2 = A0_2
  L2_2 = A0_2._clear_card_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._record_open_level
  L2_2(L3_2)
  A0_2._init_param = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_view
  L2_2(L3_2)
end
L0_1._on_new_select_info = L20_1
function L20_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L13_1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._finish_confirm
    L2_2(L3_2)
  end
end
L0_1._ui_animation_event = L20_1
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._pre_select_panel
  if L2_2 then
    L2_2 = A0_2._pre_select_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_checked
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L3_2 = A1_2
  L2_2 = A1_2.set_checked
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.index
  A0_2._select_index = L2_2
  L2_2 = A0_2._is_drop_mode
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_drop_confirm
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetInteractable
    L4_2 = true
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_confirm
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetInteractable
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
  A0_2._pre_select_panel = A1_2
  L2_2 = A0_2._is_drop_mode
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._set_pre_add_gear_id
    L4_2 = A1_2.gear_id
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._refresh_slot_list_view
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._refresh_select_tips
    L2_2(L3_2)
  end
  L2_2 = A0_2._detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.is_active
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._detail_panel
    L3_2 = L2_2
    L2_2 = L2_2.trigger_empty_close
    L2_2(L3_2)
  end
end
L0_1._on_card_select = L20_1
function L20_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_confirm_select
  L1_2(L2_2)
end
L0_1._on_btn_confirm = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowConfirmDialog
  function L2_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3._on_confirm_drop
      L1_3(L2_3)
    end
  end
  L1_2 = L1_2(L2_2)
  L2_2 = DialogBtnMode
  L2_2 = L2_2.eOkCancel
  L1_2.Mode = L2_2
  L3_2 = L1_2
  L2_2 = L1_2.GetComponentContent
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L4_1
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_drop_confirm = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._select_confirm
  if L1_2 then
    return
  end
  A0_2._select_confirm = true
  L2_2 = A0_2
  L1_2 = A0_2._confirm_slot_animation
  L1_2(L2_2)
  L1_2 = A0_2._is_drop_mode
  if not L1_2 then
    L1_2 = A0_2._pre_select_panel
    L2_2 = L1_2
    L1_2 = L1_2.play_select_animation
    L1_2(L2_2)
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.BattleInstanceRef
  L1_2 = L1_2.GameWorldRef
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AbilityStatic
  L2_2 = L2_2.DoSelectGearInBattle
  L3_2 = L1_2
  L4_2 = A0_2._select_index
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.EvolveBuildModule
  L3_2 = G
  L3_2 = L3_2.ActivityEvolveBuildUtils
  L3_2 = L3_2.get_evolve_build_gear_manager
  L3_2 = L3_2()
  L3_2 = L3_2.PreAddGearID
  L2_2.LastSelectGearID = L3_2
  L3_2 = A0_2
  L2_2 = A0_2.show_full_screen_block
  L4_2 = 3
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._block_id = L2_2
end
L0_1._on_confirm_select = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._block_id
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_UIManager
    L2_2 = L1_2
    L1_2 = L1_2.TryUnblockFixedTime
    L3_2 = A0_2._block_id
    L1_2(L2_2, L3_2)
    A0_2._block_id = nil
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ActivityEvolveBuildGearCollectionExcelTable
  L1_2 = L1_2.GetData
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.EvolveBuildModule
  L2_2 = L2_2.LastSelectGearID
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = L1_2.Type
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.EvolveGearType
  L3_2 = L3_2.Forge
  if L2_2 == L3_2 then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_show
    L3_2 = "Ui.Battle.ActivityEvolveBuild.ActivityEvolveBuildResonanceToastDialog"
    L2_2 = L2_2(L3_2)
    L4_2 = L2_2
    L3_2 = L2_2.register_dispose_callback
    L5_2 = A0_2._try_exit
    L6_2 = A0_2
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._try_exit
    L2_2(L3_2)
  end
end
L0_1._finish_confirm = L20_1
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_empty_confirm
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_drop
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_confirm
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty_tips
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_empty_view = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.BattleInstanceRef
  L1_2 = L1_2.GameWorldRef
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AbilityStatic
  L2_2 = L2_2.DoSelectLostGearInBattle
  L3_2 = L1_2
  L4_2 = A0_2._select_index
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._pre_select_panel
  L3_2 = L2_2
  L2_2 = L2_2.play_delete_animation
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.show_full_screen_block
  L4_2 = 3
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._drop_anim_block_id = L2_2
end
L0_1._on_confirm_drop = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = A0_2._card_panels
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._card_panels
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.index
    L6_2 = A0_2._select_index
    if L5_2 == L6_2 then
      L5_2 = A0_2._card_panels
      L5_2 = L5_2[L4_2]
      L6_2 = L5_2
      L5_2 = L5_2.set_active
      L7_2 = false
      L5_2(L6_2, L7_2)
      L6_2 = A0_2
      L5_2 = A0_2.destroy_object
      L7_2 = A0_2._card_panels
      L7_2 = L7_2[L4_2]
      L8_2 = L7_2
      L7_2 = L7_2.get_root_transform
      L7_2 = L7_2(L8_2)
      L7_2 = L7_2.gameObject
      L8_2 = false
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = A0_2._card_panels
      L5_2 = L5_2[L4_2]
      L6_2 = L5_2
      L5_2 = L5_2.dispose
      L5_2(L6_2)
      L5_2 = table
      L5_2 = L5_2.remove
      L6_2 = A0_2._card_panels
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
      break
    end
  end
  L1_2 = A0_2._card_panels
  L1_2 = #L1_2
  if L1_2 == 0 then
    L1_2 = G
    L1_2 = L1_2.ActivityEvolveBuildUtils
    L1_2 = L1_2.get_evolve_build_gear_manager
    L1_2 = L1_2()
    L2_2 = L1_2
    L1_2 = L1_2.HasNoGearForSelected
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._skip_and_exit
      L1_2(L2_2)
    else
      L2_2 = A0_2
      L1_2 = A0_2._drop_to_select
      L1_2(L2_2)
      L2_2 = A0_2
      L1_2 = A0_2._setup_empty_view
      L3_2 = true
      L1_2(L2_2, L3_2)
    end
  else
    L2_2 = A0_2
    L1_2 = A0_2._drop_to_select
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._init_ui_navigation
    L1_2(L2_2)
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.TryUnblockFixedTime
  L3_2 = A0_2._drop_anim_block_id
  L1_2(L2_2, L3_2)
end
L0_1._on_drop_anim_end = L20_1
function L20_1(A0_2)
  local L1_2, L2_2
  A0_2._is_drop_mode = false
  A0_2._select_index = nil
  A0_2._pre_select_panel = nil
  A0_2._select_confirm = false
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_drop_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_drop_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_confirm_interactable
  L1_2(L2_2)
end
L0_1._drop_to_select = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowConfirmDialog
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = CS
      L1_3 = L1_3.RPG
      L1_3 = L1_3.Client
      L1_3 = L1_3.GlobalVars
      L1_3 = L1_3.s_GamePhaseManager
      L2_3 = L1_3
      L1_3 = L1_3.GetCurrentPhase
      L1_3 = L1_3(L2_3)
      L1_3 = L1_3.BattleInstanceRef
      L1_3 = L1_3.GameWorldRef
      L2_3 = CS
      L2_3 = L2_3.RPG
      L2_3 = L2_3.GameCore
      L2_3 = L2_3.AbilityStatic
      L2_3 = L2_3.DoEvolveBuildSkip
      L3_3 = L1_3
      L2_3(L3_3)
      L2_3 = A0_2
      L3_3 = L2_3
      L2_3 = L2_3._try_exit
      L2_3(L3_3)
    end
  end
  L1_2 = L1_2(L2_2)
  L2_2 = DialogBtnMode
  L2_2 = L2_2.eOkCancel
  L1_2.Mode = L2_2
  L3_2 = L1_2
  L2_2 = L1_2.GetComponentContent
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L5_1
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_skip = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.BattleInstanceRef
  L1_2 = L1_2.GameWorldRef
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AbilityStatic
  L2_2 = L2_2.DoEvolveBuildReRoll
  L3_2 = L1_2
  L2_2(L3_2)
end
L0_1._on_btn_reroll = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_drop_mode
  L1_2 = not L1_2
  A0_2._is_drop_mode = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_drop_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_select_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.get_navigation_target
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._pre_select_panel
  if L2_2 then
    L2_2 = A0_2._pre_select_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_checked
    L4_2 = false
    L2_2(L3_2, L4_2)
    A0_2._pre_select_panel = nil
    A0_2._select_index = nil
    L3_2 = A0_2
    L2_2 = A0_2._set_pre_add_gear_id
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._refresh_slot_list_view
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._init_refresh_tips
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L4_2 = nil
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_confirm
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_drop_confirm
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._is_drop_mode
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._trigger_tutorial
    L4_2 = L12_1
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.set_navigation_target
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_drop = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_reroll_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_drop_mode
  L3_2 = not L3_2 and L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_drop_mode
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_reroll
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_drop_mode
  L3_2 = not L3_2 and L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_drop_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_drop_mode
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_drop_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._is_drop_mode
  if L3_2 then
    L3_2 = L2_1
    if L3_2 then
      goto lbl_44
    end
  end
  L3_2 = L1_1
  ::lbl_44::
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_drop_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_drop_mode
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_head_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_drop_mode
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_drop_mode
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_head_tips
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L6_1
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_drop_view = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = L1_2
  L1_2 = L1_2.GetEvolveBuildSelectGearShortDesc
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L3_2 = L2_2
  L2_2 = L2_2.SetEvolveBuildSelectGearShortDesc
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.ForceSave
  L2_2()
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_short_desc
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_buff_desc
  L2_2(L3_2)
end
L0_1._on_btn_buff_simple = L20_1
function L20_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Battle.ActivityEvolveBuild.Mix.BattleEvolveBuildMixPage"
  L1_2(L2_2)
end
L0_1._on_btn_open_mix = L20_1
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._pre_base_slot_panel
  if L2_2 then
    L2_2 = A0_2._pre_base_slot_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_checked
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L3_2 = A1_2
  L2_2 = A1_2.set_checked
  L4_2 = true
  L2_2(L3_2, L4_2)
  A0_2._pre_base_slot_panel = A1_2
end
L0_1._on_base_slot_btn_root = L20_1
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._pre_base_slot_panel
  if L2_2 then
    L2_2 = A0_2._pre_base_slot_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_checked
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_detail_panel_empty_close = L20_1
function L20_1(A0_2, A1_2)
  local L2_2
  L2_2 = G
  L2_2 = L2_2.ActivityEvolveBuildUtils
  L2_2 = L2_2.get_evolve_build_gear_manager
  L2_2 = L2_2()
  if L2_2 ~= nil then
    L2_2.PreAddGearID = A1_2
  end
end
L0_1._set_pre_add_gear_id = L20_1
function L20_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._set_pre_add_gear_id
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIBattleEvolveBuildFinishSelectTask
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.set_battle_pause
  L2_2 = false
  L1_2(L2_2)
end
L0_1._on_dispose = L20_1
function L20_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._init_param
  L1_2 = L1_2.CurCount
  L2_2 = A0_2._init_param
  L2_2 = L2_2.MaxCount
  if L1_2 ~= L2_2 then
    L1_2 = G
    L1_2 = L1_2.ActivityEvolveBuildUtils
    L1_2 = L1_2.get_evolve_build_gear_manager
    L1_2 = L1_2()
    L2_2 = L1_2
    L1_2 = L1_2.HasNoGearForSelected
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      goto lbl_18
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
  goto lbl_26
  ::lbl_18::
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIBattleEvolveBuildFinishSelectTask
  L1_2(L2_2)
  ::lbl_26::
end
L0_1._try_exit = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.BattleInstanceRef
  L1_2 = L1_2.GameWorldRef
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AbilityStatic
  L2_2 = L2_2.DoEvolveBuildSkip
  L3_2 = L1_2
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_exit
  L2_2(L3_2)
end
L0_1._skip_and_exit = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.EvolveBuildModule
  L1_2 = L1_2.LevelInstance
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.EvolveBuildStageExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.LevelID
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.IntroID
  if 0 < L3_2 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.ShowTutorialGuide
    L5_2 = {}
    L6_2 = L2_2.IntroID
    L5_2[0] = L6_2
    L5_2[1] = true
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_btn_intro = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.BattleInstanceRef
  L1_2 = L1_2.GameWorldRef
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AbilityStatic
  L2_2 = L2_2.DoEvolveBuildSkip
  L3_2 = L1_2
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._skip_and_exit
  L2_2(L3_2)
end
L0_1._on_btn_empty_confirm = L20_1
function L20_1(A0_2, A1_2, A2_2)
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
L0_1._on_enter_zoom = L20_1
function L20_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._card_panels
  L1_2 = L1_2[1]
  if L1_2 then
    L1_2 = A0_2._card_panels
    L1_2 = L1_2[1]
    L2_2 = L1_2
    L1_2 = L1_2.get_navigation_btn
    L1_2 = L1_2(L2_2)
    L1_2 = L1_2.gameObject
    return L1_2
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_first_selected_object = L20_1
function L20_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = true
    return L2_2
  end
end
L0_1._is_can_to_zoom = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._init_cards_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_cards_and_slots_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_slots_navigation
  L1_2(L2_2)
  L1_2 = A0_2._top_bar_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._card_panels
  L1_2 = #L1_2
  if 1 < L1_2 then
    L1_2 = {}
    L2_2 = 1
    L3_2 = A0_2._card_panels
    L3_2 = #L3_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = L1_2
      L8_2 = A0_2._card_panels
      L8_2 = L8_2[L5_2]
      L9_2 = L8_2
      L8_2 = L8_2.get_navigation_btn
      L8_2, L9_2 = L8_2(L9_2)
      L6_2(L7_2, L8_2, L9_2)
    end
    L2_2 = G
    L2_2 = L2_2.UIUtils
    L2_2 = L2_2.setup_navigation
    L3_2 = L1_2
    L4_2 = NavigationType
    L4_2 = L4_2.Horizontal
    L2_2(L3_2, L4_2)
  end
end
L0_1._init_cards_navigation = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._card_panels
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._card_panels
    L1_2 = L1_2[1]
    L2_2 = L1_2
    L1_2 = L1_2.get_navigation_btn
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._accessory_slot_list_panel
    L3_2 = L2_2
    L2_2 = L2_2.get_slot_panels
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2[1]
    L4_2 = L3_2
    L3_2 = L3_2.get_navigation_btn
    L3_2 = L3_2(L4_2)
    L4_2 = {}
    L5_2 = L3_2
    L6_2 = L1_2
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L5_2 = G
    L5_2 = L5_2.UIUtils
    L5_2 = L5_2.setup_navigation
    L6_2 = L4_2
    L7_2 = NavigationType
    L7_2 = L7_2.Horizontal
    L8_2 = false
    L9_2 = false
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
end
L0_1._init_cards_and_slots_navigation = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._weapon_slot_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_slot_panels
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._accessory_slot_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.get_slot_panels
  L2_2 = L2_2(L3_2)
  L3_2 = 1
  L4_2 = #L1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L1_2[L6_2]
    if L7_2 then
      L7_2 = L2_2[L6_2]
      if L7_2 then
        L7_2 = {}
        L8_2 = L1_2[L6_2]
        L9_2 = L8_2
        L8_2 = L8_2.get_navigation_btn
        L8_2 = L8_2(L9_2)
        L9_2 = L2_2[L6_2]
        L10_2 = L9_2
        L9_2 = L9_2.get_navigation_btn
        L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
        L7_2[1] = L8_2
        L7_2[2] = L9_2
        L7_2[3] = L10_2
        L7_2[4] = L11_2
        L7_2[5] = L12_2
        L8_2 = G
        L8_2 = L8_2.UIUtils
        L8_2 = L8_2.setup_navigation
        L9_2 = L7_2
        L10_2 = NavigationType
        L10_2 = L10_2.Horizontal
        L11_2 = false
        L12_2 = false
        L8_2(L9_2, L10_2, L11_2, L12_2)
      end
    end
  end
  L3_2 = A0_2._card_panels
  L3_2 = #L3_2
  if 0 < L3_2 then
    L3_2 = A0_2._card_panels
    L3_2 = L3_2[1]
    L4_2 = L3_2
    L3_2 = L3_2.get_navigation_btn
    L3_2 = L3_2(L4_2)
    L4_2 = 1
    L5_2 = #L2_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = L2_2[L7_2]
      L9_2 = L8_2
      L8_2 = L8_2.get_navigation_btn
      L8_2 = L8_2(L9_2)
      L9_2 = L8_2.navigation
      L9_2.selectOnRight = L3_2
      L8_2.navigation = L9_2
    end
  end
end
L0_1._init_slots_navigation = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._detail_panel
    L2_2 = L1_2
    L1_2 = L1_2.is_active
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.set_navigation_target
      L3_2 = A0_2._card_panels
      L3_2 = L3_2[1]
      L4_2 = L3_2
      L3_2 = L3_2.get_navigation_btn
      L3_2 = L3_2(L4_2)
      L3_2 = L3_2.gameObject
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._in_control_exit_click = L20_1
return L0_1
