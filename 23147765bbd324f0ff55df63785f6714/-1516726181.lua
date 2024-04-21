local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.FarmEnemy.FarmUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.FarmEnemy.MultipleDropUtils"
L0_1(L1_1)
L0_1 = "UIText_FarmCocoonPage_HardLevel_UnlockDesc"
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.PlayerModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.FriendModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.FarmModule
L4_1 = G
L4_1 = L4_1.StaminaModule
L4_1 = L4_1.Instance
L5_1 = {}
L5_1.enough = "#FFFFFF"
L5_1.lack = "#C84A32"
L6_1 = G
L6_1 = L6_1.Class
L7_1 = "FarmCocoonPanel"
L8_1 = G
L8_1 = L8_1.BasePanel
L6_1 = L6_1(L7_1, L8_1)
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.StaminaChanged
  L4_2 = A0_2._refresh_stamina
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.StaminaItemUsed
  L4_2 = A0_2._refresh_stamina
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_ui_animation_event
  L1_2(L2_2, L3_2, L4_2)
  A0_2._wave = 1
  A0_2._current_select_level = nil
  A0_2._can_start_in_team = false
  A0_2._should_start_cocoon = false
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_start
  L4_2 = A0_2._on_btn_start_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_wave
  L2_2 = L1_2
  L1_2 = L1_2.register_wave_change_callback
  L3_2 = A0_2._on_wave_changed
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L6_1._on_load = L7_1
function L7_1(A0_2, A1_2, A2_2)
  A0_2._start_check_callback = A1_2
  A0_2._start_check_handler = A2_2
end
L6_1.register_start_check_callback = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._start_callback = A1_2
  A0_2._start_handler = A2_2
  A0_2._can_start_in_team = A3_2
end
L6_1.register_start_callback = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._cocoon_id = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._init_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_level_tab
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_difficulty_tab
  L3_2 = L2_2
  L2_2 = L2_2.try_show_unlock_hint
  L5_2 = A0_2
  L4_2 = A0_2._get_farm_name
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_show_env_buff_hint
  L2_2(L3_2)
end
L6_1.setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_world_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = L1_1.PlayerData
  L3_2 = L3_2.WorldLevel
  L1_2(L2_2, L3_2)
  L1_2 = L4_1.get_stamina_config
  L1_2 = L1_2()
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_stamina
  L5_2 = L1_2.ItemIconPath
  L2_2(L3_2, L4_2, L5_2)
end
L6_1._init_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.CocoonExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._cocoon_id
  L3_2 = A0_2._current_select_level
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_difficulty_tab
  L3_2 = L2_2
  L2_2 = L2_2.init_data
  L4_2 = A0_2._cocoon_id
  L5_2 = L1_2.FarmType
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_difficulty_tab
  L3_2 = L2_2
  L2_2 = L2_2.init_tab
  L5_2 = A0_2
  L4_2 = A0_2._get_farm_unique_name
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._on_difficulty_level_changed
  L6_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L6_1._init_level_tab = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._custom_setup_view
  L1_2(L2_2)
  L1_2 = A0_2._should_start_cocoon
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.invoke_callback
    L2_2 = A0_2._start_callback
    L3_2 = A0_2._start_handler
    L4_2 = A0_2._current_select_level
    L5_2 = A0_2._wave
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  A0_2._should_start_cocoon = false
end
L6_1._on_return_to_top = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  L4_2 = A0_2._current_select_level
  if L4_2 == A1_2 then
    return
  end
  A0_2._current_select_level = A1_2
  A0_2._current_select_index = A2_2
  A0_2._is_locked = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._custom_setup_view
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._try_show_env_buff_hint
  L4_2(L5_2)
end
L6_1._on_difficulty_level_changed = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = tostring
  L2_2 = A0_2.__name
  return L1_2(L2_2)
end
L6_1._get_farm_name = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = tostring
  L2_2 = A0_2.__name
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._cocoon_id
  L1_2 = L1_2 .. L2_2
  return L1_2
end
L6_1._get_farm_unique_name = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.CocoonExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._cocoon_id
  L3_2 = A0_2._current_select_level
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._row = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MappingInfoExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._row
  L2_2 = L2_2.MappingInfoID
  L3_2 = A0_2._current_select_level
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._mapping_info_row = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_info_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_wave_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_stamina
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_environment
  L1_2(L2_2)
  L1_2 = A0_2._row
  L1_2 = L1_2.StageIDList
  L1_2 = L1_2[0]
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_monster
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._mapping_info_row
  L4_2 = L4_2.ShowMonsterList
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_reward
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._mapping_info_row
  L4_2 = L4_2.DisplayItemList
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2._row
  L7_2 = L7_2.FarmType
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_combat_power
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_daily_view
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_layout
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_monster
  L3_2 = L2_2
  L2_2 = L2_2.register_on_move_btn_callback
  L4_2 = A0_2._on_zoom2_item_refresh
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_reward
  L3_2 = L2_2
  L2_2 = L2_2.register_on_move_btn_callback
  L4_2 = A0_2._on_zoom2_item_refresh
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_locked
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._is_locked
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btns_node
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._is_locked
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._is_locked
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_locked_hint
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L0_1
    L5_2 = A0_2._current_select_level
    L2_2(L3_2, L4_2, L5_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_env_buff_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_multiple_drop_tips
  L4_2 = A0_2._row
  L4_2 = L4_2.FarmType
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.layout_left
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_navigation
  L2_2(L3_2)
end
L6_1._custom_setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._row
  L1_2 = L1_2.BuffDesc
  L1_2 = A0_2._row
  L1_2 = L1_2.BuffDesc
  L2_2 = L1_2
  L1_2 = L1_2.IsEmpty
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 ~= nil and L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_environment
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_environment
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A0_2._row
    L4_2 = L4_2.BuffDesc
    L5_2 = G
    L5_2 = L5_2.UITextUtils
    L5_2 = L5_2.GetSkillParams
    L6_2 = A0_2._row
    L6_2 = L6_2.ParamList
    L5_2, L6_2 = L5_2(L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L6_1._setup_environment = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._mapping_info_row
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._mapping_info_row
  L3_2 = L3_2.Desc
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_difficulty
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Cocoon_WorldLevel_Text_"
  L4_2 = tostring
  L5_2 = A0_2._current_select_index
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
end
L6_1._refresh_info_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = A0_2._row
  L2_2 = L2_2.MaxWave
  L4_2 = A0_2
  L3_2 = A0_2._is_available
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = A0_2._is_locked
    L3_2 = 1 < L2_2 and L3_2
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_wave
  L5_2 = L4_2
  L4_2 = L4_2.safe_set_active
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  if L3_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_wave
    L5_2 = L4_2
    L4_2 = L4_2.setup_view
    L6_2 = L1_2
    L7_2 = L2_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
L6_1._refresh_wave_view = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._wave = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_stamina
  L2_2(L3_2)
end
L6_1._on_wave_changed = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._row
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._row
  L1_2 = L1_2.StaminaCost
  L2_2 = A0_2._wave
  L1_2 = L1_2 * L2_2
  L2_2 = L4_1
  L3_2 = L2_2
  L2_2 = L2_2.get_cur_stamina
  L2_2 = L2_2(L3_2)
  L2_2 = L1_2 <= L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_cost
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = L5_1.enough
    if L3_2 then
      goto lbl_27
    end
  end
  L3_2 = L5_1.lack
  ::lbl_27::
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_cost
  L5_2 = G
  L5_2 = L5_2.UIColorUtils
  L5_2 = L5_2.GetColor
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L4_2.color = L5_2
end
L6_1._refresh_stamina = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._row
  L1_2 = L1_2.BuffDesc
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.TextID
  L2_2 = L2_2.empty
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.env_buff_desc_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = {}
  L2_2 = A0_2._row
  L2_2 = L2_2.ParamList
  L2_2 = L2_2.Length
  if L2_2 ~= 0 then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.create_lua_table_from_cs_array
    L3_2 = A0_2._row
    L3_2 = L3_2.ParamList
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.env_buff_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._row
  L4_2 = L4_2.BuffDesc
  L5_2 = table
  L5_2 = L5_2.unpack
  L6_2 = L1_2
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L6_1._setup_env_buff_view = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MultipleDropUtils
  L3_2 = L2_2.GetMultipleDropTypeByFarmType
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = L2_2.GetTopData
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._is_locked
  L5_2 = L4_2 ~= nil and L5_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_multiple_drop_tip
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  if not L5_2 then
    return
  end
  L6_2 = L2_2.GetSignIconPath
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L8_2 = A0_2
  L7_2 = A0_2._async_load_sprite_to
  L9_2 = A0_2._binder
  L9_2 = L9_2.img_icon_multiple_drop
  L10_2 = L6_2
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.text_description
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetTextID
  L9_2 = L4_2.BannerText
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.special_bg
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = L4_2.Multiplier
  L9_2 = L9_2 == 3
  L7_2(L8_2, L9_2)
  L7_2 = G
  L7_2 = L7_2.MultipleDropUtils
  L7_2 = L7_2.setup_tips_num
  L8_2 = L3_2
  L9_2 = A0_2._binder
  L9_2 = L9_2.text_remain_num
  L10_2 = A0_2._binder
  L10_2 = L10_2.text_total_num
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = L4_2.Theme
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_theme_icon
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = L7_2 ~= nil
  L8_2(L9_2, L10_2)
  if L7_2 then
    L9_2 = A0_2
    L8_2 = A0_2.async_load_sprite_to
    L10_2 = A0_2._binder
    L10_2 = L10_2.theme_icon
    L11_2 = L7_2.IconPath
    L8_2(L9_2, L10_2, L11_2)
  end
end
L6_1._setup_multiple_drop_tips = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._row
  L1_2 = L1_2.BuffDesc
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.TextID
  L2_2 = L2_2.empty
  if L1_2 == L2_2 then
    return
  end
  L1_2 = A0_2._is_locked
  L1_2 = not L1_2
  L3_2 = A0_2
  L2_2 = A0_2.is_top_page_or_dialog
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.env_buff_panel
    L3_2 = L2_2
    L2_2 = L2_2.update_hint_eff
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.env_buff_panel
    L3_2 = L2_2
    L2_2 = L2_2.update_hint_eff
    L4_2 = false
    L2_2(L3_2, L4_2)
    A0_2._wait_buff_hint = L1_2
  end
end
L6_1._try_show_env_buff_hint = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._wait_buff_hint
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.env_buff_panel
  L2_2 = L1_2
  L1_2 = L1_2.update_hint_eff
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L6_1._on_first_child_dialog_close = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._is_daily
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._is_available
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_available_time
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_start
  L3_2.interactable = L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_available_time
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_available_time_close
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_available_time
  L3_2(L4_2)
end
L6_1._setup_daily_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.CocoonExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._cocoon_id
  L3_2 = A0_2._current_select_level
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2.OpenDate
  L3_2 = "UIText_Daily_Cocoon_Hint_"
  L4_2 = L2_2.Length
  L3_2 = L3_2 .. L4_2
  L4_2 = L2_2.Length
  if L4_2 == 3 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_available_time
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L3_2
    L8_2 = A0_2
    L7_2 = A0_2._get_available_day_text
    L9_2 = L2_2[0]
    L7_2 = L7_2(L8_2, L9_2)
    L9_2 = A0_2
    L8_2 = A0_2._get_available_day_text
    L10_2 = L2_2[1]
    L8_2 = L8_2(L9_2, L10_2)
    L10_2 = A0_2
    L9_2 = A0_2._get_available_day_text
    L11_2 = L2_2[2]
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  else
    L4_2 = L2_2.Length
    if L4_2 == 4 then
      L4_2 = A0_2._binder
      L4_2 = L4_2.txt_available_time
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetTextID
      L6_2 = L3_2
      L8_2 = A0_2
      L7_2 = A0_2._get_available_day_text
      L9_2 = L2_2[0]
      L7_2 = L7_2(L8_2, L9_2)
      L9_2 = A0_2
      L8_2 = A0_2._get_available_day_text
      L10_2 = L2_2[1]
      L8_2 = L8_2(L9_2, L10_2)
      L10_2 = A0_2
      L9_2 = A0_2._get_available_day_text
      L11_2 = L2_2[2]
      L9_2 = L9_2(L10_2, L11_2)
      L11_2 = A0_2
      L10_2 = A0_2._get_available_day_text
      L12_2 = L2_2[3]
      L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    end
  end
  L4_2 = L2_2.Length
  if L4_2 == 3 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_available_time_close
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L3_2
    L8_2 = A0_2
    L7_2 = A0_2._get_available_day_text
    L9_2 = L2_2[0]
    L7_2 = L7_2(L8_2, L9_2)
    L9_2 = A0_2
    L8_2 = A0_2._get_available_day_text
    L10_2 = L2_2[1]
    L8_2 = L8_2(L9_2, L10_2)
    L10_2 = A0_2
    L9_2 = A0_2._get_available_day_text
    L11_2 = L2_2[2]
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  else
    L4_2 = L2_2.Length
    if L4_2 == 4 then
      L4_2 = A0_2._binder
      L4_2 = L4_2.txt_available_time_close
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetTextID
      L6_2 = L3_2
      L8_2 = A0_2
      L7_2 = A0_2._get_available_day_text
      L9_2 = L2_2[0]
      L7_2 = L7_2(L8_2, L9_2)
      L9_2 = A0_2
      L8_2 = A0_2._get_available_day_text
      L10_2 = L2_2[1]
      L8_2 = L8_2(L9_2, L10_2)
      L10_2 = A0_2
      L9_2 = A0_2._get_available_day_text
      L11_2 = L2_2[2]
      L9_2 = L9_2(L10_2, L11_2)
      L11_2 = A0_2
      L10_2 = A0_2._get_available_day_text
      L12_2 = L2_2[3]
      L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    end
  end
end
L6_1._setup_available_time = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.PropDayOfWeekComponent
  L1_2 = L1_2.IsCocoonDayOfWeekProp
  L2_2 = A0_2._cocoon_id
  return L1_2(L2_2)
end
L6_1._is_daily = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_daily
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._is_daily
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.PropDayOfWeekComponent
    L1_2 = L1_2.IsCocoonDayOfWeekActive
    L2_2 = A0_2._cocoon_id
    L1_2 = not L1_2 or L1_2
  end
  return L1_2
end
L6_1._is_available = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.TextmapStatic
  L2_2 = L2_2.GetText
  L3_2 = "UIText_Daily_Cocoon_Weekly_"
  L4_2 = A1_2
  L3_2 = L3_2 .. L4_2
  return L2_2(L3_2)
end
L6_1._get_available_day_text = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_combat_power_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L5_2 = A0_2
  L4_2 = A0_2._is_available
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = G
    L4_2 = L4_2.FarmUtils
    L4_2 = L4_2.is_stage_hard
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = A0_2._is_locked
      L4_2 = not L4_2
    end
  end
  L2_2(L3_2, L4_2)
end
L6_1._setup_combat_power = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._should_start_cocoon
  if L1_2 then
    return
  end
  L1_2 = A0_2._start_check_callback
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.invoke_callback
    L2_2 = A0_2._start_check_callback
    L3_2 = A0_2._start_check_handler
    L4_2 = A0_2._current_select_level
    L5_2 = A0_2._wave
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    if false == L1_2 then
      return
    end
  end
  L1_2 = L4_1
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_stamina
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._wave
  L3_2 = A0_2._row
  L3_2 = L3_2.StaminaCost
  L2_2 = L2_2 * L3_2
  if L1_2 < L2_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_show
    L2_2 = "Ui.Common.PhysicalExchangeDialog"
    L1_2(L2_2)
    return
  end
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.CheckFarmBanWithHint
  L3_2 = A0_2._row
  L3_2 = L3_2.ID
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_difficulty_tab
  L2_2 = L1_2
  L1_2 = L1_2.update_index_storage
  L3_2 = A0_2._current_select_level
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_generate_recommend_attribute
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.FarmEnemy.FarmTeamEditPage"
  L3_2 = A0_2._on_team_ready
  L4_2 = A0_2
  L5_2 = nil
  L6_2 = A0_2._can_start_in_team
  L6_2 = not L6_2
  L7_2 = true
  L8_2 = A0_2._recommend_attributes
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = L1_2.LuaTable
  L3_2 = L2_2
  L2_2 = L2_2.set_should_check_avatar_dead
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L6_1._on_btn_start_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._can_start_in_team
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.invoke_callback
    L2_2 = A0_2._start_callback
    L3_2 = A0_2._start_handler
    L4_2 = A0_2._current_select_level
    L5_2 = A0_2._wave
    L1_2(L2_2, L3_2, L4_2, L5_2)
  else
    A0_2._should_start_cocoon = true
  end
end
L6_1._on_team_ready = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._row
  L1_2 = L1_2.AutoObtainDamageType
  if L1_2 == false then
    L2_2 = A0_2
    L1_2 = A0_2._try_read_recommend_attribute
    L1_2 = L1_2(L2_2)
    A0_2._recommend_attributes = L1_2
  else
    L2_2 = A0_2
    L1_2 = A0_2._try_cal_recommend_attribute
    L1_2 = L1_2(L2_2)
    A0_2._recommend_attributes = L1_2
  end
end
L6_1._try_generate_recommend_attribute = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._row
  L2_2 = L2_2.DamageType
  return L1_2(L2_2)
end
L6_1._try_read_recommend_attribute = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.RaidUtils
  L1_2 = L1_2.get_monster_ids_by_mapping_info
  L2_2 = A0_2._row
  L2_2 = L2_2.MappingInfoID
  L3_2 = A0_2._row
  L3_2 = L3_2.WorldLevel
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = G
  L2_2 = L2_2.RaidUtils
  L2_2 = L2_2.auto_construct_recommend_attributes
  L3_2 = L1_2
  return L2_2(L3_2)
end
L6_1._try_cal_recommend_attribute = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "TryPlayDoubleRewardMarkAnim" then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_reward
    L3_2 = L2_2
    L2_2 = L2_2.try_play_double_mark_animation
    L2_2(L3_2)
  end
end
L6_1._on_ui_animation_event = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_reward
  L3_2 = L2_2
  L2_2 = L2_2.get_all_reward_btns
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_monster
  L4_2 = L3_2
  L3_2 = L3_2.get_all_monster_btns
  L3_2 = L3_2(L4_2)
  if L2_2 ~= nil then
    L4_2 = #L2_2
    if L4_2 ~= 0 and L3_2 ~= nil then
      L4_2 = #L3_2
      if L4_2 ~= nil then
        goto lbl_21
      end
    end
  end
  do return end
  ::lbl_21::
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = L1_2
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = L1_2
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.UIUtils
  L4_2 = L4_2.setup_multi_line_navigation
  L5_2 = L1_2
  L4_2(L5_2)
end
L6_1._refresh_navigation = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_zoom
  L1_2 = L1_2(L2_2)
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if L1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_difficulty_tab
    L3_2 = L2_2
    L2_2 = L2_2.get_cur_tab_btn_object
    return L2_2(L3_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if L1_2 == L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.panel_monster
      L3_2 = L2_2
      L2_2 = L2_2.get_first_selected_object
      return L2_2(L3_2)
    end
  end
end
L6_1.get_first_selected_object = L7_1
function L7_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group_zoom_1
    L2_2.alpha = 1
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
    end
  end
end
L6_1._on_enter_zoom = L7_1
function L7_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group_zoom_1
    L2_2.alpha = 0.5
  end
end
L6_1._on_leave_zoom = L7_1
return L6_1
