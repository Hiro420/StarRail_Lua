local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritMainDetail.AetherSpiritMainDetailBasicInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritMainDetail.AetherSpiritMainDetailBasicInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritMainDetail.AetherSpiritMainDetailStatisticsPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritMainDetail.AetherSpiritMainDetailStatisticsPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritMainDetail.AetherSpiritMainDetailSkillPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritMainDetail.AetherSpiritMainDetailSkillPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritMainDetail.AetherSpiritMainDetailPassiveSkillSlotPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritMainDetail.AetherSpiritMainDetailPassiveSkillSlotPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritMainDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AetherDivideModule
L1_1 = L1_1.AetherOutfitData
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AetherSpiritOnEquipSkillCore
  L4_2 = L0_1._on_notify_refresh_slot
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AetherSpiritOnTakeOffSkillCore
  L4_2 = L0_1._on_notify_refresh_slot
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AetherSpiritMainDetailBasicInfoPanel
  L4_2 = G
  L4_2 = L4_2.AetherSpiritMainDetailBasicInfoPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._basic_info_panel = L1_2
  L1_2 = A0_2._basic_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_upgrade_callback
  L3_2 = A0_2._on_click_upgrade
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._basic_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_basic_info_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AetherSpiritMainDetailStatisticsPanel
  L4_2 = G
  L4_2 = L4_2.AetherSpiritMainDetailStatisticsPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._statistics_panel = L1_2
  L1_2 = A0_2._statistics_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_statistics_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AetherSpiritMainDetailSkillPanel
  L4_2 = G
  L4_2 = L4_2.AetherSpiritMainDetailSkillPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._skill_panel = L1_2
  L1_2 = A0_2._skill_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_click_skill
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._skill_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_skill_panel
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
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_upgrade
  L4_2 = A0_2._on_click_upgrade
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._skill_slot_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._spirit_data
  L1_2(L2_2, L3_2)
end
L0_1._on_notify_refresh_slot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._skill_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_list_btn_by_index
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.gameObject
    return L2_2
  else
    L2_2 = nil
    return L2_2
  end
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._close_skill_data = A1_2
  A0_2._close_skill_slot_data = A2_2
  L3_2 = A0_2._skill_panel
  L4_2 = L3_2
  L3_2 = L3_2.clear_all_btn_selected
  L3_2(L4_2)
  L3_2 = A0_2._skill_slot_panel
  L4_2 = L3_2
  L3_2 = L3_2.clear_all_btn_selected
  L3_2(L4_2)
  L3_2 = A0_2._close_skill_data
  if L3_2 ~= nil then
    L3_2 = A0_2._skill_panel
    L4_2 = L3_2
    L3_2 = L3_2.get_cur_index_by_skill_data
    L5_2 = A0_2._close_skill_data
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = A0_2._skill_panel
    L5_2 = L4_2
    L4_2 = L4_2.get_list_btn_by_index
    L6_2 = L3_2 - 1
    L4_2 = L4_2(L5_2, L6_2)
    L6_2 = A0_2
    L5_2 = A0_2.set_navigation_target
    L7_2 = L4_2.gameObject
    L5_2(L6_2, L7_2)
  else
    L3_2 = A0_2._close_skill_slot_data
    if L3_2 ~= nil then
      L3_2 = A0_2._skill_slot_panel
      L4_2 = L3_2
      L3_2 = L3_2.get_cur_index_by_skill_slot_data
      L5_2 = A0_2._close_skill_slot_data
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = A0_2._skill_slot_panel
      L5_2 = L4_2
      L4_2 = L4_2.get_list_btn_by_index
      L6_2 = L3_2 - 1
      L4_2 = L4_2(L5_2, L6_2)
      L6_2 = A0_2
      L5_2 = A0_2.set_navigation_target
      L7_2 = L4_2.gameObject
      L5_2(L6_2, L7_2)
    end
  end
end
L0_1.set_target_skill_on_dialog_close = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._spirit_data = A1_2
  L2_2 = A0_2._binder
  if L2_2 then
    L2_2 = A0_2._binder
    L3_2 = L2_2
    L2_2 = L2_2.is_bound
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._setup_info
      L2_2(L3_2)
  end
  else
    L3_2 = A0_2
    L2_2 = A0_2.set_async_callback
    L4_2 = A0_2
    L5_2 = A0_2._setup_info
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._basic_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._spirit_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._statistics_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._spirit_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._skill_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._spirit_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._skill_slot_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._spirit_data
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.is_top_page_or_dialog
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.CS
    L1_2 = L1_2.EventSystem
    L1_2 = L1_2.current
    L2_2 = L1_2
    L1_2 = L1_2.SetSelectedGameObject
    L3_2 = nil
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.get_first_selected_object
    L1_2 = L1_2(L2_2)
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    if L1_2 then
      L3_2 = A0_2
      L2_2 = A0_2.save_navigation_target
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_list_navigation_static
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_reddot
  L1_2(L2_2)
end
L0_1._setup_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritUpgrade.AetherSpiritUpgradePage"
  L3_2 = A0_2._spirit_data
  L1_2(L2_2, L3_2)
end
L0_1._on_click_upgrade = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._open_skill_detail_dialog
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_click_skill = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.Status
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonsterAvatarSkillSlotStatus
  L3_2 = L3_2.Locked
  if L2_2 == L3_2 then
    L2_2 = G
    L2_2 = L2_2.TextmapStatic
    L2_2 = L2_2.GetText
    L3_2 = "ChallengeMazeCondition_Level"
    L4_2 = A1_2.UnlockPromotion
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageString
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  else
    L2_2 = A1_2.Status
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.MonsterAvatarSkillSlotStatus
    L3_2 = L3_2.NotEquipped
    if L2_2 ~= L3_2 then
      L2_2 = A1_2.Status
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.MonsterAvatarSkillSlotStatus
      L3_2 = L3_2.Equipped
      if L2_2 ~= L3_2 then
        goto lbl_58
      end
    end
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_async_show
    L3_2 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritSkillCoreEquip.AetherSpiritSkillCoreEquipPage"
    L4_2 = A0_2._spirit_data
    L5_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L3_2 = L2_2.LuaTable
    L4_2 = L3_2
    L3_2 = L3_2.register_on_equip_open_callback
    L5_2 = A0_2._on_equip_page_open
    L6_2 = A0_2
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = L2_2.LuaTable
    L4_2 = L3_2
    L3_2 = L3_2.set_exit_callback
    L5_2 = A0_2._on_equip_page_close
    L6_2 = A0_2
    L3_2(L4_2, L5_2, L6_2)
  end
  ::lbl_58::
end
L0_1._on_click_skill_slot = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.load_and_async_show
  L4_2 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritMainDetail.AetherSpiritSkillDetailDialog"
  L5_2 = A0_2._spirit_data
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = L3_2.LuaTable
  L5_2 = L4_2
  L4_2 = L4_2.register_close_callback
  L6_2 = A0_2._on_skill_dialog_close
  L7_2 = A0_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = L3_2.LuaTable
  L5_2 = L4_2
  L4_2 = L4_2.register_on_skill_detail_equip_open_callback
  L6_2 = A0_2._on_skill_dialog_equip_page_open
  L7_2 = A0_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = L3_2.LuaTable
  L5_2 = L4_2
  L4_2 = L4_2.register_on_skill_detail_equip_close_callback
  L6_2 = A0_2._on_skill_dialog_equip_page_close
  L7_2 = A0_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_skill_panel
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_passive_skill_core_panel
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._owner
  L4_2 = L4_2._short_cut_hint_panel
  if L4_2 ~= nil then
    L4_2 = A0_2._owner
    L4_2 = L4_2._short_cut_hint_panel
    L5_2 = L4_2
    L4_2 = L4_2.safe_set_active
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2._owner
  L5_2 = L4_2
  L4_2 = L4_2.show_btn_select_dialog
  L6_2 = false
  L4_2(L5_2, L6_2)
end
L0_1._open_skill_detail_dialog = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_skill_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_passive_skill_core_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._owner
  L1_2 = L1_2._short_cut_hint_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._owner
    L1_2 = L1_2._short_cut_hint_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.show_btn_select_dialog
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_skill_dialog_close = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_passive_skill_core_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_upgrade
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._owner
  L1_2 = L1_2._binder
  L1_2 = L1_2.btn_close
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._owner
  L1_2 = L1_2._binder
  L1_2 = L1_2.node_spirit_round_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._owner
  L1_2 = L1_2._short_cut_hint_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._owner
    L1_2 = L1_2._short_cut_hint_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_equip_page_open = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_passive_skill_core_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_upgrade
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._owner
  L1_2 = L1_2._binder
  L1_2 = L1_2.btn_close
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._owner
  L1_2 = L1_2._binder
  L1_2 = L1_2.node_spirit_round_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._owner
  L1_2 = L1_2._short_cut_hint_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._owner
    L1_2 = L1_2._short_cut_hint_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_equip_page_close = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_upgrade
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._owner
  L1_2 = L1_2._binder
  L1_2 = L1_2.btn_close
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._owner
  L1_2 = L1_2._binder
  L1_2 = L1_2.node_spirit_round_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_skill_dialog_equip_page_open = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_upgrade
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._owner
  L1_2 = L1_2._binder
  L1_2 = L1_2.btn_close
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._owner
  L1_2 = L1_2._binder
  L1_2 = L1_2.node_spirit_round_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_skill_dialog_equip_page_close = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = 2
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_btn_list_navigation_static
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_return_to_top = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "AetherSpiritCanPromote"
  L4_2 = A0_2._spirit_data
  L4_2 = L4_2.ID
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_btn_upgrade_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._bind_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = A0_2._skill_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_skill_table
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._skill_slot_panel
  L3_2 = L2_2
  L2_2 = L2_2.get_skill_slot_table
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L4_2 = {}
  L5_2 = A0_2._basic_info_panel
  L6_2 = L5_2
  L5_2 = L5_2.get_spirit_type_btn
  L5_2 = L5_2(L6_2)
  L6_2 = 1
  L7_2 = #L1_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = A0_2._skill_panel
    L11_2 = L10_2
    L10_2 = L10_2.get_list_btn_by_index
    L12_2 = L9_2 - 1
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = L3_2
    L13_2 = L10_2
    L11_2(L12_2, L13_2)
  end
  L6_2 = 1
  L7_2 = #L2_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = A0_2._skill_slot_panel
    L11_2 = L10_2
    L10_2 = L10_2.get_list_btn_by_index
    L12_2 = L9_2 - 1
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = L4_2
    L13_2 = L10_2
    L11_2(L12_2, L13_2)
  end
  L6_2 = 1
  L7_2 = #L3_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L11_2 = A0_2
    L10_2 = A0_2._set_single_btn_navigation
    L12_2 = L3_2[L9_2]
    L13_2 = L5_2
    L14_2 = L4_2[1]
    L15_2 = L9_2 - 1
    L15_2 = L3_2[L15_2]
    L16_2 = L9_2 + 1
    L16_2 = L3_2[L16_2]
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  end
  L6_2 = 1
  L7_2 = #L4_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L11_2 = A0_2
    L10_2 = A0_2._set_single_btn_navigation
    L12_2 = L4_2[L9_2]
    L13_2 = L3_2[1]
    L14_2 = nil
    L15_2 = L9_2 - 1
    L15_2 = L4_2[L15_2]
    L16_2 = L9_2 + 1
    L16_2 = L4_2[L16_2]
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  end
  L7_2 = A0_2
  L6_2 = A0_2._set_single_btn_navigation
  L8_2 = L5_2
  L9_2 = nil
  L10_2 = L3_2[1]
  L11_2 = nil
  L12_2 = nil
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L0_1._setup_btn_list_navigation_static = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2
  L6_2 = A1_2.navigation
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.UI
  L7_2 = L7_2.Navigation
  L7_2 = L7_2.Mode
  L7_2 = L7_2.Explicit
  L6_2.mode = L7_2
  if A2_2 ~= nil then
    L7_2 = A2_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L7_2.mode = L8_2
    L6_2.selectOnUp = A2_2
  end
  if A3_2 ~= nil then
    L7_2 = A3_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L7_2.mode = L8_2
    L6_2.selectOnDown = A3_2
  end
  if A4_2 ~= nil then
    L7_2 = A4_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L7_2.mode = L8_2
    L6_2.selectOnLeft = A4_2
  end
  if A5_2 ~= nil then
    L7_2 = A5_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L7_2.mode = L8_2
    L6_2.selectOnRight = A5_2
  end
  A1_2.navigation = L6_2
end
L0_1._set_single_btn_navigation = L2_1
return L0_1
