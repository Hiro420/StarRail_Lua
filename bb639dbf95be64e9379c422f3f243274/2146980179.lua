local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Network.NetworkManager"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.RelicUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicStatusPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicStatusPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicSetSkillInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicSetSkillInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicLockPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicLockPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.RightPanel.MaterialItemRightPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.RightPanel.RelicRightPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.RightPanel.RogueRelicRightPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.RightPanel.EquipmentRightPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.RightPanel.DropHintListviewPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "InventoryPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.UtilEngineWrap
  L2_2 = L2_2.IsCsType
  L3_2 = L1_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.AdventurePhase
  L2_2 = L1_2 ~= nil and L2_2
  A0_2._is_in_adventure = L2_2
  A0_2._enable_show_favorite = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.button_use
  L4_2 = A0_2._on_btn_use
  L1_2(L2_2, L3_2, L4_2)
  A0_2._item = nil
  A0_2._equip_data = nil
  A0_2._can_scroll = false
  A0_2._show_drop_hint = true
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.EquipmentRightPanel
  L4_2 = G
  L4_2 = L4_2.InventoryPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._lightcone_panel = L1_2
  L1_2 = A0_2._lightcone_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MaterialItemRightPanel
  L4_2 = G
  L4_2 = L4_2.InventoryPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._material_panel = L1_2
  L1_2 = A0_2._material_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.DropHintListviewPanel
  L4_2 = G
  L4_2 = L4_2.DropHintListviewPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._drop_hint_panel = L1_2
  L1_2 = A0_2._drop_hint_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_drop_hint_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.RelicRightPanel
  L4_2 = G
  L4_2 = L4_2.InventoryPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._relic_panel = L1_2
  L1_2 = A0_2._relic_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.RogueRelicRightPanel
  L4_2 = G
  L4_2 = L4_2.InventoryPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._rogue_relic_panel = L1_2
  L1_2 = A0_2._rogue_relic_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FormulaItemUsed
  L4_2 = L0_1._on_formula_used
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BPProItemUsed
  L4_2 = A0_2._on_battle_pass_item_used
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_favorite
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._cur_panel
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemMainType
  L4_2 = L4_2.Equipment
  if A1_2 == L4_2 then
    L4_2 = A0_2._lightcone_panel
    A0_2._cur_panel = L4_2
  else
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.ItemMainType
    L4_2 = L4_2.Relic
    if A1_2 ~= L4_2 then
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.ItemSubType
      L4_2 = L4_2.RelicSetShowOnly
      if A2_2 ~= L4_2 then
        goto lbl_29
      end
    end
    L4_2 = A0_2._relic_panel
    A0_2._cur_panel = L4_2
    goto lbl_31
    ::lbl_29::
    L4_2 = A0_2._material_panel
    A0_2._cur_panel = L4_2
  end
  ::lbl_31::
  L4_2 = A0_2._cur_panel
  if L4_2 ~= L3_2 and L3_2 then
    L4_2 = L3_2.on_unchoose
    if L4_2 then
      L5_2 = L3_2
      L4_2 = L3_2.on_unchoose
      L4_2(L5_2)
    end
  end
  L4_2 = A0_2._cur_panel
  L4_2 = L4_2.set_enable_show_favorite
  if L4_2 then
    L4_2 = A0_2._cur_panel
    L5_2 = L4_2
    L4_2 = L4_2.set_enable_show_favorite
    L6_2 = A0_2._enable_show_favorite
    L4_2(L5_2, L6_2)
  end
end
L0_1._choose_cur_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_equipped_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_detail
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.button_level_up
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_light_cone_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_item_total_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_promotion_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_tips_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_phase_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_base
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_status_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_equipment_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_relic_position
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_relic_basic_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_relic_set_skill_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_img_lightcone
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_amount_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_item_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_purpose
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._init_panels = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._show_drop_hint
  if not L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._is_in_adventure
  if L1_2 then
    L1_2 = A0_2._drop_hint_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2, A1_2)
  A0_2._auto_update_gamepad = A1_2
end
L0_1.set_auto_update_gamepad_hint_mark = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._show_drop_hint = A1_2
  L2_2 = A0_2._drop_hint_panel
  if L2_2 ~= nil then
    L2_2 = A0_2._drop_hint_panel
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = A0_2._show_drop_hint
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_is_show_drop_hint = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._show_function_panel = A1_2
  L2_2 = A0_2._binder
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_func_btn_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_is_show_function_btn_panel = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._material_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_show_bg_desc
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_is_show_ip_desc_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._set_func_btn_in_control_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_enter_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._set_func_btn_in_control_enable
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_leave_special_zoom = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_tip_detail
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_tip_use
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_btn_detail
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_btn_use
  L2_2.ActionEnabled = A1_2
end
L0_1._set_func_btn_in_control_enable = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
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
  end
end
L0_1.reset_scroll_bottom_pos = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.num_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.hide_num = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = false
  L4_2 = A0_2._item
  if L4_2 == A1_2 then
    L3_2 = true
  end
  A0_2._item = A1_2
  L5_2 = A0_2
  L4_2 = A0_2._init_panels
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._choose_cur_panel
  L6_2 = A1_2.ItemMainType
  L7_2 = A1_2.ItemSubType
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._cur_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_view_by_item
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_icon
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_rarity
  L4_2(L5_2)
  if not L3_2 then
    L5_2 = A0_2
    L4_2 = A0_2._setup_drop_hint
    L4_2(L5_2)
  end
  L4_2 = A0_2._btn_use_checker
  if L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2.setup_button_use
    L6_2 = A0_2._btn_use_checker
    L7_2 = A0_2._btn_use_checker_self
    L8_2 = A1_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L7_2 = A0_2
      L6_2 = A0_2._can_use
      L8_2 = A1_2
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 then
        L7_2 = A0_2
        L6_2 = A0_2._can_use_by_conditions
        L6_2 = L6_2(L7_2)
      end
    end
    L4_2(L5_2, L6_2)
  else
    L5_2 = A0_2
    L4_2 = A0_2.setup_button_use
    L7_2 = A0_2
    L6_2 = A0_2._can_use
    L8_2 = A1_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L7_2 = A0_2
      L6_2 = A0_2._can_use_by_conditions
      L6_2 = L6_2(L7_2)
    end
    L4_2(L5_2, L6_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2._setup_equipped_info
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._try_set_expired_time
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_btn_panel
  L4_2(L5_2)
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.LayoutRebuilder
  L4_2 = L4_2.ForceRebuildLayoutImmediate
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_content
  L4_2(L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._item = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._init_panels
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._choose_cur_panel
  L4_2 = A1_2.ItemMainType
  L5_2 = A1_2.ItemSubType
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._cur_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view_by_item_display
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_icon
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_rarity
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_drop_hint
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_set_expired_time
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_btn_panel
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_content
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_rect
  L3_2 = L2_2
  L2_2 = L2_2.CanScroll
  L2_2 = L2_2(L3_2)
  A0_2._can_scroll = L2_2
end
L0_1.setup_view_display = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
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
end
L0_1.reset_scroll_pos = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._can_scroll
  return L1_2
end
L0_1.can_scroll = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_panel
  if L1_2 then
    L1_2 = A0_2._cur_panel
    L1_2 = L1_2.is_load_img_by_child_panel
    if L1_2 then
      return
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_item_icon
  L4_2 = A0_2._item
  L4_2 = L4_2.ItemFigureIconPath
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_icon = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.InventoryModule
  L1_2 = L1_2.GetItemRarityConfig
  L2_2 = A0_2._item
  L2_2 = L2_2.Rarity
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.rairty_bg1
  L5_2 = L1_2.FrameItemRarityBgPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = G
  L2_2 = L2_2.UIColorUtils
  L2_2 = L2_2.GetColor
  L3_2 = L1_2.LineItemRarityColor
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.rairty_line_name
  L3_2.color = L2_2
  L3_2 = G
  L3_2 = L3_2.UIColorUtils
  L3_2 = L3_2.GetColor
  L4_2 = L1_2.FrameItemRarityColor
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_item_name
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.UIColorUtils
  L5_2 = L5_2.GetColorWithOriginAlpha
  L6_2 = L3_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.text_item_name
  L7_2 = L7_2.color
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.color = L5_2
end
L0_1._setup_rarity = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._show_drop_hint
  if not L1_2 then
    return
  end
  L1_2 = A0_2._is_in_adventure
  if L1_2 then
    L1_2 = A0_2._show_drop_hint
  end
  L2_2 = A0_2._drop_hint_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._drop_hint_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view_by_item_id
    L4_2 = A0_2._item
    L4_2 = L4_2.ConfigID
    L2_2(L3_2, L4_2)
  end
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L2_2 = A0_2._drop_hint_panel
    L3_2 = L2_2
    L2_2 = L2_2.has_drop
    L2_2 = L2_2(L3_2)
  end
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  if L3_2 and L2_2 then
    L3_2 = A0_2._owner
    L3_2 = L3_2.short_cut_hint_panel
    if L3_2 then
      L3_2 = A0_2._auto_update_gamepad
      if L3_2 then
        L3_2 = A0_2._owner
        L3_2 = L3_2.short_cut_hint_panel
        L4_2 = L3_2
        L3_2 = L3_2.setup_short_cut_hint_view
        L5_2 = {}
        L6_2 = "ActionGroup_Select"
        L7_2 = "ActionGroup_Return"
        L5_2[1] = L6_2
        L5_2[2] = L7_2
        L3_2(L4_2, L5_2)
    end
  end
  else
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.is_gamepad_input
    L3_2 = L3_2()
    if L3_2 then
      L3_2 = A0_2._owner
      L3_2 = L3_2.short_cut_hint_panel
      if L3_2 then
        L3_2 = A0_2._auto_update_gamepad
        if L3_2 then
          L3_2 = A0_2._owner
          L3_2 = L3_2.short_cut_hint_panel
          L4_2 = L3_2
          L3_2 = L3_2.setup_short_cut_hint_view
          L5_2 = {}
          L6_2 = "ActionGroup_Return"
          L5_2[1] = L6_2
          L3_2(L4_2, L5_2)
        end
      end
    end
  end
end
L0_1._setup_drop_hint = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._item
  L1_2 = L1_2.BelongAvatarID
  L1_2 = L1_2 ~= nil
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_equipped_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.AvatarModule
    L2_2 = L2_2.AllAvatars
    L3_2 = A0_2._item
    L3_2 = L3_2.BelongAvatarID
    L2_2 = L2_2[L3_2]
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_equipped_info
    L6_2 = L2_2.AvatarMiniIconPath
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._setup_equipped_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_detail
  L1_2 = L1_2.gameObject
  L1_2 = L1_2.activeSelf
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.button_level_up
    L1_2 = L1_2.gameObject
    L1_2 = L1_2.activeSelf
    if not L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.button_use
      L1_2 = L1_2.gameObject
      L1_2 = L1_2.activeSelf
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_btn_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_btn_panel = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._btn_use_checker = A1_2
  A0_2._btn_use_checker_self = A2_2
end
L0_1.register_btn_use_checker = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.button_use
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_button_use = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._enable_show_favorite = A1_2
  L2_2 = A0_2._cur_panel
  if L2_2 then
    L2_2 = A0_2._cur_panel
    L2_2 = L2_2.set_enable_show_favorite
    if L2_2 then
      L2_2 = A0_2._cur_panel
      L3_2 = L2_2
      L2_2 = L2_2.set_enable_show_favorite
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1.set_enable_show_favorite = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2.IsUsable
  return L2_2
end
L0_1._can_use = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = true
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemUseConditionExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._item
  L3_2 = L3_2.ConfigID
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UnlockConditions
    if L3_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.ConditionCheckerUtil
      L3_2 = L3_2.DoCheckConditions
      L4_2 = L2_2.UnlockConditions
      L3_2 = L3_2(L4_2)
      L1_2 = L3_2
    end
  end
  return L1_2
end
L0_1._can_use_by_conditions = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.InventoryUtils
  L1_2 = L1_2.use_item
  L2_2 = A0_2._item
  L1_2(L2_2)
end
L0_1._on_btn_use = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.load_and_show
  L4_2 = "Ui.ItemCompose.ItemComposeUnlockFormulaDialog"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_formula_used = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2 ~= nil
  if L2_2 then
    L3_2 = G
    L3_2 = L3_2.RewardUtils
    L3_2 = L3_2.show_reward_dialog
    L4_2 = A1_2
    L3_2(L4_2)
  end
end
L0_1._on_battle_pass_item_used = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemRecycleExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._item
  L2_2 = L2_2.ConfigID
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.remain_time_panel_root
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = L1_2.ShowTimeType
  if L2_2 == false then
    L3_2 = A0_2
    L2_2 = A0_2._set_expired_time
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._set_version_hint
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._try_set_expired_time = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.remain_time_panel_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.remain_time_prefix_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.Tips
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.remain_time_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.InventoryModule
  L3_2 = L2_2
  L2_2 = L2_2.TryGetExpiredTimeByItemID
  L4_2 = A0_2._item
  L4_2 = L4_2.ConfigID
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.remain_time_text
  L4_2 = L3_2
  L3_2 = L3_2.SetTargetTime
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.TimeUtils
  L5_2 = L5_2.TimeStampInSecondsToDateTime
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L6_2 = nil
  L7_2 = nil
  L8_2 = 2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._set_expired_time = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.Tips
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TextID
  L3_2 = L3_2.empty
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.remain_time_panel_root
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.remain_time_panel_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.remain_time_prefix_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.Tips
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.remain_time_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._set_version_hint = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_favorite
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_unload = L1_1
return L0_1
