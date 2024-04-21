local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Select.BattleEvolveBuildSelectGearCardPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Select.BattleEvolveBuildSelectGearTagPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Select.BattleEvolveBuildSelectGearPropPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Select.BattleEvolveBuildSelectGearTypePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.ActivityEvolveBuildUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleEvolveBuildSelectGearCardPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_EvolveBuild_LevelUp"
L2_1 = "UI_EvolveCardItem_SelcetedHint"
L3_1 = "UI_BattleSkillEvolveBtn_FadeOut"
L4_1 = "UI_BattleSkillEvolveBtn_Delete"
function L5_1(A0_2)
  local L1_2
  A0_2._is_selected = false
end
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._call_back = A1_2
  A0_2._call_back_self = A2_2
end
L0_1.register_callback = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._delete_anim_end_callback = A1_2
  A0_2._delete_anim_end_callback_self = A2_2
end
L0_1.register_delete_anim_end_callback = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_select
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_tag
  L4_2 = A0_2._on_btn_select
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_desc
  L4_2 = A0_2._on_btn_select
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_ui_animation_event
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_gamepad_selected
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_in_control_settings
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._setup_in_control_settings
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
  end
  L1_2.onDeselectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.rpg_anim_event_root
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L4_1
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A0_2._delete_anim_end_callback
    L2_3 = A0_2._delete_anim_end_callback_self
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_in_control_settings
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2.index = A2_2
  L3_2 = A1_2.GearConfig
  L3_2 = L3_2.GearID
  A0_2.gear_id = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.TutorialSupportModule
  L4_2 = L3_2
  L3_2 = L3_2.SetNodeDynamicKey
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_root
  L5_2 = L5_2.transform
  L5_2 = L5_2.gameObject
  L6_2 = A0_2.gear_id
  L3_2(L4_2, L5_2, L6_2)
  A0_2._select_info = A1_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ActivityEvolveBuildGearExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._select_info
  L4_2 = L4_2.GearConfig
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.GetMazeBuff
  L4_2 = L4_2(L5_2)
  A0_2._maze_buff_row = L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_buff_title
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = A0_2._maze_buff_row
  L6_2 = L6_2.BuffName
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.setup_buff_desc
  L4_2(L5_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ActivityEvolveBuildGearCollectionExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A0_2._select_info
  L5_2 = L5_2.GearConfig
  L5_2 = L5_2.GearID
  L4_2 = L4_2(L5_2)
  A0_2._gear_collection_row = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._init_extra_effect_ids
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_lv
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_gear_prop
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_resonance_prop
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_type
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_tags
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_damage_types
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.safe_set_active
  L6_2 = true
  L4_2(L5_2, L6_2)
end
L0_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_cur_lv
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L4_2 = G
  L4_2 = L4_2.ActivityEvolveBuildUtils
  L4_2 = L4_2.get_evolve_build_gear_manager
  L4_2 = L4_2()
  L5_2 = L4_2
  L4_2 = L4_2.TryGetGearLevel
  L6_2 = A0_2._select_info
  L6_2 = L6_2.GearConfig
  L6_2 = L6_2.GearID
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_next_lv
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L4_2 = A0_2._select_info
  L4_2 = L4_2.GearConfig
  L4_2 = L4_2.Level
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_update_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._gear_collection_row
  L3_2 = L3_2.Type
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.EvolveGearType
  L4_2 = L4_2.Forge
  L3_2 = L3_2 ~= L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_max_lv_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._setup_lv = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.BattleEvolveBuildSelectGearPropPanel
  L4_2 = G
  L4_2 = L4_2.BattleEvolveBuildSelectGearPropPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._gear_prop_panel = L1_2
  L1_2 = A0_2._gear_prop_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_gear_prop
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._gear_prop_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._select_info
  L3_2 = L3_2.GearConfig
  L3_2 = L3_2.GearID
  L1_2(L2_2, L3_2)
end
L0_1._setup_gear_prop = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ActivityEvolveGearForgeMaterialExcelTable
  L1_2 = L1_2.GetResonanceGearID
  L2_2 = A0_2._select_info
  L2_2 = L2_2.GearConfig
  L2_2 = L2_2.GearID
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 ~= nil
  A0_2._show_resonance_gear = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_echo
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._show_resonance_gear
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._show_resonance_gear
  if L2_2 then
    L2_2 = A0_2._resonance_prop_panel
    if L2_2 == nil then
      L3_2 = A0_2
      L2_2 = A0_2.create_panel
      L4_2 = G
      L4_2 = L4_2.BattleEvolveBuildSelectGearPropPanel
      L5_2 = G
      L5_2 = L5_2.BattleEvolveBuildSelectGearPropPanelBinder
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      A0_2._resonance_prop_panel = L2_2
      L2_2 = A0_2._resonance_prop_panel
      L3_2 = L2_2
      L2_2 = L2_2.bind
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_echo_gear
      L2_2(L3_2, L4_2)
    end
    L2_2 = A0_2._resonance_prop_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_resonance_prop = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._gear_type_panel
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.create_panel
    L3_2 = G
    L3_2 = L3_2.BattleEvolveBuildSelectGearTypePanel
    L4_2 = G
    L4_2 = L4_2.BattleEvolveBuildSelectGearTypePanelBinder
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._gear_type_panel = L1_2
    L1_2 = A0_2._gear_type_panel
    L2_2 = L1_2
    L1_2 = L1_2.bind
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_type_panel
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._gear_type_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._gear_collection_row
  L3_2 = L3_2.Type
  L1_2(L2_2, L3_2)
end
L0_1._setup_type = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._gear_collection_row
  L2_2 = L2_2.TagList
  L1_2 = L1_2(L2_2)
  A0_2._tag_table = L1_2
  L1_2 = A0_2._gear_collection_row
  L1_2 = L1_2.Type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.EvolveGearType
  L2_2 = L2_2.Plugin
  if L1_2 == L2_2 then
    L1_2 = A0_2._gear_collection_row
    L1_2 = L1_2.ElementList
    if L1_2 then
      L1_2 = A0_2._gear_collection_row
      L1_2 = L1_2.ElementList
      L1_2 = L1_2.Length
      if 0 < L1_2 then
        L1_2 = G
        L1_2 = L1_2.Utils
        L1_2 = L1_2.create_lua_table_from_cs_array
        L2_2 = A0_2._gear_collection_row
        L2_2 = L2_2.ElementList
        L1_2 = L1_2(L2_2)
        A0_2._tag_table = L1_2
      end
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_tags
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._tag_table
  L4_2 = A0_2._on_tag_click
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = 1
  L2_2 = A0_2._tag_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.panel_tags
    L6_2 = L5_2
    L5_2 = L5_2.get_panel_by_index
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = L5_2
    L5_2 = L5_2.setup_connect_view
    L7_2 = A0_2._gear_collection_row
    L7_2 = L7_2.Type
    L5_2(L6_2, L7_2)
  end
end
L0_1._setup_tags = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._gear_collection_row
  L1_2 = L1_2.Type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.EvolveGearType
  L2_2 = L2_2.Plugin
  if L1_2 ~= L2_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.create_lua_table_from_cs_array
    L2_2 = A0_2._gear_collection_row
    L2_2 = L2_2.ElementList
    L1_2 = L1_2(L2_2)
    L2_2 = G
    L2_2 = L2_2.ActivityEvolveBuildUtils
    L2_2 = L2_2.set_damage_type_view
    L3_2 = A0_2._gear_collection_row
    L3_2 = L3_2.ID
    L4_2 = A0_2._binder
    L4_2 = L4_2.damage_type_list
    L5_2 = L1_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_random_damage
    L2_2(L3_2, L4_2, L5_2, L6_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.damage_type_list
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_damage_types = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = A0_2._gear_collection_row
  if L2_2 then
    L2_2 = A0_2._gear_collection_row
    L2_2 = L2_2.TagList
    if L2_2 ~= nil then
      L2_2 = 0
      L3_2 = A0_2._gear_collection_row
      L3_2 = L3_2.TagList
      L3_2 = L3_2.Length
      L3_2 = L3_2 - 1
      L4_2 = 1
      for L5_2 = L2_2, L3_2, L4_2 do
        L6_2 = CS
        L6_2 = L6_2.RPG
        L6_2 = L6_2.GameCore
        L6_2 = L6_2.EvolveBuildTagConfigExcelTable
        L6_2 = L6_2.GetData
        L7_2 = A0_2._gear_collection_row
        L7_2 = L7_2.TagList
        L7_2 = L7_2[L5_2]
        L6_2 = L6_2(L7_2)
        L7_2 = table
        L7_2 = L7_2.insert
        L8_2 = L1_2
        L9_2 = L6_2.ExtraEffectID
        L7_2(L8_2, L9_2)
      end
    end
  end
  L2_2 = {}
  A0_2._extra_effect_array = L2_2
  L2_2 = 1
  L3_2 = #L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._extra_effect_array
    L7_2 = L5_2 - 1
    L8_2 = L1_2[L5_2]
    L6_2[L7_2] = L8_2
  end
  L2_2 = A0_2._extra_effect_array
  L3_2 = #L1_2
  L2_2.Length = L3_2
end
L0_1._init_extra_effect_ids = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.EvolveBuildUtils
  L1_2 = L1_2.SetMazeBuffDesc
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_buff_desc
  L3_2 = A0_2._maze_buff_row
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.Prefs
  L4_2 = L4_2.User
  L5_2 = L4_2
  L4_2 = L4_2.GetEvolveBuildSelectGearShortDesc
  L4_2 = L4_2(L5_2)
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1.setup_buff_desc = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._has_extra_effect
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.Common.ExtraDesc.ExtraDescListDialog"
    L3_2 = A0_2._extra_effect_array
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_tag_click = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._extra_effect_array
  if L1_2 then
    L1_2 = A0_2._extra_effect_array
    L1_2 = L1_2.Length
  end
  L1_2 = 0 < L1_2 or L1_2
  return L1_2
end
L0_1._has_extra_effect = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_selected
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_tag_click
    L1_2(L2_2)
  else
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.invoke_callback
    L2_2 = A0_2._call_back
    L3_2 = A0_2._call_back_self
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_btn_select = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._call_back
  L3_2 = A0_2._call_back_self
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 8
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_rect_content
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_gamepad_selected = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_in_control_settings
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  if L3_2 then
    L3_2 = A0_2._is_selected
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_in_control_input_switch = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.mono_in_control_move_content
    L2_2.ActionEnabled = A1_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_keymap_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2 or L4_2
    if A1_2 then
      L5_2 = A0_2
      L4_2 = A0_2._has_extra_effect
      L4_2 = L4_2(L5_2)
    end
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_in_control_settings = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == "EvolveBuildSelectGearPageStartFadeOut" then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayFromBegin
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_root
    L4_2 = L3_1
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_ui_animation_event = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._gear_collection_row
  L1_2 = L1_2.Type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.EvolveGearType
  L2_2 = L2_2.Forge
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1.is_forge_card = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._show_resonance_gear
  return L1_2
end
L0_1.is_resonance_card = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._is_selected = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_checked = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
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
L0_1.play_select_animation = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
end
L0_1.play_delete_animation = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L0_1.get_navigation_btn = L5_1
return L0_1
