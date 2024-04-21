local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Utilities.RelicUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicReplacePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicReplacePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_replace
  L4_2 = A0_2._on_btn_replace
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_equip
  L4_2 = A0_2._on_btn_replace
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_upgrade
  L4_2 = A0_2._on_btn_upgrade
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_dismount
  L4_2 = A0_2._on_btn_dismount
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_btn_detail
  L2_2 = L1_2
  L1_2 = L1_2.register_switch_callback
  L3_2 = A0_2._on_btn_detail
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_btn_recommend
  L2_2 = L1_2
  L1_2 = L1_2.register_switch_callback
  L3_2 = A0_2._on_btn_recommend
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  A0_2._is_show_detail = false
  A0_2._is_show_recommend = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.lock_panel
  L2_2 = L1_2
  L1_2 = L1_2.show_discard_btn
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._avatar_data = A1_2
  A0_2._relic_type = A2_2
  L4_2 = A1_2
  L3_2 = A1_2.GetRelicList
  L3_2 = L3_2(L4_2)
  A0_2._relic_list = L3_2
  L3_2 = G
  L3_2 = L3_2.RelicUtils
  L3_2 = L3_2.get_relic_from
  L4_2 = A0_2._relic_type
  L5_2 = A0_2._relic_list
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._item = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_button_text
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback_self = A1_2
  A0_2._callback = A2_2
end
L0_1.set_show_detail_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.lock_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_btn_detail
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_btn_recommend
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_scroll_content
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._relic_type
  L3_2 = A1_2.RelicRow
  L3_2 = L3_2.Type
  if L2_2 ~= L3_2 then
    L2_2 = A1_2.RelicRow
    L2_2 = L2_2.Type
    A0_2._relic_type = L2_2
    L2_2 = G
    L2_2 = L2_2.RelicUtils
    L2_2 = L2_2.get_relic_from
    L3_2 = A0_2._relic_type
    L4_2 = A0_2._relic_list
    L2_2 = L2_2(L3_2, L4_2)
    A0_2._item = L2_2
  end
  A0_2._new_item = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_button_group
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_relic_info
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_rect
  L3_2 = L2_2
  L2_2 = L2_2.SetVerticalScrollPercent
  L4_2 = 1
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_belongs_to
  L2_2(L3_2)
end
L0_1.refresh_relic_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._new_item
  L1_2 = L1_2.BelongAvatarID
  if L1_2 ~= 0 then
    L1_2 = G
    L1_2 = L1_2.AvatarUtils
    L1_2 = L1_2.check_is_multi_hero_avatar
    L2_2 = A0_2._new_item
    L2_2 = L2_2.BelongAvatarID
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_equip_info
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.GameCore
      L1_2 = L1_2.AvatarExcelTable
      L1_2 = L1_2.GetData
      L2_2 = A0_2._new_item
      L2_2 = L2_2.BelongAvatarID
      L1_2 = L1_2(L2_2)
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.AvatarBaseTypeExcelTable
      L2_2 = L2_2.GetData
      L3_2 = L1_2.AvatarBaseType
      L2_2 = L2_2(L3_2)
      L4_2 = A0_2
      L3_2 = A0_2._async_load_sprite_to
      L5_2 = A0_2._binder
      L5_2 = L5_2.img_avatar
      L6_2 = L1_2.AvatarMiniIconPath
      L3_2(L4_2, L5_2, L6_2)
      L4_2 = A0_2
      L3_2 = A0_2._async_load_sprite_to
      L5_2 = A0_2._binder
      L5_2 = L5_2.img_profession
      L6_2 = L2_2.BaseTypeIcon
      L3_2(L4_2, L5_2, L6_2)
    else
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_equip_info
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
    end
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_equip_info
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_belongs_to = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._new_item
  L2_2 = A0_2._item
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1.is_same_item = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._is_show_detail = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_button_text
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_relic_affix_bonus
  L2_2(L3_2)
  L2_2 = A0_2._callback
  if L2_2 then
    L2_2 = A0_2._callback
    L3_2 = A0_2._callback_self
    L4_2 = A0_2._is_show_detail
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_is_show_detail = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 ~= nil then
    A0_2._relic_type = A1_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.lock_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_btn_detail
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_btn_recommend
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_scroll_content
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_equip_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_relic_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_Equioment_Unequipped"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_level
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = 0
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_position
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = G
  L4_2 = L4_2.RelicUtils
  L4_2 = L4_2.get_textid_by_type
  L5_2 = A0_2._relic_type
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_upgrade
  L2_2 = L2_2.gameObject
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_equip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_replace
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_dismount
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.relic_status_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_unequipped_view
  L2_2(L3_2)
end
L0_1.setup_unequipped_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_upgrade
  L1_2 = L1_2.gameObject
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_equip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_replace
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_dismount
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._new_item
  L2_2 = A0_2._item
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_dismount
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_equip
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._item
    L3_2 = L3_2 == nil
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_replace
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._item
    L3_2 = L3_2 ~= nil
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_button_group = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_basic_info
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.lock_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._new_item
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.relic_status_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._new_item
  L4_2 = A0_2._is_show_detail
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_set_skill_info
  L1_2(L2_2)
end
L0_1._refresh_relic_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.set_skill_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._new_item
  L3_2 = L3_2.RelicRow
  L3_2 = L3_2.SetID
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RelicUtils
  L1_2 = L1_2.count_set_skill_id
  L2_2 = A0_2._new_item
  L2_2 = L2_2.RelicRow
  L2_2 = L2_2.SetID
  L3_2 = A0_2._relic_list
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._item
  if L2_2 ~= nil then
    L2_2 = A0_2._item
    L2_2 = L2_2.RelicRow
    L2_2 = L2_2.SetID
    L3_2 = A0_2._new_item
    L3_2 = L3_2.RelicRow
    L3_2 = L3_2.SetID
    if L2_2 == L3_2 then
      goto lbl_29
    end
  end
  L1_2 = L1_2 + 1
  ::lbl_29::
  L2_2 = A0_2._binder
  L2_2 = L2_2.set_skill_info_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_count
  L4_2 = L1_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_set_skill_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_position
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = G
  L3_2 = L3_2.RelicUtils
  L3_2 = L3_2.get_textid_by_type
  L4_2 = A0_2._new_item
  L4_2 = L4_2.RelicRow
  L4_2 = L4_2.Type
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_relic_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._new_item
  L3_2 = L3_2.RelicInfoRow
  L3_2 = L3_2.RelicName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._new_item
  L3_2 = L3_2.Level
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_bg_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._new_item
  L3_2 = L3_2.BGDesc
  L1_2(L2_2, L3_2)
end
L0_1._setup_basic_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_btn_detail
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._is_show_detail
  L4_2 = "UIText_AvatarRelic_Hiden"
  L5_2 = "UIText_AvatarRelic_Compare"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_btn_recommend
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._is_show_recommend
  L4_2 = "UIText_AvatarRelic_Hiden"
  L5_2 = "UIText_AvatarRelic_ExpandBtn_Recommend"
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._setup_button_text = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.relic_status_panel
  L2_2 = L1_2
  L1_2 = L1_2.show_sub_affix_bonus
  L3_2 = A0_2._is_show_detail
  L1_2(L2_2, L3_2)
end
L0_1._setup_relic_affix_bonus = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = A0_2._new_item
    L0_3 = L0_3.BelongAvatarID
    if L0_3 == 0 then
      L0_3 = G
      L0_3 = L0_3.RelicUtils
      L0_3 = L0_3.do_dress_relic
      L1_3 = A0_2._avatar_data
      L1_3 = L1_3.RealID
      L2_3 = A0_2._new_item
      L0_3(L1_3, L2_3)
      return
    end
    L0_3 = CS
    L0_3 = L0_3.RPG
    L0_3 = L0_3.Client
    L0_3 = L0_3.GlobalVars
    L0_3 = L0_3.s_ModuleManager
    L0_3 = L0_3.AvatarModule
    L1_3 = L0_3
    L0_3 = L0_3.GetAvatar
    L2_3 = A0_2._new_item
    L2_3 = L2_3.BelongAvatarID
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = G
    L1_3 = L1_3.TextmapStatic
    L1_3 = L1_3.GetText
    L2_3 = L0_3.Row
    L2_3 = L2_3.AvatarName
    L1_3 = L1_3(L2_3)
    L2_3 = CS
    L2_3 = L2_3.RPG
    L2_3 = L2_3.Client
    L2_3 = L2_3.ConfirmDialogUtil
    L2_3 = L2_3.ShowConfirmDialog
    function L3_3(A0_4)
      local L1_4, L2_4, L3_4
      if A0_4 then
        L1_4 = G
        L1_4 = L1_4.RelicUtils
        L1_4 = L1_4.do_dress_relic
        L2_4 = A0_2._avatar_data
        L2_4 = L2_4.RealID
        L3_4 = A0_2._new_item
        L1_4(L2_4, L3_4)
      end
    end
    L2_3 = L2_3(L3_3)
    L3_3 = DialogBtnMode
    L3_3 = L3_3.eOkCancel
    L2_3.Mode = L3_3
    L3_3 = G
    L3_3 = L3_3.AvatarUtils
    L3_3 = L3_3.check_is_multi_hero_avatar
    L4_3 = L0_3.Row
    L4_3 = L4_3.AvatarID
    L3_3 = L3_3(L4_3)
    if L3_3 then
      L3_3 = CS
      L3_3 = L3_3.RPG
      L3_3 = L3_3.GameCore
      L3_3 = L3_3.AvatarExcelTable
      L3_3 = L3_3.GetData
      L4_3 = A0_2._new_item
      L4_3 = L4_3.BelongAvatarID
      L3_3 = L3_3(L4_3)
      L4_3 = CS
      L4_3 = L4_3.RPG
      L4_3 = L4_3.GameCore
      L4_3 = L4_3.AvatarBaseTypeExcelTable
      L4_3 = L4_3.GetData
      L5_3 = L3_3.AvatarBaseType
      L4_3 = L4_3(L5_3)
      L6_3 = L2_3
      L5_3 = L2_3.GetComponentContent
      L5_3 = L5_3(L6_3)
      L6_3 = L5_3
      L5_3 = L5_3.SafeSetTextID
      L7_3 = "UIText_WarningDialog_RelicReplace_HeroPath"
      L8_3 = L1_3
      L9_3 = G
      L9_3 = L9_3.TextmapStatic
      L9_3 = L9_3.GetText
      L10_3 = L4_3.BaseTypeText
      L9_3, L10_3 = L9_3(L10_3)
      L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
    else
      L4_3 = L2_3
      L3_3 = L2_3.GetComponentContent
      L3_3 = L3_3(L4_3)
      L4_3 = L3_3
      L3_3 = L3_3.SafeSetTextID
      L5_3 = "UIText_WarningDialog_RelicReplace"
      L6_3 = L1_3
      L3_3(L4_3, L5_3, L6_3)
    end
  end
  L2_2 = A0_2._owner
  L2_2 = L2_2._button_mutex
  L3_2 = L2_2
  L2_2 = L2_2.Check
  function L4_2()
    local L0_3, L1_3
    L0_3 = L1_2
    L0_3()
  end
  L5_2 = 0.3
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_btn_replace = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._owner
  L1_2 = L1_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.Check
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = G
    L0_3 = L0_3.UIManager
    L0_3 = L0_3.load_and_async_show
    L1_3 = "Ui.Relic.RelicDetailPage"
    L2_3 = A0_2._new_item
    L3_3 = 2
    L0_3(L1_3, L2_3, L3_3)
  end
  L4_2 = 0.3
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_upgrade = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.RelicUtils
  L1_2 = L1_2.do_take_off_relic
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.RealID
  L3_2 = A0_2._relic_type
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_dismount = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_is_show_detail
  L3_2 = A0_2._is_show_detail
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_is_show_recommend
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_detail = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._show_recommend_callback_self = A1_2
  A0_2._show_recommend_callback = A2_2
end
L0_1.set_show_recommend_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._is_show_recommend = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_button_text
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._show_recommend_callback
  L4_2 = A0_2._show_recommend_callback_self
  L5_2 = A0_2._is_show_recommend
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.set_is_show_recommend = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.set_is_show_recommend
  L3_2 = A0_2._is_show_recommend
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_is_show_detail
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_show_recommend
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.SDKLuaReportAdapter
    L1_2 = L1_2.ReportUIButtonClick
    L2_2 = A0_2._owner
    L2_2 = L2_2.__name
    L3_2 = "RelicRecommendPanel"
    L4_2 = "ClickShow"
    L5_2 = A0_2._owner
    L5_2 = L5_2.guid
    L1_2(L2_2, L3_2, L4_2, L5_2)
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.SDKLuaReportAdapter
    L1_2 = L1_2.ReportUIButtonClick
    L2_2 = A0_2._owner
    L2_2 = L2_2.__name
    L3_2 = "RelicRecommendPanel"
    L4_2 = "ClickHide"
    L5_2 = A0_2._owner
    L5_2 = L5_2.guid
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L0_1._on_btn_recommend = L1_1
return L0_1
