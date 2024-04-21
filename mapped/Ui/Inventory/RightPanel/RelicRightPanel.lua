local L0_1, L1_1, L2_1
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
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicRightPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.RelicUtils
function L2_1(A0_2)
  local L1_2
  A0_2.is_load_img_by_child_panel = true
  A0_2._show_sub_affix_bonus_record = false
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._show_sub_affix_bonus_record = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_detail_view
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if A2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_detail
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.button_level_up
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_detail
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.button_level_up
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._bind_btn_callback
    L5_2 = A0_2._binder
    L5_2 = L5_2.btn_detail
    L6_2 = A0_2._on_btn_detail
    L3_2(L4_2, L5_2, L6_2)
    L4_2 = A0_2
    L3_2 = A0_2._bind_btn_callback
    L5_2 = A0_2._binder
    L5_2 = L5_2.button_level_up
    L6_2 = A0_2._on_button_level_up
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1.setup_view_by_item = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.UtilEngineWrap
  L2_2 = L2_2.IsCsType
  L3_2 = A1_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.RelicItemData
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_detail_view
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = A1_2.ItemSubType
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ItemSubType
    L3_2 = L3_2.RelicSetShowOnly
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2._setup_relic_set_view
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    else
      L3_2 = A0_2
      L2_2 = A0_2._setup_preview
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_detail
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1.setup_view_by_item_display = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._item = A1_2
  L2_2 = A0_2._item
  L2_2 = L2_2.RelicRow
  A0_2._row = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_relic_basic_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_basic_info_panel
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_status_panel
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_set_skill_panel
  L4_2 = A0_2._row
  L4_2 = L4_2.SetID
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_lock_panel
  L2_2(L3_2)
end
L0_1._setup_detail_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._item = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RelicConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._item
  L3_2 = L3_2.ConfigID
  L2_2 = L2_2(L3_2)
  A0_2._row = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_relic_basic_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_basic_info_panel
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_set_skill_panel
  L4_2 = A0_2._row
  L4_2 = L4_2.SetID
  L2_2(L3_2, L4_2)
end
L0_1._setup_preview = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._item = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._item
  L3_2 = L3_2.ConfigID
  L2_2 = L2_2(L3_2)
  A0_2._row = L2_2
  L2_2 = A0_2._row
  L2_2 = L2_2.CustomDataList
  L2_2 = L2_2[0]
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_relic_basic_info
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_lock
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_relic_position
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_phase_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_img_item
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_img_lightcone
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.RelicUtils
  L3_2 = L3_2.get_all_name_by_set_id
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._get_detail_set_display_id
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_item_view
  L7_2 = A0_2._row
  L7_2 = L7_2.ItemIconPath
  L8_2 = L4_2
  L9_2 = unpack
  L10_2 = L3_2
  L9_2, L10_2 = L9_2(L10_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_set_skill_panel
  L7_2 = L2_2
  L5_2(L6_2, L7_2)
end
L0_1._setup_relic_set_view = L2_1
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
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_relic_position
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
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
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_phase_panel_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_item_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_relic_position
  L1_2(L2_2)
end
L0_1._setup_basic_info_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_img_item
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_img_lightcone
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._row
  L2_2 = L2_2.ID
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_item_view
  L4_2 = L1_2.ItemIconPath
  L5_2 = A0_2._item
  L5_2 = L5_2.BGDesc
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_item_info = L2_1
function L2_1(A0_2, A1_2, A2_2, ...)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_item_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._item
  L5_2 = L5_2.Desc
  L5_2 = L5_2 ~= nil
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_item_icon
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_item_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._item
  L5_2 = L5_2.Desc
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_item_bg_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A2_2
  L6_2 = ...
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_item_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._item
  L5_2 = L5_2.Name
  L3_2(L4_2, L5_2)
end
L0_1._setup_item_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_relic_position
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1.get_textid_by_type
  L4_2 = A0_2._row
  L4_2 = L4_2.Type
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_relic_level_plus
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._item
  L3_2 = L3_2.Level
  L3_2 = L3_2 ~= nil
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_relic_position_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._item
  L3_2 = L3_2.Level
  L3_2 = L3_2 ~= nil
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_relic_position_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._item
  L3_2 = L3_2.Level
  L1_2(L2_2, L3_2)
end
L0_1._setup_relic_position = L2_1
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
  L4_2 = A0_2._show_sub_affix_bonus_record
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_status_panel = L2_1
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
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._lock_panel
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.create_panel
    L3_2 = G
    L3_2 = L3_2.RelicLockPanel
    L4_2 = G
    L4_2 = L4_2.RelicLockPanelBinder
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._lock_panel = L1_2
    L1_2 = A0_2._lock_panel
    L2_2 = L1_2
    L1_2 = L1_2.bind
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_lock
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._lock_panel
    L2_2 = L1_2
    L1_2 = L1_2.show_discard_btn
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.equipment_lock_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._lock_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._lock_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._item
  L1_2(L2_2, L3_2)
end
L0_1._setup_lock_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Relic.RelicDetailPage"
  L3_2 = A0_2._item
  L4_2 = nil
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_btn_detail = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Relic.RelicDetailPage"
  L3_2 = A0_2._item
  L4_2 = 2
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_button_level_up = L2_1
return L0_1
