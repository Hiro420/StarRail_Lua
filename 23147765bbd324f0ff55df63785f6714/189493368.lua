local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "Ui.Component.DiscreteProgressBarBinder"
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
L1_1 = "LightConeDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.AvatarPropertyType
L2_1 = G
L2_1 = L2_1.TextExtensions
L3_1 = 0.4
L4_1 = {}
L4_1.Active = "#18FFCBFF"
L4_1.Inactive = "#C0C0C0FF"
L5_1 = {}
L5_1.Active = "#004D1CA6"
L5_1.Inactive = "#222222A6"
L6_1 = {}
L6_1.Active = "#FFFFFFFF"
L6_1.Inactive = "#EB4D3DFF"
L7_1 = "UIText_Equioment_Unequipped"
L8_1 = 6
function L9_1(A0_2)
  local L1_2
  A0_2._lock_mark_enabled = true
end
L0_1.ctor = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ItemChanged
  L4_2 = L0_1._on_item_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_replace
  L4_2 = A0_2._btn_replace_onclick
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_equip
  L4_2 = A0_2._btn_replace_onclick
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_upgrade
  L4_2 = A0_2._btn_upgrade_onclick
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_avatar_base_type
  L4_2 = A0_2._btn_avatar_base_type_onclick
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_promotion_preview
  L4_2 = A0_2._btn_promotion_preview
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L1_2 = L1_2(L2_2)
  A0_2._ui3d = L1_2
end
L0_1._on_load = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._avatar_data = A2_2
  A0_2._equip_data = A1_2
  L3_2 = A2_2 ~= nil
  A0_2._has_avatar_data = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_property_icon
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.enable_promotion_preview
  L5_2 = false
  L3_2(L4_2, L5_2)
end
L0_1.setup_view = L9_1
function L9_1(A0_2, A1_2)
  A0_2._lock_mark_enabled = A1_2
end
L0_1.enable_lock_mark = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_promotion_preview
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.enable_promotion_preview = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._set_active_by_state
  L3_2 = A0_2._equip_data
  L3_2 = L3_2 ~= nil
  L4_2 = A0_2._avatar_data
  L4_2 = L4_2 ~= nil
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_reddot
  L1_2(L2_2)
  L1_2 = A0_2._equip_data
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._setup_view_info_panel
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_status_panel
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_skill_panel
    L1_2(L2_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.lock_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._equip_data
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_lock
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._lock_mark_enabled
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_rect_desc
    L2_2 = L1_2
    L1_2 = L1_2.SetVerticalScrollPercent
    L3_2 = 1
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._setup_unequipped
    L1_2(L2_2)
  end
  L1_2 = A0_2._avatar_data
  if L1_2 then
    L1_2 = A0_2._avatar_data
    L1_2 = L1_2.IsDisplayOnly
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.btn_replace
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.btn_equip
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
    end
    L1_2 = A0_2._equip_data
    if L1_2 ~= nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_lock
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = A0_2._avatar_data
      L3_2 = L3_2.IsDisplayOnly
      L3_2 = not L3_2 and L3_2
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._refresh = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_item_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L7_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_hp
  L1_2 = L1_2.gameObject
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_attack
  L1_2 = L1_2.gameObject
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_defence
  L1_2 = L1_2.gameObject
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.empty_hp
  L1_2 = L1_2.gameObject
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.empty_attack
  L1_2 = L1_2.gameObject
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.empty_defence
  L1_2 = L1_2.gameObject
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.promotion_stars_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = 0
  L4_2 = L8_1
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_avatar_base_type
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_level
  L3_2 = 0
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_unequipped = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.lock_panel
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_skill_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_empty_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not A1_2
  L3_2(L4_2, L5_2)
  if not A2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_replace
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_equip
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_replace
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_equip
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = not A1_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_upgrade
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A2_2 or L5_2
  if A2_2 then
    L5_2 = A1_2
  end
  L3_2(L4_2, L5_2)
end
L0_1._set_active_by_state = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.set_level
  L3_2 = A0_2._equip_data
  L3_2 = L3_2.Level
  L4_2 = A0_2._equip_data
  L5_2 = L4_2
  L4_2 = L4_2.GetCurrentMaxLv
  L4_2, L5_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_item_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._equip_data
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_item_bg_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._equip_data
  L3_2 = L3_2.BGDesc
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.promotion_stars_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._equip_data
  L3_2 = L3_2.Promotion
  L4_2 = A0_2._equip_data
  L4_2 = L4_2.EquipmentRow
  L4_2 = L4_2.MaxPromotion
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_avatar_base_type
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarBaseTypeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._equip_data
  L2_2 = L2_2.EquipmentRow
  L2_2 = L2_2.AvatarBaseType
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_avatar_base_type
  L5_2 = L1_2.BaseTypeIconSmall
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_avatar_base_type
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.BaseTypeText
  L2_2(L3_2, L4_2)
end
L0_1._setup_view_info_panel = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarPropertyExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L1_1.MaxHP
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_hp
  L5_2 = L1_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarPropertyExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_1.Attack
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_atk
  L6_2 = L2_2.IconPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AvatarPropertyExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L1_1.Defence
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_def
  L7_2 = L3_2.IconPath
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._setup_property_icon = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_hp
  L1_2 = L1_2.gameObject
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_attack
  L1_2 = L1_2.gameObject
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_defence
  L1_2 = L1_2.gameObject
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.empty_hp
  L1_2 = L1_2.gameObject
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.empty_attack
  L1_2 = L1_2.gameObject
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.empty_defence
  L1_2 = L1_2.gameObject
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._has_avatar_data
  if L1_2 then
    L1_2 = A0_2._equip_data
    L2_2 = L1_2
    L1_2 = L1_2.GetBattleHP
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_48
    end
  end
  L1_2 = A0_2._equip_data
  L2_2 = L1_2
  L1_2 = L1_2.GetHP
  L1_2 = L1_2(L2_2)
  ::lbl_48::
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.AvatarModule
  L2_2 = L2_2.FormatDisplayDataByType
  L3_2 = L1_1.MaxHP
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_hp
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._has_avatar_data
  if L3_2 then
    L3_2 = A0_2._equip_data
    L4_2 = L3_2
    L3_2 = L3_2.GetBattleAttack
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_72
    end
  end
  L3_2 = A0_2._equip_data
  L4_2 = L3_2
  L3_2 = L3_2.GetAttack
  L3_2 = L3_2(L4_2)
  ::lbl_72::
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.AvatarModule
  L4_2 = L4_2.FormatDisplayDataByType
  L5_2 = L1_1.Attack
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_attack
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._has_avatar_data
  if L5_2 then
    L5_2 = A0_2._equip_data
    L6_2 = L5_2
    L5_2 = L5_2.GetBattleDefence
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_96
    end
  end
  L5_2 = A0_2._equip_data
  L6_2 = L5_2
  L5_2 = L5_2.GetDefence
  L5_2 = L5_2(L6_2)
  ::lbl_96::
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.AvatarModule
  L6_2 = L6_2.FormatDisplayDataByType
  L7_2 = L1_1.Defence
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.text_defence
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetText
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
end
L0_1._setup_status_panel = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = nil
  L2_2 = nil
  L3_2 = A0_2._has_avatar_data
  if L3_2 then
    L3_2 = A0_2._equip_data
    L1_2 = L3_2.BattleRankSkillRow
    L3_2 = A0_2._equip_data
    L2_2 = L3_2.BattleRank
  else
    L3_2 = A0_2._equip_data
    L1_2 = L3_2.SkillRow
    L3_2 = A0_2._equip_data
    L2_2 = L3_2.Rank
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_item_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L1_2.SkillDesc
  L6_2 = G
  L6_2 = L6_2.UITextUtils
  L6_2 = L6_2.GetSkillParams
  L7_2 = L1_2.ParamList
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_skill_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L1_2.SkillName
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_rank_level
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = G
  L5_2 = L5_2.UITextUtils
  L5_2 = L5_2.GetLightConeRankTextID
  L6_2 = L2_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_rank_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "UIText_Equipment_RankLevel"
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._equip_data
  L3_2 = L3_2.EquipmentRow
  L3_2 = L3_2.MaxRank
  if L2_2 < L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_rank_level
    L4_2 = G
    L4_2 = L4_2.UIColorUtils
    L4_2 = L4_2.GetColor
    L5_2 = "#DCC491"
    L4_2 = L4_2(L5_2)
    L3_2.color = L4_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_rank_bg
    L4_2 = G
    L4_2 = L4_2.UIColorUtils
    L4_2 = L4_2.GetColor
    L5_2 = "#282828"
    L4_2 = L4_2(L5_2)
    L3_2.color = L4_2
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_rank_level
    L4_2 = G
    L4_2 = L4_2.UIColorUtils
    L4_2 = L4_2.GetColor
    L5_2 = "#121212"
    L4_2 = L4_2(L5_2)
    L3_2.color = L4_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_rank_bg
    L4_2 = G
    L4_2 = L4_2.UIColorUtils
    L4_2 = L4_2.GetColor
    L5_2 = "#ffcf70"
    L4_2 = L4_2(L5_2)
    L3_2.color = L4_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_normal_profession
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._has_avatar_data
  L5_2 = not L5_2
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AvatarBaseTypeExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._equip_data
  L4_2 = L4_2.EquipmentRow
  L4_2 = L4_2.AvatarBaseType
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._has_avatar_data
  if L4_2 then
    L4_2 = A0_2._equip_data
    L4_2 = L4_2.EquipmentRow
    L4_2 = L4_2.AvatarBaseType
    L5_2 = A0_2._avatar_data
    L5_2 = L5_2.RealID
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.AvatarExcelTable
    L6_2 = L6_2.GetData
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    L6_2 = L6_2.AvatarBaseType
    if L4_2 == L6_2 then
      L7_2 = A0_2._binder
      L7_2 = L7_2.go_match
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetActive
      L9_2 = true
      L7_2(L8_2, L9_2)
      L7_2 = A0_2._binder
      L7_2 = L7_2.go_unmatch
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetActive
      L9_2 = false
      L7_2(L8_2, L9_2)
      L7_2 = A0_2._binder
      L7_2 = L7_2.text_item_desc
      L8_2 = G
      L8_2 = L8_2.UIColorUtils
      L8_2 = L8_2.GetColor
      L9_2 = L4_1.Active
      L8_2 = L8_2(L9_2)
      L7_2.color = L8_2
      L7_2 = A0_2._binder
      L7_2 = L7_2.shadow_desc
      L8_2 = G
      L8_2 = L8_2.UIColorUtils
      L8_2 = L8_2.GetColor
      L9_2 = L5_1.Active
      L8_2 = L8_2(L9_2)
      L7_2.effectColor = L8_2
      L8_2 = A0_2
      L7_2 = A0_2._async_load_sprite_to
      L9_2 = A0_2._binder
      L9_2 = L9_2.img_match
      L10_2 = L3_2.BaseTypeIconSmall
      L7_2(L8_2, L9_2, L10_2)
      L7_2 = A0_2._binder
      L7_2 = L7_2.txt_match
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetTextID
      L9_2 = "UIText_Equipment_Path_Equipmatch_State"
      L10_2 = G
      L10_2 = L10_2.TextmapStatic
      L10_2 = L10_2.GetText
      L11_2 = L3_2.BaseTypeText
      L10_2, L11_2 = L10_2(L11_2)
      L7_2(L8_2, L9_2, L10_2, L11_2)
      L7_2 = A0_2._binder
      L7_2 = L7_2.txt_match
      L8_2 = G
      L8_2 = L8_2.UIColorUtils
      L8_2 = L8_2.GetColor
      L9_2 = L6_1.Active
      L8_2 = L8_2(L9_2)
      L7_2.color = L8_2
    else
      L7_2 = A0_2._binder
      L7_2 = L7_2.go_match
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetActive
      L9_2 = false
      L7_2(L8_2, L9_2)
      L7_2 = A0_2._binder
      L7_2 = L7_2.go_unmatch
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetActive
      L9_2 = true
      L7_2(L8_2, L9_2)
      L7_2 = A0_2._binder
      L7_2 = L7_2.text_item_desc
      L8_2 = G
      L8_2 = L8_2.UIColorUtils
      L8_2 = L8_2.GetColor
      L9_2 = L4_1.Inactive
      L8_2 = L8_2(L9_2)
      L7_2.color = L8_2
      L7_2 = A0_2._binder
      L7_2 = L7_2.shadow_desc
      L8_2 = G
      L8_2 = L8_2.UIColorUtils
      L8_2 = L8_2.GetColor
      L9_2 = L5_1.Inactive
      L8_2 = L8_2(L9_2)
      L7_2.effectColor = L8_2
      L7_2 = A0_2._binder
      L7_2 = L7_2.txt_match
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetTextID
      L9_2 = "UIText_Equipment_Path_EquipUnmatch_State"
      L10_2 = G
      L10_2 = L10_2.TextmapStatic
      L10_2 = L10_2.GetText
      L11_2 = L3_2.BaseTypeText
      L10_2, L11_2 = L10_2(L11_2)
      L7_2(L8_2, L9_2, L10_2, L11_2)
      L7_2 = A0_2._binder
      L7_2 = L7_2.txt_match
      L8_2 = G
      L8_2 = L8_2.UIColorUtils
      L8_2 = L8_2.GetColor
      L9_2 = L6_1.Inactive
      L8_2 = L8_2(L9_2)
      L7_2.color = L8_2
    end
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.go_match
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.go_unmatch
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2._async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_normal_profession
    L7_2 = L3_2.BaseTypeIconSmall
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_match
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = "UIText_Equipment_Path_Equipmatch_State"
    L7_2 = G
    L7_2 = L7_2.TextmapStatic
    L7_2 = L7_2.GetText
    L8_2 = L3_2.BaseTypeText
    L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_match
    L5_2 = G
    L5_2 = L5_2.UIColorUtils
    L5_2 = L5_2.GetColor
    L6_2 = L6_1.Active
    L5_2 = L5_2(L6_2)
    L4_2.color = L5_2
  end
end
L0_1._setup_skill_panel = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._avatar_data
  if L1_2 ~= nil then
    L1_2 = A0_2._avatar_data
    L1_2 = L1_2.IsDisplayOnly
    if not L1_2 then
      L1_2 = G
      L1_2 = L1_2.RedDotModule
      L1_2 = L1_2.Instance
      L2_2 = L1_2
      L1_2 = L1_2.bind_reddot
      L3_2 = "EquipmentTag"
      L4_2 = A0_2._avatar_data
      L4_2 = L4_2.ID
      L5_2 = A0_2
      L6_2 = A0_2._binder
      L6_2 = L6_2.reddot_btn_euqip
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
  else
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.unbind_reddot
    L3_2 = A0_2._binder
    L3_2 = L3_2.reddot_btn_euqip
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_reddot = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L2_1.SafeSetText_Num
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_level_current
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if A2_2 then
    L3_2 = L2_1.SafeSetText_Num
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_level_max
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_level_splash
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_level_max
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_level_splash
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_level_max
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  if A1_2 == 0 and A2_2 == 0 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.slider_exp_progress
    L3_2.value = 0
  else
    L3_2 = A0_2._equip_data
    L4_2 = L3_2
    L3_2 = L3_2.GetCurrentLvMaxExp
    L3_2 = L3_2(L4_2)
    if L3_2 ~= 0 then
      L4_2 = A0_2._binder
      L4_2 = L4_2.slider_exp_progress
      L5_2 = A0_2._equip_data
      L5_2 = L5_2.CurrentExp
      L6_2 = A0_2._equip_data
      L7_2 = L6_2
      L6_2 = L6_2.GetCurrentLvMaxExp
      L6_2 = L6_2(L7_2)
      L5_2 = L5_2 / L6_2
      L4_2.value = L5_2
    else
      L4_2 = A0_2._binder
      L4_2 = L4_2.slider_exp_progress
      L4_2.value = 0
    end
  end
end
L0_1.set_level = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.LightCone.LightConeReplacePage"
  L3_2 = A0_2._equip_data
  L4_2 = A0_2._avatar_data
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._btn_replace_onclick = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.LightCone.LightConeDetailPage"
  L3_2 = A0_2._equip_data
  L4_2 = 2
  L5_2 = nil
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._btn_upgrade_onclick = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.AvatarEducation.AvatarDetail.PathsInfoDialog"
  L1_2(L2_2)
end
L0_1._btn_avatar_base_type_onclick = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.PromotionPreview.LightConePromotionPreviewDialog"
  L3_2 = A0_2._equip_data
  L1_2(L2_2, L3_2)
end
L0_1._btn_promotion_preview = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_item_changed = L9_1
return L0_1
