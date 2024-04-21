local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.FarmEnemy.FarmUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FarmElementPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.PlayerModule
L2_1 = G
L2_1 = L2_1.StaminaModule
L2_1 = L2_1.Instance
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.FarmModule
L4_1 = {}
L4_1.enough = "#FFFFFF"
L4_1.lack = "#C84A32"
function L5_1(A0_2)
  local L1_2
  A0_2._farm_element_id = 0
  A0_2._current_level = nil
end
L0_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_start
  L4_2 = A0_2._on_btn_start
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.StaminaChanged
  L4_2 = A0_2._refresh_cost_check
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.StaminaItemUsed
  L4_2 = A0_2._refresh_cost_check
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh_view
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_difficulty_tab
    L3_2 = L2_2
    L2_2 = L2_2.try_show_unlock_hint
    L5_2 = A0_2
    L4_2 = A0_2._get_farm_name
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_view_active_change = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._start_check_callback = A1_2
  A0_2._start_check_handler = A2_2
end
L0_1.register_start_check_callback = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._start_callback = A1_2
  A0_2._start_handler = A2_2
end
L0_1.register_start_callback = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._func_get_stage = A1_2
  A0_2._handler_get_stage = A2_2
end
L0_1.set_func_get_stage = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._farm_element_id = A1_2
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
end
L0_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L2_1.get_stamina_config
  L1_2 = L1_2()
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_cost
  L5_2 = L1_2.ItemIconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_world_level
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_1.PlayerData
  L4_2 = L4_2.WorldLevel
  L2_2(L3_2, L4_2)
end
L0_1._init_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_difficulty_tab
  L2_2 = L1_2
  L1_2 = L1_2.init_data
  L3_2 = A0_2._farm_element_id
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_difficulty_tab
  L2_2 = L1_2
  L1_2 = L1_2.init_tab
  L4_2 = A0_2
  L3_2 = A0_2._get_farm_unique_name
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._on_difficulty_level_changed
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._init_level_tab = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = tostring
  L2_2 = A0_2.__name
  return L1_2(L2_2)
end
L0_1._get_farm_name = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = tostring
  L2_2 = A0_2.__name
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._farm_element_id
  L1_2 = L1_2 .. L2_2
  return L1_2
end
L0_1._get_farm_unique_name = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = A0_2._current_level
  if L4_2 == A1_2 then
    return
  end
  A0_2._current_level = A1_2
  A0_2._current_index = A2_2
  A0_2._is_locked = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._update_config
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_view
  L4_2(L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_env_buff
  L5_2 = L4_2
  L4_2 = L4_2.try_show_env_buff_hint
  L6_2 = A0_2._is_locked
  L6_2 = not L6_2
  L4_2(L5_2, L6_2)
end
L0_1._on_difficulty_level_changed = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MappingInfoExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._config_row
  L2_2 = L2_2.MappingInfoID
  L3_2 = A0_2._current_level
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_start
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A0_2._is_locked
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_info_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_cost_view
  L4_2 = A0_2._config_row
  L4_2 = L4_2.StaminaCost
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_hint_view
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_env_buff
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._config_row
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_monster
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2.ShowMonsterList
  L5_2 = A0_2._stage_id
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_reward
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2.DisplayItemList
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_reward
  L3_2 = L2_2
  L2_2 = L2_2.setup_double_view
  L4_2 = A0_2._farm_element_id
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_navigation
  L2_2(L3_2)
end
L0_1._refresh_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.FarmElementConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._farm_element_id
  L3_2 = A0_2._current_level
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._config_row = L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._func_get_stage
  L3_2 = A0_2._handler_get_stage
  L4_2 = A0_2._current_level
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._stage_id = L1_2
end
L0_1._update_config = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.Name
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.Desc
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_difficulty
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_Cocoon_WorldLevel_Text_"
  L5_2 = tostring
  L6_2 = A0_2._current_index
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeNextFrame
  function L3_2()
    local L0_3, L1_3
    L0_3 = CS
    L0_3 = L0_3.UnityEngine
    L0_3 = L0_3.UI
    L0_3 = L0_3.LayoutRebuilder
    L0_3 = L0_3.ForceRebuildLayoutImmediate
    L1_3 = A0_2._binder
    L1_3 = L1_3.layout_desc
    L0_3(L1_3)
  end
  L2_2(L3_2)
end
L0_1._setup_info_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_cost
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_cost_check
  L2_2(L3_2)
end
L0_1._setup_cost_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.FarmUtils
  L1_2 = L1_2.is_stage_hard
  L2_2 = A0_2._stage_id
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock_hint
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
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_warn
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 or L4_2
  if L1_2 then
    L4_2 = A0_2._is_locked
    L4_2 = not L4_2
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._is_locked
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_lock_hint
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_FarmCocoonPage_HardLevel_UnlockDesc"
    L5_2 = A0_2._current_level
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._setup_hint_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._config_row
  if L1_2 == nil then
    return
  end
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_stamina
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._config_row
  L2_2 = L2_2.StaminaCost
  L1_2 = L1_2 >= L2_2
  if L1_2 then
    L2_2 = L4_1.enough
    if L2_2 then
      goto lbl_20
    end
  end
  L2_2 = L4_1.lack
  ::lbl_20::
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_cost
  L4_2 = G
  L4_2 = L4_2.UIColorUtils
  L4_2 = L4_2.GetColor
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L3_2.color = L4_2
end
L0_1._refresh_cost_check = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._is_locked
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
    L1_2 = L1_2(L2_2, L3_2)
    if false == L1_2 then
      return
    end
  end
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_stamina
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._config_row
  L2_2 = L2_2.StaminaCost
  if L1_2 < L2_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_show
    L2_2 = "Ui.Common.PhysicalExchangeDialog"
    L1_2(L2_2)
  else
    L1_2 = L3_1
    L2_2 = L1_2
    L1_2 = L1_2.CheckFarmBanWithHint
    L3_2 = A0_2._farm_element_id
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      return
    else
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_difficulty_tab
      L2_2 = L1_2
      L1_2 = L1_2.update_index_storage
      L3_2 = A0_2._current_level
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
      L6_2 = false
      L7_2 = true
      L8_2 = A0_2._recommend_attributes
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
      L2_2 = L1_2.LuaTable
      L3_2 = L2_2
      L2_2 = L2_2.set_should_check_avatar_dead
      L4_2 = true
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_btn_start = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._config_row
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
L0_1._try_generate_recommend_attribute = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._config_row
  L2_2 = L2_2.DamageType
  return L1_2(L2_2)
end
L0_1._try_read_recommend_attribute = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.RaidUtils
  L1_2 = L1_2.get_monster_ids_by_mapping_info
  L2_2 = A0_2._config_row
  L2_2 = L2_2.MappingInfoID
  L3_2 = A0_2._config_row
  L3_2 = L3_2.WorldLevel
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = G
  L2_2 = L2_2.RaidUtils
  L2_2 = L2_2.auto_construct_recommend_attributes
  L3_2 = L1_2
  return L2_2(L3_2)
end
L0_1._try_cal_recommend_attribute = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._start_callback
  L3_2 = A0_2._start_handler
  L4_2 = A0_2._current_level
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_team_ready = L5_1
function L5_1(A0_2)
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
L0_1._refresh_navigation = L5_1
function L5_1(A0_2)
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
L0_1.get_first_selected_object = L5_1
return L0_1
