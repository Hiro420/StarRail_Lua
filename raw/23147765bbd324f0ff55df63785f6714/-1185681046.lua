local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.ItemDetailPanelBinder"
L0_1(L1_1)
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
L1_1 = "Ui.Common.LightConeItemInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.AvatarItemInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.AvatarSkinItemInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.CommonItemInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.RightPanel.DropHintListviewPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.DiscreteProgressBar"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LightConeLockPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LightConeLockPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ItemDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.AvatarPropertyType
function L2_1(A0_2)
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
  A0_2._is_display_only = false
  A0_2._is_show_lock = true
  A0_2._disable_control = false
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._item = nil
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.LightConeItemInfoPanel
  L4_2 = G
  L4_2 = L4_2.LightConeItemInfoPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._light_cone_item_info_panel = L1_2
  L1_2 = A0_2._light_cone_item_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_light_cone_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._light_cone_item_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AvatarItemInfoPanel
  L4_2 = G
  L4_2 = L4_2.AvatarItemInfoPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._avatar_item_info_panel = L1_2
  L1_2 = A0_2._avatar_item_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_avatar_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._avatar_item_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AvatarSkinItemInfoPanel
  L4_2 = G
  L4_2 = L4_2.AvatarSkinItemInfoPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._skin_item_info_panel = L1_2
  L1_2 = A0_2._skin_item_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_skin_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._skin_item_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.CommonItemInfoPanel
  L4_2 = G
  L4_2 = L4_2.CommonItemInfoPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._common_item_info_panel = L1_2
  L1_2 = A0_2._common_item_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_item_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._common_item_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.Equipment.StatusDetailInfoPanel"
  L6_2 = "Ui.Equipment.StatusDetailInfoPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._status_panel = L1_2
  L1_2 = A0_2._status_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_status_panel
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
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_show_choice
  L4_2 = A0_2._on_btn_show_choice
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_take
  L4_2 = A0_2._on_btn_take
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ReserveStaminaChanged
  L4_2 = A0_2._on_reserve_stamina_changed
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._drop_hint_panel
  L2_2 = L1_2
  L1_2 = L1_2.is_active
  return L1_2(L2_2)
end
L0_1.is_drop_hint_panel_active = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
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
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
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
L0_1.reset_scroll_bottom_pos = L2_1
function L2_1(A0_2)
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
L0_1.reset_scroll_pos = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  return L1_2
end
L0_1.get_scroll_rect = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1.hide_num = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2 == nil or L2_2
  A0_2._is_show_lock = L2_2
end
L0_1.hide_lock = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._drop_hint_panel
  L4_2 = L3_2
  L3_2 = L3_2.register_drop_hint_go_to_callback
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.register_drop_hint_go_to_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._light_cone_item_info_panel
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._avatar_item_info_panel
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._skin_item_info_panel
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._common_item_info_panel
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = false
  L3_2(L4_2, L5_2)
  A0_2._item = A1_2
  A0_2._is_display_only = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._init_panels
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_view_by_type
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_detail_view_by_type
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_drop_hint_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_show_choice_btn
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_set_expired_time
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_setup_reserve_stamina_view
  L3_2(L4_2)
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.LayoutRebuilder
  L3_2 = L3_2.ForceRebuildLayoutImmediate
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_content
  L3_2(L4_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._disable_control = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.set_detail_btn_interactable
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1.disable_all_control = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_view_by_type
  L1_2(L2_2)
end
L0_1.refresh = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_item_bg_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._item
  L4_2 = L4_2.BGDesc
  L5_2 = unpack
  L6_2 = A1_2
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1.set_desc_text_params = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
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
  L1_2 = L1_2.node_btn_list
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
  L1_2 = L1_2.node_relic_basic_info
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
  L1_2 = L1_2.node_relic_set_skill_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_show_choice
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
  L1_2 = L1_2.node_count_down
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_take
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._init_panels = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_in_adventure
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
end
L0_1._setup_drop_hint_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._drop_hint_panel
  L2_2 = L1_2
  L1_2 = L1_2.has_drop
  return L1_2(L2_2)
end
L0_1.has_drop_hint = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._item
  L1_2 = L1_2.ItemSubType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemSubType
  L2_2 = L2_2.Equipment
  if L1_2 == L2_2 then
    L1_2 = A0_2._light_cone_item_info_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._item
    L4_2 = A0_2._is_display_only
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2._item
    L1_2 = L1_2.ItemSubType
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ItemSubType
    L2_2 = L2_2.AvatarCard
    if L1_2 == L2_2 then
      L1_2 = A0_2._avatar_item_info_panel
      L2_2 = L1_2
      L1_2 = L1_2.setup_view
      L3_2 = A0_2._item
      L4_2 = A0_2._is_display_only
      L1_2(L2_2, L3_2, L4_2)
    else
      L1_2 = A0_2._item
      L1_2 = L1_2.ItemSubType
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.ItemSubType
      L2_2 = L2_2.AvatarSkin
      if L1_2 == L2_2 then
        L1_2 = A0_2._skin_item_info_panel
        L2_2 = L1_2
        L1_2 = L1_2.setup_view
        L3_2 = A0_2._item
        L4_2 = A0_2._is_display_only
        L1_2(L2_2, L3_2, L4_2)
      else
        L1_2 = A0_2._common_item_info_panel
        L2_2 = L1_2
        L1_2 = L1_2.setup_view
        L3_2 = A0_2._item
        L4_2 = A0_2._is_display_only
        L1_2(L2_2, L3_2, L4_2)
      end
    end
  end
end
L0_1._setup_view_by_type = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_detail_btn_interactable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_item_bg_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._item
  L1_2 = L1_2.ItemSubType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemSubType
  L2_2 = L2_2.Equipment
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_light_cone_detail_view
    L1_2(L2_2)
  else
    L1_2 = A0_2._item
    L1_2 = L1_2.ItemSubType
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ItemSubType
    L2_2 = L2_2.AvatarCard
    if L1_2 == L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2._setup_avatar_detail_view
      L1_2(L2_2)
    else
      L1_2 = A0_2._item
      L1_2 = L1_2.ItemSubType
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.ItemSubType
      L2_2 = L2_2.Relic
      if L1_2 == L2_2 then
        L1_2 = G
        L1_2 = L1_2.UtilEngineWrap
        L1_2 = L1_2.IsCsType
        L2_2 = A0_2._item
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.Client
        L3_2 = L3_2.RelicItemData
        L1_2 = L1_2(L2_2, L3_2)
        if L1_2 then
          L2_2 = A0_2
          L1_2 = A0_2._setup_relic_detail_view
          L1_2(L2_2)
        else
          L2_2 = A0_2
          L1_2 = A0_2._setup_relic_preview_view
          L1_2(L2_2)
        end
      else
        L1_2 = A0_2._item
        L1_2 = L1_2.ItemSubType
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.GameCore
        L2_2 = L2_2.ItemSubType
        L2_2 = L2_2.RelicSetShowOnly
        if L1_2 == L2_2 then
          L2_2 = A0_2
          L1_2 = A0_2._setup_relic_set_view
          L1_2(L2_2)
        else
          L1_2 = A0_2._item
          L1_2 = L1_2.ItemSubType
          L2_2 = CS
          L2_2 = L2_2.RPG
          L2_2 = L2_2.GameCore
          L2_2 = L2_2.ItemSubType
          L2_2 = L2_2.Book
          if L1_2 == L2_2 then
            L2_2 = A0_2
            L1_2 = A0_2._setup_book_item_detail_view
            L1_2(L2_2)
          else
            L1_2 = A0_2._item
            L1_2 = L1_2.ItemSubType
            L2_2 = CS
            L2_2 = L2_2.RPG
            L2_2 = L2_2.GameCore
            L2_2 = L2_2.ItemSubType
            L2_2 = L2_2.ChessRogueDiceSurface
            if L1_2 == L2_2 then
              L2_2 = A0_2
              L1_2 = A0_2._setup_rogue_nous_dice_surface_view
              L1_2(L2_2)
            else
              L2_2 = A0_2
              L1_2 = A0_2._setup_common_item_detail_view
              L1_2(L2_2)
            end
          end
        end
      end
    end
  end
end
L0_1._setup_detail_view_by_type = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._disable_control
    A1_2 = not L2_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_item_detail
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_btn_item_detail
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._light_cone_item_info_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_detail_btn_interactable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_detail_btn_interactable = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._item
  L1_2 = L1_2.ConfigID
  L2_2 = G
  L2_2 = L2_2.StaminaModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.get_reserve_stamina_id
  L2_2 = L2_2(L3_2)
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_reserve_stamina_view
    L1_2(L2_2)
  end
end
L0_1._try_setup_reserve_stamina_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_item_detail
  L4_2 = A0_2._on_click_light_cone_icon
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_detail_btn_interactable
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_item_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._item
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_item_bg_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._item
  L3_2 = L3_2.BGDesc
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_item_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._item
  L3_2 = L3_2.SkillRow
  L3_2 = L3_2.SkillDesc
  L4_2 = G
  L4_2 = L4_2.UITextUtils
  L4_2 = L4_2.GetSkillParams
  L5_2 = A0_2._item
  L5_2 = L5_2.SkillRow
  L5_2 = L5_2.ParamList
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._item
  L1_2 = L1_2.SkillRow
  L1_2 = L1_2.SkillDesc
  if L1_2 ~= nil then
    L1_2 = A0_2._item
    L1_2 = L1_2.SkillRow
    L1_2 = L1_2.SkillDesc
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.TextID
    L2_2 = L2_2.empty
    if L1_2 ~= L2_2 then
      goto lbl_55
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_item_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  ::lbl_55::
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_skill_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._item
  L3_2 = L3_2.SkillRow
  L3_2 = L3_2.SkillName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_phase_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_phase_panel_phase
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_phase_panel_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_rank_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = G
  L3_2 = L3_2.UITextUtils
  L3_2 = L3_2.GetLightConeRankTextID
  L4_2 = A0_2._item
  L4_2 = L4_2.Rank
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_rank
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Equipment_RankLevel"
  L4_2 = A0_2._item
  L4_2 = L4_2.Rank
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._item
  L1_2 = L1_2.Rank
  L2_2 = A0_2._item
  L2_2 = L2_2.EquipmentRow
  L2_2 = L2_2.MaxRank
  if L1_2 < L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_rank_num
    L2_2 = G
    L2_2 = L2_2.UIColorUtils
    L2_2 = L2_2.GetColor
    L3_2 = "#DCC491"
    L2_2 = L2_2(L3_2)
    L1_2.color = L2_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.img_rank_bg
    L2_2 = G
    L2_2 = L2_2.UIColorUtils
    L2_2 = L2_2.GetColor
    L3_2 = "#282828"
    L2_2 = L2_2(L3_2)
    L1_2.color = L2_2
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_rank_num
    L2_2 = G
    L2_2 = L2_2.UIColorUtils
    L2_2 = L2_2.GetColor
    L3_2 = "#121212"
    L2_2 = L2_2(L3_2)
    L1_2.color = L2_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.img_rank_bg
    L2_2 = G
    L2_2 = L2_2.UIColorUtils
    L2_2 = L2_2.GetColor
    L3_2 = "#ffcf70"
    L2_2 = L2_2(L3_2)
    L1_2.color = L2_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_tips_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarBaseTypeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._item
  L2_2 = L2_2.EquipmentRow
  L2_2 = L2_2.AvatarBaseType
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.TextmapStatic
  L2_2 = L2_2.GetText
  L3_2 = L1_2.BaseTypeText
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_tips
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "UIText_Equipment_AvatarBaseTypeRequire"
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_base
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_base
  L6_2 = L1_2.BaseTypeIcon
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_light_cone_status_panel
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_btn_list
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._is_display_only
  L5_2 = not L5_2 and L5_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_avatar_base_type
  L6_2 = L1_2.BaseTypeIconSmall
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_lock_equipment_panel
  L3_2(L4_2)
end
L0_1._setup_light_cone_detail_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._status_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = {}
  L2_2 = {}
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AvatarModule
  L3_2 = L3_2.FormatDisplayDataByType
  L4_2 = L1_1.MaxHP
  L5_2 = A0_2._item
  L6_2 = L5_2
  L5_2 = L5_2.GetHP
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L2_2.Num = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AvatarPropertyExcelTable
  L3_2 = L3_2.GetData
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.AvatarPropertyType
  L4_2 = L4_2.MaxHP
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.PropertyName
  L2_2.Title = L4_2
  L4_2 = L3_2.IconPath
  L2_2.IconPath = L4_2
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = L1_2
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = {}
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.AvatarModule
  L5_2 = L5_2.FormatDisplayDataByType
  L6_2 = L1_1.Attack
  L7_2 = A0_2._item
  L8_2 = L7_2
  L7_2 = L7_2.GetAttack
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2.Num = L5_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.AvatarPropertyExcelTable
  L5_2 = L5_2.GetData
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.AvatarPropertyType
  L6_2 = L6_2.Attack
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2.PropertyName
  L4_2.Title = L6_2
  L6_2 = L5_2.IconPath
  L4_2.IconPath = L6_2
  L6_2 = table
  L6_2 = L6_2.insert
  L7_2 = L1_2
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
  L6_2 = {}
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.AvatarModule
  L7_2 = L7_2.FormatDisplayDataByType
  L8_2 = L1_1.Defence
  L9_2 = A0_2._item
  L10_2 = L9_2
  L9_2 = L9_2.GetDefence
  L9_2, L10_2 = L9_2(L10_2)
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L6_2.Num = L7_2
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.AvatarPropertyExcelTable
  L7_2 = L7_2.GetData
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.GameCore
  L8_2 = L8_2.AvatarPropertyType
  L8_2 = L8_2.Defence
  L7_2 = L7_2(L8_2)
  L8_2 = L7_2.PropertyName
  L6_2.Title = L8_2
  L8_2 = L7_2.IconPath
  L6_2.IconPath = L8_2
  L8_2 = table
  L8_2 = L8_2.insert
  L9_2 = L1_2
  L10_2 = L6_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._status_panel
  L9_2 = L8_2
  L8_2 = L8_2.setup_view
  L10_2 = L1_2
  L8_2(L9_2, L10_2)
end
L0_1._setup_light_cone_status_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_item_detail
  L4_2 = A0_2._on_click_avatar_icon
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_detail_btn_interactable
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_item_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._item
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_item_bg_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._item
  L3_2 = L3_2.BGDesc
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._item
  L2_2 = L2_2.ConfigID
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarBaseTypeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.AvatarBaseType
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.DamageTypeExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L1_2.DamageType
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_base
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_base
  L7_2 = L2_2.BaseTypeIcon
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_item_desc
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = "UIText_ShopPage_AvatarTip"
  L7_2 = G
  L7_2 = L7_2.TextmapStatic
  L7_2 = L7_2.GetText
  L8_2 = L3_2.DamageTypeName
  L7_2 = L7_2(L8_2)
  L8_2 = G
  L8_2 = L8_2.TextmapStatic
  L8_2 = L8_2.GetText
  L9_2 = L2_2.BaseTypeText
  L8_2, L9_2 = L8_2(L9_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._setup_avatar_detail_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Gacha.GachaDetail.GachaLightConeDetailPage"
  L3_2 = A0_2._item
  L1_2(L2_2, L3_2)
end
L0_1._on_click_light_cone_icon = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Gacha.GachaDetail.GachaAvatarDetailPage"
  L3_2 = A0_2._item
  L3_2 = L3_2.ConfigID
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_click_avatar_icon = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_item_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._item
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_item_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._item
  L3_2 = L3_2.Desc
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._item
  L1_2 = L1_2.Desc
  if L1_2 ~= nil then
    L1_2 = A0_2._item
    L1_2 = L1_2.Desc
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.TextID
    L2_2 = L2_2.empty
    if L1_2 ~= L2_2 then
      goto lbl_31
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_item_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  ::lbl_31::
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_item_bg_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._item
  L3_2 = L3_2.BGDesc
  L1_2(L2_2, L3_2)
end
L0_1._setup_common_item_detail_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_item_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._item
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = nil
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.LocalbookConfigExcelTable
  L3_2 = L2_2.GetData
  L4_2 = A0_2._item
  L4_2 = L4_2.ConfigID
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.BookSeriesConfigExcelTable
    L4_2 = L4_2.GetData
    L5_2 = L3_2.BookSeriesID
    L4_2 = L4_2(L5_2)
    if L4_2 == nil then
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.TextID
      L1_2 = L5_2.empty
    else
      L1_2 = L4_2.BookSeriesComments
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_item_desc
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L1_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._item
  L4_2 = L4_2.Desc
  if L4_2 ~= nil then
    L4_2 = A0_2._item
    L4_2 = L4_2.Desc
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.TextID
    L5_2 = L5_2.empty
    if L4_2 ~= L5_2 then
      goto lbl_57
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_item_desc
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  ::lbl_57::
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_item_bg_desc
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
end
L0_1._setup_book_item_detail_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  L1_2 = L1_2.ChessRogueData
  L1_2 = L1_2.DiceInfo
  L1_2 = L1_2.RogueNousDiceData
  L2_2 = L1_2
  L1_2 = L1_2.GetSurfaceDataByItemID
  L3_2 = A0_2._item
  L3_2 = L3_2.ConfigID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_item_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.SurfaceDesc
  L5_2 = G
  L5_2 = L5_2.UITextUtils
  L5_2 = L5_2.GetSkillParams
  L6_2 = L1_2.DescParam
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_item_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_item_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.SurfaceName
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_item_bg_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._setup_rogue_nous_dice_surface_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_relic_basic_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_relic_position
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_relic_status_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_basic_info_panel
  L1_2(L2_2)
  L1_2 = A0_2._item
  L1_2 = L1_2.RelicRow
  A0_2._row = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_set_skill_panel
  L3_2 = A0_2._row
  L3_2 = L3_2.SetID
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_lock_relic_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_relic_position
  L1_2(L2_2)
end
L0_1._setup_relic_detail_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_relic_basic_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RelicConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._item
  L2_2 = L2_2.ConfigID
  L1_2 = L1_2(L2_2)
  A0_2._row = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_set_skill_panel
  L3_2 = A0_2._row
  L3_2 = L3_2.SetID
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_basic_info_panel
  L1_2(L2_2)
end
L0_1._setup_relic_preview_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_phase_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_phase_panel_phase
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_phase_panel_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_item_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._item
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_item_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._item
  L3_2 = L3_2.Desc
  L3_2 = L3_2 ~= nil
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_item_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._item
  L3_2 = L3_2.Desc
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_item_bg_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._item
  L3_2 = L3_2.BGDesc
  L1_2(L2_2, L3_2)
end
L0_1._setup_basic_info_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.RelicStatusPanel
  L4_2 = G
  L4_2 = L4_2.RelicStatusPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._relic_status_panel = L1_2
  L1_2 = A0_2._relic_status_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_relic_basic_info
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._relic_status_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._relic_status_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._item
  L1_2(L2_2, L3_2)
end
L0_1._setup_relic_status_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_relic_basic_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_list
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
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._item
  L2_2 = L2_2.ConfigID
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.CustomDataList
  L2_2 = L2_2[0]
  L3_2 = G
  L3_2 = L3_2.RelicUtils
  L3_2 = L3_2.get_all_name_by_set_id
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._get_detail_set_display_id
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_item_name
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = A0_2._item
  L7_2 = L7_2.Name
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_item_desc
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A0_2._item
  L7_2 = L7_2.Desc
  L7_2 = L7_2 ~= nil
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_item_desc
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = A0_2._item
  L7_2 = L7_2.Desc
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_item_bg_desc
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L4_2
  L8_2 = unpack
  L9_2 = L3_2
  L8_2, L9_2 = L8_2(L9_2)
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_set_skill_panel
  L7_2 = L2_2
  L5_2(L6_2, L7_2)
end
L0_1._setup_relic_set_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = G
  L1_2 = L1_2.StaminaModule
  L1_2 = L1_2.Instance
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_btn_take
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L5_2 = L1_2
  L4_2 = L1_2.get_cur_reserve_stamina
  L4_2 = L4_2(L5_2)
  L4_2 = 0 < L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_count_down
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_remain_timer
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.get_cur_reserve_stamina
  L2_2 = L2_2(L3_2)
  L4_2 = L1_2
  L3_2 = L1_2.get_max_reserve_stamina
  L3_2 = L3_2(L4_2)
  if L2_2 >= L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_count_down
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_ReserveStamina_State03"
    L2_2(L3_2, L4_2)
  else
    L3_2 = L1_2
    L2_2 = L1_2.get_cur_stamina
    L2_2 = L2_2(L3_2)
    L4_2 = L1_2
    L3_2 = L1_2.get_max_stamina
    L3_2 = L3_2(L4_2)
    if L2_2 < L3_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_count_down
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_ReserveStamina_State01"
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_count_down
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_ReserveStamina_State02"
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_remain_timer
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L3_2 = L1_2
      L2_2 = L1_2.get_next_reserve_stamina_recover_timestamp
      L2_2 = L2_2(L3_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.mono_remain_timer
      L4_2 = L3_2
      L3_2 = L3_2.SetTargetTimeByTimeStamp
      L5_2 = L2_2
      L6_2 = nil
      L7_2 = nil
      L8_2 = 2
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    end
  end
end
L0_1._setup_reserve_stamina_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.RelicSetSkillInfoPanel
  L5_2 = G
  L5_2 = L5_2.RelicSetSkillInfoPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._relic_set_skill_panel = L2_2
  L2_2 = A0_2._relic_set_skill_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_relic_set_skill_info
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._relic_set_skill_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._relic_set_skill_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_set_skill_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_display_only
  L1_2 = not L1_2 and L1_2
  if not L1_2 then
    return
  end
  L2_2 = A0_2._lock_panel
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.RelicLockPanel
    L5_2 = G
    L5_2 = L5_2.RelicLockPanelBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._lock_panel = L2_2
    L2_2 = A0_2._lock_panel
    L3_2 = L2_2
    L2_2 = L2_2.bind
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_btn_list
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._lock_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._lock_panel
  L3_2 = L2_2
  L2_2 = L2_2.show_discard_btn
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._lock_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._item
  L2_2(L3_2, L4_2)
end
L0_1._setup_lock_relic_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_relic_position
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = G
  L3_2 = L3_2.RelicUtils
  L3_2 = L3_2.get_textid_by_type
  L4_2 = A0_2._row
  L4_2 = L4_2.Type
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_relic_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._item
  L3_2 = L3_2.Level
  L1_2(L2_2, L3_2)
end
L0_1._setup_relic_position = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_display_only
  L1_2 = not L1_2 and L1_2
  if not L1_2 then
    return
  end
  L2_2 = A0_2._equipment_lock_panel
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.LightConeLockPanel
    L5_2 = G
    L5_2 = L5_2.LightConeLockPanelBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._equipment_lock_panel = L2_2
    L2_2 = A0_2._equipment_lock_panel
    L3_2 = L2_2
    L2_2 = L2_2.bind
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_btn_lock
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._lock_panel
  if L2_2 ~= nil then
    L2_2 = A0_2._lock_panel
    L3_2 = L2_2
    L2_2 = L2_2.show_discard_btn
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._equipment_lock_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._equipment_lock_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._item
  L2_2(L3_2, L4_2)
end
L0_1._setup_lock_equipment_panel = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RelicSetConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.SetSkillList
  L3_2 = L3_2.Length
  if L3_2 == 2 then
    L4_2 = "UIText_Relic_Detail_Set_Display_4"
    if L4_2 then
      goto lbl_16
    end
  end
  L4_2 = "UIText_Relic_Detail_Set_Display_2"
  ::lbl_16::
  return L4_2
end
L0_1._get_detail_set_display_id = L2_1
function L2_1(A0_2)
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
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.InventoryModule
  L3_2 = L2_2
  L2_2 = L2_2.IsItemExpired
  L4_2 = A0_2._item
  L4_2 = L4_2.ConfigID
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_already_expired_view
    L2_2(L3_2)
    return
  end
  L2_2 = L1_2.ShowTimeType
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._set_version_hint
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._set_expired_time
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._try_set_expired_time = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
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
  if L2_2 == 0 then
    L4_2 = A0_2
    L3_2 = A0_2._try_fetch_item_expired_time
    L3_2(L4_2)
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.remain_time_panel_root
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.remain_time_prefix_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2.Tips
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.remain_time_text
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
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
L0_1._set_expired_time = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIGetItemExpiredTime
  L4_2 = A0_2._on_get_item_recycle_time
  L1_2(L2_2, L3_2, L4_2)
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
  L3_2 = L1_2
  L2_2 = L1_2.Add
  L4_2 = A0_2._item
  L4_2 = L4_2.ConfigID
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_NetworkManager
  L3_2 = L2_2
  L2_2 = L2_2.GCACCCKNEMK
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._try_fetch_item_expired_time = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.InventoryModule
  L2_2 = L1_2
  L1_2 = L1_2.IsItemExpired
  L3_2 = A0_2._item
  L3_2 = L3_2.ConfigID
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_already_expired_view
    L1_2(L2_2)
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.InventoryModule
  L2_2 = L1_2
  L1_2 = L1_2.TryGetExpiredTimeByItemID
  L3_2 = A0_2._item
  L3_2 = L3_2.ConfigID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemRecycleExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._item
  L3_2 = L3_2.ConfigID
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.remain_time_panel_root
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.remain_time_prefix_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.Tips
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.remain_time_text
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.remain_time_text
  L4_2 = L3_2
  L3_2 = L3_2.SetTargetTime
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.TimeUtils
  L5_2 = L5_2.TimeStampInSecondsToDateTime
  L6_2 = L1_2
  L5_2 = L5_2(L6_2)
  L6_2 = nil
  L7_2 = nil
  L8_2 = 2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2
  L3_2 = A0_2._remove_notify_handler
  L5_2 = G
  L5_2 = L5_2.CS
  L5_2 = L5_2.NotifyType
  L5_2 = L5_2.UIGetItemExpiredTime
  L6_2 = A0_2._on_get_item_recycle_time
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_get_item_recycle_time = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_time_panel_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_time_prefix_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ItemRecycle_OutOfDateTips"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_time_text
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._setup_already_expired_view = L2_1
function L2_1(A0_2, A1_2)
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
L0_1._set_version_hint = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._choice_box_item_id
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_show
    L2_2 = "Ui.RewardPreview.RewardChoiceShowDialog"
    L3_2 = A0_2._choice_box_item_id
    L1_2 = L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_show_choice = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.StaminaModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_stamina
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.StaminaModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.get_max_stamina
  L2_2 = L2_2(L3_2)
  if L1_2 >= L2_2 then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = "RetCodeError_2102"
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Common.PhysicalExchange.ReserveStaminaExchangeDialog"
  L2_2(L3_2)
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.exit
  L2_2(L3_2)
end
L0_1._on_btn_take = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._item
  L1_2 = L1_2.ConfigID
  L2_2 = G
  L2_2 = L2_2.StaminaModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.get_reserve_stamina_id
  L2_2 = L2_2(L3_2)
  if L1_2 == L2_2 then
    L1_2 = A0_2._item
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.InventoryModule
    L3_2 = L2_2
    L2_2 = L2_2.GetItemCountByConfigID
    L4_2 = A0_2._item
    L4_2 = L4_2.ConfigID
    L2_2 = L2_2(L3_2, L4_2)
    L1_2.Count = L2_2
    L2_2 = A0_2
    L1_2 = A0_2._setup_view_by_type
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_reserve_stamina_view
    L1_2(L2_2)
  end
end
L0_1._on_reserve_stamina_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._item
  L2_2 = L1_2.ItemMainType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemMainType
  L3_2 = L3_2.Usable
  if L2_2 ~= L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_show_choice
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemUseDataExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.UseDataID
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L1_2.UseMethod
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.ItemUseMethod
    L4_2 = L4_2.PlayerSelectedReward
    L4_2 = #L4_2
    if L3_2 == L4_2 then
      goto lbl_40
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_show_choice
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  do return end
  ::lbl_40::
  L3_2 = "UIText_RewardChoiceShow"
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_show_choice
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_show_choice_text
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = L1_2.Row
  L4_2 = L4_2.ID
  A0_2._choice_box_item_id = L4_2
end
L0_1._setup_show_choice_btn = L2_1
return L0_1
