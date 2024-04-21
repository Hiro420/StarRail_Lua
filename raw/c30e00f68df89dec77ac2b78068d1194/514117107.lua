local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritMainDetail.AetherSpiritMainDetailSkillPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritMainDetail.AetherSpiritMainDetailSkillPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritMainDetail.AetherSpiritSkillDetailDialogLeftPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritMainDetail.AetherSpiritSkillDetailDialogLeftPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritMainDetail.AetherSpiritMainDetailPassiveSkillSlotPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritMainDetail.AetherSpiritMainDetailPassiveSkillSlotPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritMainDetail.AetherSpiritSkillDetailDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritSkillDetailDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AetherSpiritSkillDetailDialogBinder
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
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._spirit_data = A1_2
  A0_2._skill_data = A2_2
  A0_2._skill_slot_data = A3_2
end
L0_1.init = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._close_callback = A1_2
  A0_2._close_callback_self = A2_2
end
L0_1.register_close_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._skill_detail_equip_open_callback = A1_2
  A0_2._skill_detail_equip_open_callback_self = A2_2
end
L0_1.register_on_skill_detail_equip_open_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._skill_detail_equip_close_callback = A1_2
  A0_2._skill_detail_equip_close_callback_self = A2_2
end
L0_1.register_on_skill_detail_equip_close_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_exit
  L1_2(L2_2, L3_2, L4_2)
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
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AetherSpiritSkillDetailDialogLeftPanel
  L4_2 = G
  L4_2 = L4_2.AetherSpiritSkillDetailDialogLeftPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._skill_detail_panel = L1_2
  L1_2 = A0_2._skill_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_replace_callback
  L3_2 = A0_2._on_click_detail_replace
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._skill_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_detach_callback
  L3_2 = A0_2._on_click_detail_detach
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._skill_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_skill_detail_panel
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._skill_slot_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._spirit_data
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_list_navigation_static
  L1_2(L2_2)
end
L0_1._on_notify_refresh_slot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._skill_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._spirit_data
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._skill_slot_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._spirit_data
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_spirit_desc
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = 1
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._skill_data
    if L0_3 ~= nil then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._on_refresh_skill
      L0_3(L1_3)
    else
      L0_3 = A0_2._skill_slot_data
      if L0_3 ~= nil then
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3._on_refresh_skill_slot
        L2_3 = false
        L0_3(L1_3, L2_3)
      end
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._init_ui_navigation
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_btn_list_navigation_static
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._spirit_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.SpiritDescription
  L1_2(L2_2, L3_2)
end
L0_1._setup_spirit_desc = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._skill_slot_panel
  L2_2 = L1_2
  L1_2 = L1_2.clear_all_btn_selected
  L1_2(L2_2)
  L1_2 = A0_2._skill_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_selected_by_target_skill_data
  L3_2 = A0_2._skill_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_skill_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._skill_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._skill_data
  L4_2 = A0_2._spirit_data
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_refresh_skill = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._skill_slot_data
  L2_2 = L2_2.Status
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonsterAvatarSkillSlotStatus
  L3_2 = L3_2.Equipped
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_skill_detail_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._skill_detail_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_slot_view
    L4_2 = A0_2._skill_slot_data
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._skill_slot_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_selected_by_target_skill_slot_data
    L4_2 = A0_2._skill_slot_data
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._skill_slot_data
    L2_2 = L2_2.Status
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.MonsterAvatarSkillSlotStatus
    L3_2 = L3_2.Locked
    if L2_2 == L3_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_skill_detail_panel
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
    else
      if not A1_2 then
        L2_2 = A0_2._skill_slot_panel
        L3_2 = L2_2
        L2_2 = L2_2.set_selected_by_target_skill_slot_data
        L4_2 = A0_2._skill_slot_data
        L2_2(L3_2, L4_2)
      end
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_skill_detail_panel
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = A0_2._skill_panel
  L3_2 = L2_2
  L2_2 = L2_2.clear_all_btn_selected
  L2_2(L3_2)
end
L0_1._on_refresh_skill_slot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritSkillCoreEquip.AetherSpiritSkillCoreEquipPage"
  L3_2 = A0_2._spirit_data
  L4_2 = A0_2._skill_slot_data
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_2.LuaTable
  L3_2 = L2_2
  L2_2 = L2_2.register_on_equip_open_callback
  L4_2 = A0_2._on_equip_page_open
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = L1_2.LuaTable
  L3_2 = L2_2
  L2_2 = L2_2.set_exit_callback
  L4_2 = A0_2._on_equip_page_close
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._open_skill_core_equip_page = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._skill_detail_equip_open_callback
  if L1_2 then
    L1_2 = A0_2._skill_detail_equip_open_callback_self
    if L1_2 then
      L1_2 = A0_2._skill_detail_equip_open_callback
      L2_2 = A0_2._skill_detail_equip_open_callback_self
      L1_2(L2_2)
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_passive_skill_core_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_skill_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._short_cut_hint_panel
  if L1_2 then
    L1_2 = A0_2._short_cut_hint_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_equip_page_open = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._skill_detail_equip_close_callback
  if L1_2 then
    L1_2 = A0_2._skill_detail_equip_close_callback_self
    if L1_2 then
      L1_2 = A0_2._skill_detail_equip_close_callback
      L2_2 = A0_2._skill_detail_equip_close_callback_self
      L1_2(L2_2)
    end
  end
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_passive_skill_core_panel
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._short_cut_hint_panel
    if L1_2 then
      L1_2 = A0_2._short_cut_hint_panel
      L2_2 = L1_2
      L1_2 = L1_2.safe_set_active
      L3_2 = true
      L1_2(L2_2, L3_2)
    end
    L1_2 = A0_2._skill_slot_data
    if L1_2 ~= nil then
      L1_2 = A0_2._skill_slot_data
      L1_2 = L1_2.Status
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.MonsterAvatarSkillSlotStatus
      L2_2 = L2_2.Equipped
      if L1_2 == L2_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.node_skill_detail_panel
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetActive
        L3_2 = false
        L1_2(L2_2, L3_2)
        L1_2 = A0_2._skill_detail_panel
        L2_2 = L1_2
        L1_2 = L1_2.setup_slot_view
        L3_2 = A0_2._skill_slot_data
        L1_2(L2_2, L3_2)
      end
    end
  end
end
L0_1._on_equip_page_close = L1_1
function L1_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = A0_2._skill_data
    if L2_2 ~= nil then
      L2_2 = true
      return L2_2
    else
      L2_2 = A0_2._skill_slot_data
      if L2_2 ~= nil then
        L2_2 = false
        return L2_2
      end
    end
    L2_2 = false
    return L2_2
  end
end
L0_1._is_can_to_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._skill_data
  if L1_2 ~= nil then
    L1_2 = A0_2._skill_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_cur_index_by_skill_data
    L3_2 = A0_2._skill_data
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = A0_2._skill_panel
    L3_2 = L2_2
    L2_2 = L2_2.get_list_btn_by_index
    L4_2 = L1_2 - 1
    L2_2 = L2_2(L3_2, L4_2)
    L2_2 = L2_2.gameObject
    return L2_2
  else
    L1_2 = A0_2._skill_slot_data
    if L1_2 ~= nil then
      L1_2 = A0_2._skill_slot_panel
      L2_2 = L1_2
      L1_2 = L1_2.get_cur_index_by_skill_slot_data
      L3_2 = A0_2._skill_slot_data
      L1_2 = L1_2(L2_2, L3_2)
      L2_2 = A0_2._skill_slot_panel
      L3_2 = L2_2
      L2_2 = L2_2.get_list_btn_by_index
      L4_2 = L1_2 - 1
      L2_2 = L2_2(L3_2, L4_2)
      L2_2 = L2_2.gameObject
      return L2_2
    end
  end
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._skill_data = A1_2
  A0_2._skill_slot_data = nil
  L3_2 = A0_2
  L2_2 = A0_2._on_refresh_skill
  L2_2(L3_2)
end
L0_1._on_click_skill = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._skill_data = nil
  A0_2._skill_slot_data = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._on_refresh_skill_slot
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._skill_slot_data
  L3_2 = L3_2.Status
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.MonsterAvatarSkillSlotStatus
  L4_2 = L4_2.Locked
  if L3_2 == L4_2 then
    if not A2_2 then
      L3_2 = G
      L3_2 = L3_2.TextmapStatic
      L3_2 = L3_2.GetText
      L4_2 = "ChallengeMazeCondition_Level"
      L5_2 = A0_2._skill_slot_data
      L5_2 = L5_2.UnlockPromotion
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = G
      L4_2 = L4_2.NotifyManager
      L4_2 = L4_2.notify
      L5_2 = G
      L5_2 = L5_2.CS
      L5_2 = L5_2.NotifyType
      L5_2 = L5_2.UIPileToastMessageString
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
    end
    L3_2 = A0_2._skill_slot_panel
    L4_2 = L3_2
    L3_2 = L3_2.clear_all_btn_selected
    L3_2(L4_2)
  else
    L3_2 = A0_2._skill_slot_data
    L3_2 = L3_2.Status
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.MonsterAvatarSkillSlotStatus
    L4_2 = L4_2.NotEquipped
    if L3_2 ~= L4_2 then
      L3_2 = A0_2._skill_slot_data
      L3_2 = L3_2.Status
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.MonsterAvatarSkillSlotStatus
      L4_2 = L4_2.Equipped
      if L3_2 ~= L4_2 then
        goto lbl_63
      end
    end
    if not A2_2 then
      L4_2 = A0_2
      L3_2 = A0_2._open_skill_core_equip_page
      L3_2(L4_2)
    else
      L3_2 = A0_2._skill_slot_panel
      L4_2 = L3_2
      L3_2 = L3_2.clear_all_btn_selected
      L3_2(L4_2)
    end
  end
  ::lbl_63::
end
L0_1._on_click_skill_slot = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._open_skill_core_equip_page
  L2_2(L3_2)
end
L0_1._on_click_detail_replace = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_NetworkManager
  L3_2 = L2_2
  L2_2 = L2_2.PAOKEPGDECL
  L4_2 = A0_2._spirit_data
  L4_2 = L4_2.ID
  L5_2 = A1_2.SlotIndex
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_click_detail_detach = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
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
  L5_2 = 1
  L6_2 = #L1_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = A0_2._skill_panel
    L10_2 = L9_2
    L9_2 = L9_2.get_list_btn_by_index
    L11_2 = L8_2 - 1
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L3_2
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
  L5_2 = 1
  L6_2 = #L2_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = A0_2._skill_slot_panel
    L10_2 = L9_2
    L9_2 = L9_2.get_list_btn_by_index
    L11_2 = L8_2 - 1
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L4_2
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
  L5_2 = 1
  L6_2 = #L3_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L10_2 = A0_2
    L9_2 = A0_2._set_single_btn_navigation
    L11_2 = L3_2[L8_2]
    L12_2 = nil
    L13_2 = L4_2[1]
    L14_2 = L8_2 - 1
    L14_2 = L3_2[L14_2]
    L15_2 = L8_2 + 1
    L15_2 = L3_2[L15_2]
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  end
  L5_2 = 1
  L6_2 = #L4_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L10_2 = A0_2
    L9_2 = A0_2._set_single_btn_navigation
    L11_2 = L4_2[L8_2]
    L12_2 = L3_2[1]
    L13_2 = nil
    L14_2 = L8_2 - 1
    L14_2 = L4_2[L14_2]
    L15_2 = L8_2 + 1
    L15_2 = L4_2[L15_2]
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  end
end
L0_1._setup_btn_list_navigation_static = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
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
L0_1._set_single_btn_navigation = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._close_callback_self
  if L1_2 ~= nil then
    L1_2 = A0_2._close_callback_self
    L2_2 = L1_2
    L1_2 = L1_2.set_target_skill_on_dialog_close
    L3_2 = A0_2._skill_data
    L4_2 = A0_2._skill_slot_data
    L1_2(L2_2, L3_2, L4_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._close_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._close_callback_self
    if L1_2 ~= nil then
      L1_2 = A0_2._close_callback
      L2_2 = A0_2._close_callback_self
      L1_2(L2_2)
    end
  end
end
L0_1._on_unload = L1_1
return L0_1
