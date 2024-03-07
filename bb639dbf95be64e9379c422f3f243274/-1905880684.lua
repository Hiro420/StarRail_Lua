local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritSkillCoreEquip.AetherSpiritSkillCoreEquipPageTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritSkillCoreEquip.AetherSpiritSkillCoreEquipPageTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritSkillCoreEquip.AetherSpiritSkillCoreEquipPageListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritSkillCoreEquip.AetherSpiritSkillCoreEquipPageListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritSkillCoreEquip.AetherSpiritSkillCoreEquipPageInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritSkillCoreEquip.AetherSpiritSkillCoreEquipPageInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritMainDetail.AetherSpiritMainDetailPassiveSkillSlotPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritMainDetail.AetherSpiritMainDetailPassiveSkillSlotPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritSkillCoreEquip.AetherSpiritSkillCoreEquipPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritSkillCoreEquipPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AetherDivideModule
L1_1 = L1_1.AetherOutfitData
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.InventoryModule
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AetherSpiritSkillCoreEquipPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._spirit_data = A1_2
  L3_2 = A2_2.SlotIndex
  A0_2._cur_slot_index = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._init_slot_table
  L3_2(L4_2)
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  A0_2._origin_skill_slot_table = L1_2
  L1_2 = A0_2._spirit_data
  L1_2 = L1_2.AetherMonsterAvatarSkillSlotData
  L1_2 = L1_2.AetherMonsterAvatarSkillSingleSlotDict
  L2_2 = L1_2
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2(L2_2)
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L2_2 = L2_2.Value
    L3_2 = {}
    L4_2 = L2_2.SlotIndex
    L3_2.SlotIndex = L4_2
    L4_2 = L2_2.Status
    L3_2.Status = L4_2
    L4_2 = L2_2.SkillCoreData
    L3_2.SkillCoreData = L4_2
    L4_2 = L2_2.UnlockPromotion
    L3_2.UnlockPromotion = L4_2
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2._origin_skill_slot_table
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._cur_slot_index
    L5_2 = L3_2.SlotIndex
    if L4_2 == L5_2 then
      A0_2._skill_slot_data = L3_2
    end
  end
  L2_2 = {}
  A0_2._skill_slot_table = L2_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.deep_copy
  L3_2 = A0_2._origin_skill_slot_table
  L2_2 = L2_2(L3_2)
  A0_2._skill_slot_table = L2_2
  L2_2 = A0_2._skill_slot_data
  L2_2 = L2_2.Status
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonsterAvatarSkillSlotStatus
  L3_2 = L3_2.Equipped
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._set_cur_slot_index
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._init_slot_table = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = 1
  L3_2 = A0_2._skill_slot_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._skill_slot_table
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.Status
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.MonsterAvatarSkillSlotStatus
    L7_2 = L7_2.NotEquipped
    if L6_2 == L7_2 then
      A0_2._cur_slot_index = L5_2
      L6_2 = A0_2._skill_slot_table
      L6_2 = L6_2[L5_2]
      A0_2._skill_slot_data = L6_2
      return
    end
  end
  if A1_2 then
    A0_2._cur_slot_index = 1
    L2_2 = A0_2._skill_slot_table
    L2_2 = L2_2[1]
    A0_2._skill_slot_data = L2_2
  end
end
L0_1._set_cur_slot_index = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L3_1
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
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = false
    return L2_2
  end
end
L0_1._is_can_to_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._skill_core_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._open_callback = A1_2
  A0_2._open_callback_self = A2_2
end
L0_1.register_on_equip_open_callback = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_click_close
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_click_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_save
  L4_2 = A0_2._on_click_save
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_detach_all
  L4_2 = A0_2._on_click_detach_all
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AetherSpiritOnEquipSkillCore
  L4_2 = L0_1._on_skill_core_equipped
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AetherSpiritOnTakeOffSkillCore
  L4_2 = L0_1._on_skill_core_detached
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_prev_next
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AetherSpiritSkillCoreEquipPageListPanel
  L4_2 = G
  L4_2 = L4_2.AetherSpiritSkillCoreEquipPageListPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._skill_core_list_panel = L1_2
  L1_2 = A0_2._skill_core_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_click_skill_core_item
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._skill_core_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_filter_callback
  L3_2 = A0_2._on_filter
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._skill_core_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_skill_core_list_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AetherSpiritMainDetailPassiveSkillSlotPanel
  L4_2 = G
  L4_2 = L4_2.AetherSpiritMainDetailPassiveSkillSlotPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._skill_slot_panel = L1_2
  L1_2 = A0_2._skill_slot_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_click_skill_slot
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._skill_slot_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_passive_skill_core_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._skill_slot_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_game_pad_navigation_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = {}
  A0_2._all_skill_core_table = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._get_all_skill_core_table
  L1_2(L2_2)
  L1_2 = {}
  A0_2._current_type_skill_core_table = L1_2
  A0_2._skill_core_data = nil
  A0_2._send_counter = 0
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemSubType
  L2_2 = L2_2.AetherSkill
  L1_2[1] = L2_2
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.GetItemsBySubTypes
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.AetherDividePassiveSkillExcelTable
    L7_2 = L7_2.GetData
    L8_2 = L2_2[L6_2]
    L8_2 = L8_2.ConfigID
    L7_2 = L7_2(L8_2)
    if L7_2 ~= nil then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._all_skill_core_table
      L9_2 = L2_2[L6_2]
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1._get_all_skill_core_table = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._on_refresh
  L1_2(L2_2)
  L1_2 = A0_2._open_callback
  if L1_2 then
    L1_2 = A0_2._open_callback_self
    if L1_2 then
      L1_2 = A0_2._open_callback
      L2_2 = A0_2._open_callback_self
      L1_2(L2_2)
    end
  end
  L1_2 = A0_2._skill_slot_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_custom_view
  L3_2 = A0_2._skill_slot_table
  L4_2 = true
  L5_2 = A0_2._cur_slot_index
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = 1
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._skill_slot_panel
    L1_3 = L0_3
    L0_3 = L0_3.set_selected_by_slot_index
    L2_3 = A0_2._skill_slot_data
    L2_3 = L2_3.SlotIndex
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._init_ui_navigation
    L0_3(L1_3)
    L0_3 = A0_2._skill_slot_panel
    L1_3 = L0_3
    L0_3 = L0_3.get_slot_panel_by_idx
    L2_3 = A0_2._cur_slot_index
    L2_3 = L2_3 - 1
    L0_3 = L0_3(L1_3, L2_3)
    A0_2._clicked_slot_panel = L0_3
  end
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_current_type_skill_core_table
  L1_2(L2_2)
  L1_2 = A0_2._skill_core_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._current_type_skill_core_table
  L4_2 = A0_2._spirit_data
  L5_2 = A0_2._skill_slot_table
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._current_type_skill_core_table
  L1_2 = L1_2[1]
  A0_2._skill_core_data = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_sub_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._skill_slot_data
  L3_2 = L3_2.SkillTypeName
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_navigation_target
  L4_2 = A0_2
  L3_2 = A0_2.get_first_selected_object
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.deep_copy
  L2_2 = A0_2._all_skill_core_table
  L1_2 = L1_2(L2_2)
  A0_2._current_type_skill_core_table = L1_2
end
L0_1._get_current_type_skill_core_table = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._skill_slot_data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MonsterAvatarSkillSlotStatus
  L2_2 = L2_2.Equipped
  if L1_2 == L2_2 then
    L1_2 = A0_2._skill_slot_data
    L1_2 = L1_2.SkillCoreData
    return L1_2
  end
  L1_2 = nil
  return L1_2
end
L0_1._get_cur_slot_equipped_skill_core_data = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  A0_2._skill_core_data = A1_2
  L3_2 = 1
  L4_2 = A0_2._skill_slot_table
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._skill_slot_table
    L7_2 = L7_2[L6_2]
    L8_2 = L7_2.Status
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.Client
    L9_2 = L9_2.MonsterAvatarSkillSlotStatus
    L9_2 = L9_2.Equipped
    if L8_2 == L9_2 then
      L8_2 = L7_2.SkillCoreData
      L8_2 = L8_2.ConfigID
      L9_2 = A1_2.ConfigID
      if L8_2 == L9_2 then
        L8_2 = {}
        L9_2 = L7_2.SlotIndex
        L8_2.SlotIndex = L9_2
        L9_2 = CS
        L9_2 = L9_2.RPG
        L9_2 = L9_2.Client
        L9_2 = L9_2.MonsterAvatarSkillSlotStatus
        L9_2 = L9_2.NotEquipped
        L8_2.Status = L9_2
        L8_2.SkillCoreData = nil
        L9_2 = L7_2.UnlockPromotion
        L8_2.UnlockPromotion = L9_2
        L9_2 = A0_2._skill_slot_table
        L9_2[L6_2] = L8_2
        L10_2 = A0_2
        L9_2 = A0_2._set_cur_slot_index
        L11_2 = true
        L9_2(L10_2, L11_2)
        L10_2 = A0_2
        L9_2 = A0_2._refresh_skillslot_list
        L9_2(L10_2)
        L10_2 = A2_2
        L9_2 = A2_2.set_selected_slot
        L11_2 = nil
        L9_2(L10_2, L11_2)
        L9_2 = A0_2._skill_core_list_panel
        L10_2 = L9_2
        L9_2 = L9_2.set_skill_slot_table
        L11_2 = A0_2._skill_slot_table
        L9_2(L10_2, L11_2)
        L9_2 = CS
        L9_2 = L9_2.RPG
        L9_2 = L9_2.Client
        L9_2 = L9_2.GlobalVars
        L9_2 = L9_2.s_AudioManager
        L10_2 = L9_2
        L9_2 = L9_2.PostEvent
        L11_2 = "Ev_sfx_ui_feedback_activity_aetherDivide_skillPage_unLoad"
        L9_2(L10_2, L11_2)
        return
      end
    end
  end
  L3_2 = nil
  L4_2 = 1
  L5_2 = A0_2._skill_slot_table
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._skill_slot_table
    L8_2 = L8_2[L7_2]
    L9_2 = L8_2.Status
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.Client
    L10_2 = L10_2.MonsterAvatarSkillSlotStatus
    L10_2 = L10_2.NotEquipped
    if L9_2 == L10_2 then
      L3_2 = L7_2
      break
    end
  end
  if L3_2 == nil then
    L4_2 = G
    L4_2 = L4_2.NotifyManager
    L4_2 = L4_2.notify
    L5_2 = G
    L5_2 = L5_2.CS
    L5_2 = L5_2.NotifyType
    L5_2 = L5_2.UIPileToastMessageTextID
    L6_2 = "UIText_AetherDivide_Spirit_Skill_SkillMax"
    L4_2(L5_2, L6_2)
    return
  end
  L4_2 = {}
  L5_2 = A0_2._cur_slot_index
  L4_2.SlotIndex = L5_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.MonsterAvatarSkillSlotStatus
  L5_2 = L5_2.Equipped
  L4_2.Status = L5_2
  L5_2 = A0_2._skill_core_data
  L4_2.SkillCoreData = L5_2
  L5_2 = A0_2._skill_slot_table
  L6_2 = A0_2._cur_slot_index
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.UnlockPromotion
  L4_2.UnlockPromotion = L5_2
  L5_2 = A0_2._skill_slot_table
  L6_2 = A0_2._cur_slot_index
  L5_2[L6_2] = L4_2
  L5_2 = A0_2._clicked_slot_panel
  L7_2 = A0_2
  L6_2 = A0_2._set_cur_slot_index
  L8_2 = true
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2._refresh_skillslot_list
  L6_2(L7_2)
  L7_2 = A2_2
  L6_2 = A2_2.set_selected_slot
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._skill_core_list_panel
  L7_2 = L6_2
  L6_2 = L6_2.set_skill_slot_table
  L8_2 = A0_2._skill_slot_table
  L6_2(L7_2, L8_2)
  L7_2 = L5_2
  L6_2 = L5_2.play_equip_anim
  L6_2(L7_2)
end
L0_1._on_click_skill_core_item = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._skill_core_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.refresh_list
  L4_2 = false
  L5_2 = A0_2._skill_slot_table
  L2_2(L3_2, L4_2, L5_2)
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._set_cur_slot_index
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_skillslot_list
  L2_2(L3_2)
end
L0_1._refresh_skillcore_and_skillslot = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._skill_slot_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh_skill_slot
  L3_2 = A0_2._skill_slot_table
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._skill_slot_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_selected_by_slot_index
  L3_2 = A0_2._cur_slot_index
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._skill_slot_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_slot_panel_by_idx
  L3_2 = A0_2._cur_slot_index
  L3_2 = L3_2 - 1
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._clicked_slot_panel = L1_2
end
L0_1._refresh_skillslot_list = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.BPLAIFAEPBN
  L3_2 = A0_2._spirit_data
  L3_2 = L3_2.ID
  L4_2 = A0_2._skill_slot_data
  L4_2 = L4_2.SlotIndex
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_click_detach_btn = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2.Status
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.MonsterAvatarSkillSlotStatus
  L5_2 = L5_2.Locked
  if L4_2 == L5_2 then
    if not A2_2 then
      L4_2 = G
      L4_2 = L4_2.TextmapStatic
      L4_2 = L4_2.GetText
      L5_2 = "ChallengeMazeCondition_Level"
      L6_2 = A1_2.UnlockPromotion
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = G
      L5_2 = L5_2.NotifyManager
      L5_2 = L5_2.notify
      L6_2 = G
      L6_2 = L6_2.CS
      L6_2 = L6_2.NotifyType
      L6_2 = L6_2.UIPileToastMessageString
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
    end
    return
  end
  A0_2._skill_slot_data = A1_2
  L4_2 = A1_2.SlotIndex
  A0_2._cur_slot_index = L4_2
  A0_2._clicked_slot_panel = A3_2
  L4_2 = A0_2._skill_slot_data
  L4_2 = L4_2.Status
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.MonsterAvatarSkillSlotStatus
  L5_2 = L5_2.NotEquipped
  if L4_2 == L5_2 then
    L4_2 = A0_2._skill_slot_panel
    L5_2 = L4_2
    L4_2 = L4_2.set_selected_by_slot_index
    L6_2 = A0_2._cur_slot_index
    L4_2(L5_2, L6_2)
    return
  end
  L4_2 = {}
  L5_2 = A0_2._cur_slot_index
  L4_2.SlotIndex = L5_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.MonsterAvatarSkillSlotStatus
  L5_2 = L5_2.NotEquipped
  L4_2.Status = L5_2
  L4_2.SkillCoreData = nil
  L5_2 = A0_2._skill_slot_data
  L5_2 = L5_2.UnlockPromotion
  L4_2.UnlockPromotion = L5_2
  L5_2 = A0_2._skill_slot_table
  L6_2 = A0_2._cur_slot_index
  L5_2[L6_2] = L4_2
  A0_2._skill_slot_data = L4_2
  L5_2 = A0_2._skill_core_list_panel
  L6_2 = L5_2
  L5_2 = L5_2.set_skill_slot_table
  L7_2 = A0_2._skill_slot_table
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._refresh_skillslot_list
  L5_2(L6_2)
  L5_2 = A0_2._skill_core_list_panel
  L6_2 = L5_2
  L5_2 = L5_2.get_shown_item_data_skillcore_id
  L7_2 = A1_2.SkillCoreData
  L7_2 = L7_2.ConfigID
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 ~= nil then
    L7_2 = L5_2
    L6_2 = L5_2.set_selected_slot
    L8_2 = nil
    L6_2(L7_2, L8_2)
  end
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.GlobalVars
  L6_2 = L6_2.s_AudioManager
  L7_2 = L6_2
  L6_2 = L6_2.PostEvent
  L8_2 = "Ev_sfx_ui_feedback_activity_aetherDivide_skillPage_unLoad"
  L6_2(L7_2, L8_2)
end
L0_1._on_click_skill_slot = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._on_skill_core_equipped_or_detached
  L2_2(L3_2)
end
L0_1._on_skill_core_equipped = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._on_skill_core_equipped_or_detached
  L2_2(L3_2)
end
L0_1._on_skill_core_detached = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._send_counter
  L1_2 = L1_2 - 1
  A0_2._send_counter = L1_2
  L1_2 = A0_2._send_counter
  if L1_2 == 0 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_AetherDivide_Spirit_Skill_Saved"
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L0_1._on_skill_core_equipped_or_detached = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._current_type_skill_core_table = A1_2
  L2_2 = A1_2[1]
  A0_2._skill_core_data = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.set_navigation_target
  L5_2 = A0_2
  L4_2 = A0_2.get_first_selected_object
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_filter = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = A0_2._skill_slot_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._skill_slot_table
    L5_2 = L5_2[L4_2]
    L6_2 = {}
    L7_2 = L5_2.SlotIndex
    L6_2.SlotIndex = L7_2
    L7_2 = L5_2.Status
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.MonsterAvatarSkillSlotStatus
    L8_2 = L8_2.Locked
    if L7_2 == L8_2 then
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.Client
      L7_2 = L7_2.MonsterAvatarSkillSlotStatus
      L7_2 = L7_2.Locked
      L6_2.Status = L7_2
    else
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.Client
      L7_2 = L7_2.MonsterAvatarSkillSlotStatus
      L7_2 = L7_2.NotEquipped
      L6_2.Status = L7_2
    end
    L6_2.SkillCoreData = nil
    L7_2 = L5_2.UnlockPromotion
    L6_2.UnlockPromotion = L7_2
    L7_2 = A0_2._skill_slot_table
    L7_2[L4_2] = L6_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_skillcore_and_skillslot
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_click_detach_all = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  A0_2._ready_equip_skillcore = L1_2
  L1_2 = {}
  A0_2._ready_detach_skillcore = L1_2
  L1_2 = {}
  A0_2._warning_equipped_spirit = L1_2
  L1_2 = 1
  L2_2 = A0_2._origin_skill_slot_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._origin_skill_slot_table
    L5_2 = L5_2[L4_2]
    L6_2 = A0_2._skill_slot_table
    L6_2 = L6_2[L4_2]
    L7_2 = L5_2.Status
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.MonsterAvatarSkillSlotStatus
    L8_2 = L8_2.NotEquipped
    if L7_2 == L8_2 then
      L7_2 = L6_2.Status
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.Client
      L8_2 = L8_2.MonsterAvatarSkillSlotStatus
      L8_2 = L8_2.Equipped
      if L7_2 == L8_2 then
        L8_2 = A0_2
        L7_2 = A0_2._prepare_equip_detach_info
        L9_2 = L6_2
        L7_2(L8_2, L9_2)
    end
    else
      L7_2 = L5_2.Status
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.Client
      L8_2 = L8_2.MonsterAvatarSkillSlotStatus
      L8_2 = L8_2.Equipped
      if L7_2 == L8_2 then
        L7_2 = L6_2.Status
        L8_2 = CS
        L8_2 = L8_2.RPG
        L8_2 = L8_2.Client
        L8_2 = L8_2.MonsterAvatarSkillSlotStatus
        L8_2 = L8_2.NotEquipped
        if L7_2 == L8_2 then
          L7_2 = {}
          L8_2 = L5_2.SkillCoreData
          L8_2 = L8_2.ConfigID
          L7_2.ID = L8_2
          L8_2 = L5_2.SlotIndex
          L7_2.SlotIndex = L8_2
          L8_2 = L5_2.SkillCoreData
          L8_2 = L8_2.BelongAetherMonsterAvatarID
          L7_2.belongSpiritID = L8_2
          L9_2 = A0_2
          L8_2 = A0_2._check_is_skillcore_id_exist
          L10_2 = A0_2._ready_detach_skillcore
          L11_2 = L7_2.ID
          L8_2 = L8_2(L9_2, L10_2, L11_2)
          if not L8_2 then
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = A0_2._ready_detach_skillcore
            L10_2 = L7_2
            L8_2(L9_2, L10_2)
          end
      end
      else
        L7_2 = L5_2.Status
        L8_2 = CS
        L8_2 = L8_2.RPG
        L8_2 = L8_2.Client
        L8_2 = L8_2.MonsterAvatarSkillSlotStatus
        L8_2 = L8_2.Equipped
        if L7_2 == L8_2 then
          L7_2 = L6_2.Status
          L8_2 = CS
          L8_2 = L8_2.RPG
          L8_2 = L8_2.Client
          L8_2 = L8_2.MonsterAvatarSkillSlotStatus
          L8_2 = L8_2.Equipped
          if L7_2 == L8_2 then
            L7_2 = L5_2.SkillCoreData
            L7_2 = L7_2.ConfigID
            L8_2 = L6_2.SkillCoreData
            L8_2 = L8_2.ConfigID
            if L7_2 ~= L8_2 then
              L8_2 = A0_2
              L7_2 = A0_2._prepare_equip_detach_info
              L9_2 = L6_2
              L7_2(L8_2, L9_2)
            end
          end
        end
      end
    end
  end
  L1_2 = A0_2._ready_equip_skillcore
  L1_2 = #L1_2
  if L1_2 == 0 then
    L1_2 = A0_2._ready_detach_skillcore
    L1_2 = #L1_2
    if L1_2 == 0 then
      L1_2 = G
      L1_2 = L1_2.NotifyManager
      L1_2 = L1_2.notify
      L2_2 = G
      L2_2 = L2_2.CS
      L2_2 = L2_2.NotifyType
      L2_2 = L2_2.UIPileToastMessageTextID
      L3_2 = "UIText_AetherDivide_Spirit_Skill_Saved"
      L1_2(L2_2, L3_2)
      L2_2 = A0_2
      L1_2 = A0_2.exit
      L1_2(L2_2)
      return
    end
  end
  L1_2 = A0_2._warning_equipped_spirit
  L1_2 = #L1_2
  if L1_2 ~= 0 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritSkillCoreEquip.AetherSpiritSkillCoreEquipReplaceConfirmDialog"
    L3_2 = A0_2._warning_equipped_spirit
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = L1_2.LuaTable
    L3_2 = L2_2
    L2_2 = L2_2.register_confirm_callback
    L4_2 = A0_2._on_send_equip
    L5_2 = A0_2
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._on_send_equip
    L1_2(L2_2)
  end
end
L0_1._on_click_save = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = {}
  L3_2 = A1_2.SkillCoreData
  L3_2 = L3_2.ConfigID
  L2_2.ID = L3_2
  L3_2 = A1_2.SlotIndex
  L2_2.SlotIndex = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._check_is_skillcore_id_exist
  L5_2 = A0_2._ready_equip_skillcore
  L6_2 = L2_2.ID
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2._ready_equip_skillcore
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = A1_2.SkillCoreData
  L3_2 = L3_2.BelongAetherMonsterAvatarID
  if L3_2 ~= 0 then
    L3_2 = {}
    L4_2 = A1_2.SkillCoreData
    L4_2 = L4_2.ConfigID
    L3_2.ID = L4_2
    L4_2 = A1_2.SkillCoreData
    L4_2 = L4_2.BelongAetherMonsterAvatarID
    L3_2.belongSpiritID = L4_2
    L4_2 = L1_1
    L5_2 = L4_2
    L4_2 = L4_2.GetAetherMonsterAvatar
    L6_2 = L3_2.belongSpiritID
    L4_2 = L4_2(L5_2, L6_2)
    L6_2 = L4_2
    L5_2 = L4_2.GetSlotIndexBySkillCoreDataID
    L7_2 = L3_2.ID
    L5_2 = L5_2(L6_2, L7_2)
    L3_2.SlotIndex = L5_2
    L6_2 = A0_2
    L5_2 = A0_2._check_is_skillcore_id_exist
    L7_2 = A0_2._ready_detach_skillcore
    L8_2 = L3_2.ID
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    if not L5_2 then
      L5_2 = table
      L5_2 = L5_2.insert
      L6_2 = A0_2._ready_detach_skillcore
      L7_2 = L3_2
      L5_2(L6_2, L7_2)
    end
    L5_2 = L3_2.belongSpiritID
    L6_2 = A0_2._spirit_data
    L6_2 = L6_2.ID
    if L5_2 ~= L6_2 then
      L5_2 = G
      L5_2 = L5_2.Utils
      L5_2 = L5_2.index_of_item
      L6_2 = A0_2._warning_equipped_spirit
      L7_2 = L3_2.belongSpiritID
      L5_2 = L5_2(L6_2, L7_2)
      if L5_2 == nil then
        L5_2 = table
        L5_2 = L5_2.insert
        L6_2 = A0_2._warning_equipped_spirit
        L7_2 = L3_2.belongSpiritID
        L5_2(L6_2, L7_2)
      end
    end
  end
end
L0_1._prepare_equip_detach_info = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = 1
  L4_2 = #A1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    L7_2 = L7_2.ID
    if L7_2 == A2_2 then
      L7_2 = true
      return L7_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._check_is_skillcore_id_exist = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._send_counter = 0
  L1_2 = 1
  L2_2 = A0_2._ready_detach_skillcore
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._ready_detach_skillcore
    L5_2 = L5_2[L4_2]
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.GlobalVars
    L6_2 = L6_2.s_NetworkManager
    L7_2 = L6_2
    L6_2 = L6_2.BPLAIFAEPBN
    L8_2 = L5_2.belongSpiritID
    L9_2 = L5_2.SlotIndex
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = A0_2._send_counter
    L6_2 = L6_2 + 1
    A0_2._send_counter = L6_2
  end
  L1_2 = 1
  L2_2 = A0_2._ready_equip_skillcore
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._ready_equip_skillcore
    L5_2 = L5_2[L4_2]
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.GlobalVars
    L6_2 = L6_2.s_NetworkManager
    L7_2 = L6_2
    L6_2 = L6_2.FAAOIONOMAL
    L8_2 = A0_2._spirit_data
    L8_2 = L8_2.ID
    L9_2 = L5_2.SlotIndex
    L10_2 = L5_2.ID
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = A0_2._send_counter
    L6_2 = L6_2 + 1
    A0_2._send_counter = L6_2
  end
end
L0_1._on_send_equip = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPileToastMessageTextID
  L3_2 = "UIText_AetherDivide_Spirit_Skill_Unsaved"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_click_close = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_unload = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L3_1
return L0_1
