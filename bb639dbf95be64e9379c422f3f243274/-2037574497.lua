local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarSkillTree.SkillTreePointDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.AvatarUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.ItemCost.ItemCostListGenerator"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.AvatarModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.AvatarSkillTreeExcelTable
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.AvatarSkillExcelTable
L3_1 = "UIText_AvatarSkillTree_NextLv"
L4_1 = "UIText_AvatarRelic_Hiden"
L5_1 = {}
L5_1.Attribute = 1
L5_1.Skill = 2
L5_1.Special = 3
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.Client
L6_1 = L6_1.GlobalVars
L6_1 = L6_1.s_ModuleManager
L6_1 = L6_1.InventoryModule
L7_1 = G
L7_1 = L7_1.Class
L8_1 = "SkillTreePointDetailPanel"
L9_1 = G
L9_1 = L9_1.BasePanel
L7_1 = L7_1(L8_1, L9_1)
function L8_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  A0_2._avatar_data = nil
  A0_2._selected_point = nil
  A0_2.is_compare = false
  L6_2 = A0_2
  L5_2 = A0_2.init
  L7_2 = A3_2
  L8_2 = A4_2
  L5_2(L6_2, L7_2, L8_2)
end
L7_1.ctor = L8_1
function L8_1(A0_2, A1_2, A2_2)
  A0_2._avatar_data = A1_2
  A0_2._selected_point = A2_2
end
L7_1.init = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AvatarSkillTreeUnlockFinish
  L4_2 = L7_1._on_skill_upgraded
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = A0_2._on_btn_back
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_unlock
  L4_2 = A0_2._upgrade_skill
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_up
  L4_2 = A0_2._upgrade_skill
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_compare
  L4_2 = A0_2._on_btn_compare
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.ItemCostListGenerator
  L1_2 = L1_2(L2_2)
  A0_2._item_cost_list_gener = L1_2
  L1_2 = G
  L1_2 = L1_2.ResBarAreaFactory
  L1_2 = L1_2.CreateResBarArea
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_res_bar
  L3_2 = "SkillTreePointDetailPanel"
  L4_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._res_bar_area = L1_2
end
L7_1._on_load = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.delete
  L2_2 = A0_2._item_cost_list_gener
  L1_2(L2_2)
  A0_2._item_cost_list_gener = nil
end
L7_1._on_unload = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._avatar_data = A1_2
  A0_2._selected_point = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_view
  L3_2(L4_2)
end
L7_1.setup_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._update_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_info_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_cost_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_compare_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_res_bar_area
  L1_2(L2_2)
end
L7_1._setup_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.SkillTreeData
  L2_2 = L1_2
  L1_2 = L1_2.GetSkillTreePointLevel
  L3_2 = A0_2._selected_point
  L3_2 = L3_2.PointID
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._point_level = L1_2
  L1_2 = L1_1.GetData
  L2_2 = A0_2._selected_point
  L2_2 = L2_2.PointID
  L3_2 = A0_2._point_level
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._point_row = L1_2
  L1_2 = L1_1.GetData
  L2_2 = A0_2._selected_point
  L2_2 = L2_2.PointID
  L3_2 = A0_2._point_level
  L3_2 = L3_2 + 1
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._next_point_row = L1_2
  L1_2 = A0_2._point_level
  L1_2 = L1_2 == 0
  A0_2._is_locked = L1_2
  L1_2 = A0_2._point_level
  L2_2 = A0_2._selected_point
  L2_2 = L2_2.MaxLevel
  L1_2 = L1_2 == L2_2
  A0_2._is_max = L1_2
end
L7_1._update_data = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._selected_point
  L1_2 = L1_2.PointType
  L2_2 = L5_1.Attribute
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_attribute_info_view
    L1_2(L2_2)
  else
    L1_2 = A0_2._selected_point
    L1_2 = L1_2.PointType
    L2_2 = L5_1.Skill
    if L1_2 == L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2._setup_skill_info_view
      L1_2(L2_2)
    else
      L1_2 = A0_2._selected_point
      L1_2 = L1_2.PointType
      L2_2 = L5_1.Special
      if L1_2 == L2_2 then
        L2_2 = A0_2
        L1_2 = A0_2._setup_special_info_view
        L1_2(L2_2)
      end
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect_desc
  L2_2 = L1_2
  L1_2 = L1_2.SetHorizontalScrollPercent
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect_desc
  L2_2 = L1_2
  L1_2 = L1_2.SetVerticalScrollPercent
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._next_scroll_rect_desc
  L2_2 = L1_2
  L1_2 = L1_2.SetHorizontalScrollPercent
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._next_scroll_rect_desc
  L2_2 = L1_2
  L1_2 = L1_2.SetVerticalScrollPercent
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L7_1._setup_info_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = "UIText_SkillTreePanel_TypeName_Status"
  L2_2 = A0_2._point_level
  L3_2 = G
  L3_2 = L3_2.UITextUtils
  L3_2 = L3_2.get_skill_property_desc
  L4_2 = A0_2._point_row
  L3_2 = L3_2(L4_2)
  L4_2 = G
  L4_2 = L4_2.UITextUtils
  L4_2 = L4_2.get_skill_property_desc
  L5_2 = A0_2._next_point_row
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.panel_tag
  L6_2 = L5_2
  L5_2 = L5_2.setup_view
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_type_view
  L7_2 = L1_2
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_tag_view
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_level_view
  L7_2 = L2_2
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_simple_desc_view
  L7_2 = L3_2
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
end
L7_1._setup_attribute_info_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._selected_point
  L1_2 = L1_2.LevelUpSkillID
  L1_2 = L1_2[0]
  if not L1_2 then
    L1_2 = 0
  end
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.SkillTreeData
  L3_2 = L2_2
  L2_2 = L2_2.GetSkillPointLevel
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_1.GetData
  L4_2 = L1_2
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.SkillTypeDesc
  L5_2 = L2_2
  L7_2 = A0_2
  L6_2 = A0_2._setup_type_view
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2._setup_tag_view
  L8_2 = L3_2
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2._setup_level_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2._setup_skill_desc_view
  L8_2 = L1_2
  L9_2 = A0_2._is_locked
  if L9_2 then
    L9_2 = L2_2 + 1
    if L9_2 then
      goto lbl_36
    end
  end
  L9_2 = L2_2
  ::lbl_36::
  L6_2(L7_2, L8_2, L9_2)
end
L7_1._setup_skill_info_view = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = L2_1.GetData
  L4_2 = A1_2
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = G
  L4_2 = L4_2.UITextUtils
  L4_2 = L4_2.GetSkillDesc
  L5_2 = L3_2.SkillDesc
  L6_2 = L3_2.ParamList
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_point_desc
  L6_2 = L5_2
  L5_2 = L5_2.SetCustomizedText
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.panel_sub_desc
  L6_2 = L5_2
  L5_2 = L5_2.setup_view
  L7_2 = L3_2
  L8_2 = A0_2._avatar_data
  L5_2(L6_2, L7_2, L8_2)
end
L7_1._setup_skill_desc_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = "UIText_SkillTreePanel_TypeName_ExtraAbility"
  L2_2 = A0_2._point_level
  L3_2 = nil
  L4_2 = nil
  L5_2 = A0_2._point_row
  if L5_2 ~= nil then
    L5_2 = G
    L5_2 = L5_2.UITextUtils
    L5_2 = L5_2.GetSkillDesc
    L6_2 = A0_2._point_row
    L6_2 = L6_2.PointDesc
    L7_2 = A0_2._point_row
    L7_2 = L7_2.ParamList
    L5_2 = L5_2(L6_2, L7_2)
    L3_2 = L5_2
  end
  L5_2 = A0_2._next_point_row
  if L5_2 ~= nil then
    L5_2 = G
    L5_2 = L5_2.UITextUtils
    L5_2 = L5_2.GetSkillDesc
    L6_2 = A0_2._next_point_row
    L6_2 = L6_2.PointDesc
    L7_2 = A0_2._next_point_row
    L7_2 = L7_2.ParamList
    L5_2 = L5_2(L6_2, L7_2)
    L4_2 = L5_2
  end
  L6_2 = A0_2
  L5_2 = A0_2._setup_type_view
  L7_2 = L1_2
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_tag_view
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_level_view
  L7_2 = L2_2
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_simple_desc_view
  L7_2 = L3_2
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
end
L7_1._setup_special_info_view = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._get_point_name
  L4_2 = A0_2._selected_point
  L4_2 = L4_2.PointID
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._name_textid = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_point_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._name_textid
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_point_type
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L7_1._setup_type_view = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_tag
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L7_1._setup_tag_view = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._point_level
  L2_2 = A1_2 - L2_2
  L3_2 = A0_2._is_locked
  L3_2 = A0_2._is_max
  L4_2 = A0_2
  L3_2 = A0_2._is_display_only
  L3_2 = L3_2(L4_2)
  L3_2 = not L3_2 and L3_2
  L4_2 = A0_2._is_locked
  if L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2._setup_level
    L6_2 = A1_2 + 1
    L7_2 = L2_2
    L8_2 = A0_2._binder
    L8_2 = L8_2.txt_point_level
    L9_2 = A0_2._binder
    L9_2 = L9_2.txt_point_level_plus
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  elseif L3_2 then
    L5_2 = A0_2
    L4_2 = A0_2._setup_level
    L6_2 = A1_2 + 1
    L7_2 = L2_2
    L8_2 = A0_2._binder
    L8_2 = L8_2.text_point_next_level
    L9_2 = A0_2._binder
    L9_2 = L9_2.text_point_next_level_plus
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    L5_2 = A0_2
    L4_2 = A0_2._setup_level
    L6_2 = A1_2
    L7_2 = L2_2
    L8_2 = A0_2._binder
    L8_2 = L8_2.txt_point_level
    L9_2 = A0_2._binder
    L9_2 = L9_2.txt_point_level_plus
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  else
    L5_2 = A0_2
    L4_2 = A0_2._setup_level
    L6_2 = A1_2
    L7_2 = L2_2
    L8_2 = A0_2._binder
    L8_2 = L8_2.txt_point_level
    L9_2 = A0_2._binder
    L9_2 = L9_2.txt_point_level_plus
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  end
end
L7_1._setup_level_view = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = A1_2 - A2_2
  L7_2 = A3_2
  L6_2 = A3_2.SafeSetText
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = A4_2
  L6_2 = A4_2.SafeSetText
  L8_2 = "+"
  L9_2 = A2_2
  L8_2 = L8_2 .. L9_2
  L6_2(L7_2, L8_2)
  L7_2 = A4_2
  L6_2 = A4_2.SafeSetActive
  L8_2 = 0 < A2_2
  L6_2(L7_2, L8_2)
end
L7_1._setup_level = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_sub_desc
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._is_locked
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_point_desc
    L4_2 = L3_2
    L3_2 = L3_2.SetCustomizedText
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_point_desc
    L4_2 = L3_2
    L3_2 = L3_2.SetCustomizedText
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end
L7_1._setup_simple_desc_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._is_display_only
  L1_2 = L1_2(L2_2)
  L1_2 = not L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_material_cost
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_coin_cost
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._item_cost_list_gener
    L3_2 = L2_2
    L2_2 = L2_2.init
    L4_2 = A0_2._next_point_row
    L4_2 = L4_2.MaterialList
    L2_2(L3_2, L4_2)
    L2_2 = G
    L2_2 = L2_2.AvatarUtils
    L2_2 = L2_2.get_skill_material_cost
    L3_2 = A0_2._next_point_row
    L2_2 = L2_2(L3_2)
    A0_2._material_datas = L2_2
    L2_2 = G
    L2_2 = L2_2.AvatarUtils
    L2_2 = L2_2.get_skill_coin_cost
    L3_2 = A0_2._next_point_row
    L2_2 = L2_2(L3_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_material_cost
    L4_2 = L3_2
    L3_2 = L3_2.bind_click
    L5_2 = A0_2
    L6_2 = A0_2._on_click_material_item
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_material_cost
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = A0_2._material_datas
    L6_2 = false
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_coin_cost
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L7_1._setup_cost_view = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 1
  L3_2 = 1
  L4_2 = A0_2._material_datas
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2.ConfigID
    L8_2 = A0_2._material_datas
    L8_2 = L8_2[L6_2]
    L8_2 = L8_2.ID
    if L7_2 == L8_2 then
      L7_2 = A0_2._material_datas
      L7_2 = L7_2[L6_2]
      L2_2 = L7_2.Num
      break
    end
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.InventoryModule
  L4_2 = L3_2
  L3_2 = L3_2.GetItemCountByConfigID
  L5_2 = A1_2.ConfigID
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = G
  L4_2 = L4_2.UIManager
  L4_2 = L4_2.load_and_show
  L5_2 = "Ui.Common.ItemDetailDialog"
  L4_2 = L4_2(L5_2)
  L6_2 = L4_2
  L5_2 = L4_2.setup_view_by_item
  L7_2 = A1_2
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_exit_callback
  L7_2 = A0_2._clear_locate_item_data
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  if L2_2 > L3_2 then
    L5_2 = L2_2 - L3_2
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.ItemData
    L7_2 = A1_2.ConfigID
    L6_2 = L6_2(L7_2)
    L6_2.Count = L5_2
    L6_1.GotoLocateItemData = L6_2
  end
end
L7_1._on_click_material_item = L8_1
function L8_1(A0_2)
  local L1_2
  L6_1.GotoLocateItemData = nil
end
L7_1._clear_locate_item_data = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2
  L1_2 = A0_2._is_display_only
  L1_2 = L1_2(L2_2)
  L1_2 = not L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_btns
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2._point_level
  L3_2 = A0_2._selected_point
  L3_2 = L3_2.MaxLevel
  L2_2 = L2_2 == L3_2
  L3_2 = G
  L3_2 = L3_2.AvatarUtils
  L3_2 = L3_2.is_skill_upgradable_check_avatar
  L4_2 = A0_2._avatar_data
  L5_2 = A0_2._next_point_row
  L3_2 = L3_2(L4_2, L5_2)
  L3_2 = not L2_2 and L3_2
  L4_2 = A0_2._point_level
  L4_2 = 0 < L4_2
  L5_2 = not L3_2 and L5_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_max
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L2_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_limit_hint
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L3_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_to_unlock
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L5_2 or L8_2
  if L5_2 then
    L8_2 = not L4_2
  end
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_to_up
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L5_2 or L8_2
  if L5_2 then
    L8_2 = L4_2
  end
  L6_2(L7_2, L8_2)
  if L3_2 then
    L7_2 = A0_2
    L6_2 = A0_2._setup_limit_hint
    L6_2(L7_2)
  elseif L5_2 then
    L6_2 = A0_2._item_cost_list_gener
    L7_2 = L6_2
    L6_2 = L6_2.is_material_enough
    L6_2, L7_2 = L6_2(L7_2)
    if L6_2 and L7_2 then
      if L4_2 then
        L8_2 = A0_2._binder
        L8_2 = L8_2.text_btn_level_up
        L9_2 = L8_2
        L8_2 = L8_2.SafeSetTextID
        L10_2 = "UIText_CommonItem_Exchange_Button"
        L11_2 = A0_2._item_cost_list_gener
        L12_2 = L11_2
        L11_2 = L11_2.get_common_item_name
        L11_2, L12_2 = L11_2(L12_2)
        L8_2(L9_2, L10_2, L11_2, L12_2)
      else
        L8_2 = A0_2._binder
        L8_2 = L8_2.text_btn_unlock
        L9_2 = L8_2
        L8_2 = L8_2.SafeSetTextID
        L10_2 = "UIText_CommonItem_Exchange_Button"
        L11_2 = A0_2._item_cost_list_gener
        L12_2 = L11_2
        L11_2 = L11_2.get_common_item_name
        L11_2, L12_2 = L11_2(L12_2)
        L8_2(L9_2, L10_2, L11_2, L12_2)
      end
    elseif L4_2 then
      L8_2 = A0_2._binder
      L8_2 = L8_2.text_btn_level_up
      L9_2 = L8_2
      L8_2 = L8_2.SafeSetTextID
      L10_2 = "UIText_Equipment_LevelUp"
      L8_2(L9_2, L10_2)
    else
      L8_2 = A0_2._binder
      L8_2 = L8_2.text_btn_unlock
      L9_2 = L8_2
      L8_2 = L8_2.SafeSetTextID
      L10_2 = "UIText_AvatarRank_BtnActive"
      L8_2(L9_2, L10_2)
    end
  end
end
L7_1._setup_btn_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.AvatarUtils
  L1_2 = L1_2.get_skill_pre_point
  L2_2 = A0_2._avatar_data
  L3_2 = A0_2._next_point_row
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = G
  L2_2 = L2_2.AvatarUtils
  L2_2 = L2_2.is_skill_promotion_enough
  L3_2 = A0_2._avatar_data
  L4_2 = A0_2._next_point_row
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_limit
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_SkillTreeDetail_LimitPromotion"
    L5_2 = A0_2._next_point_row
    L5_2 = L5_2.AvatarPromotionLimit
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = G
    L2_2 = L2_2.AvatarUtils
    L2_2 = L2_2.is_skill_level_enough
    L3_2 = A0_2._avatar_data
    L4_2 = A0_2._next_point_row
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.txt_limit
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_SkillTreeDetail_LimitLevel"
      L5_2 = A0_2._next_point_row
      L5_2 = L5_2.AvatarLevelLimit
      L2_2(L3_2, L4_2, L5_2)
    elseif L1_2 ~= 0 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.TextmapStatic
      L2_2 = L2_2.GetText
      L4_2 = A0_2
      L3_2 = A0_2._get_point_name
      L5_2 = L1_2
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2)
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.txt_limit
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = "UIText_SkillTreeResult_LimitPre"
      L6_2 = L2_2
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L7_1._setup_limit_hint = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L1_1.GetData
  L3_2 = A1_2
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.PointType
  L4_2 = L5_1.Attribute
  if L3_2 == L4_2 then
    L3_2 = L2_2.PointName
    return L3_2
  else
    L3_2 = L2_2.PointType
    L4_2 = L5_1.Skill
    if L3_2 == L4_2 then
      L3_2 = L2_2.LevelUpSkillID
      L3_2 = L3_2[0]
      if not L3_2 then
        L3_2 = 0
      end
      L4_2 = A0_2._avatar_data
      L4_2 = L4_2.SkillTreeData
      L5_2 = L4_2
      L4_2 = L4_2.GetSkillPointLevel
      L6_2 = L3_2
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = L2_1.GetData
      L6_2 = L3_2
      L7_2 = L4_2
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = L5_2.SkillName
      return L6_2
    else
      L3_2 = L2_2.PointType
      L4_2 = L5_1.Special
      if L3_2 == L4_2 then
        L3_2 = L2_2.PointName
        return L3_2
      end
    end
  end
end
L7_1._get_point_name = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._res_bar_area
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._res_bar_area
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L4_2 = A0_2
  L3_2 = A0_2._is_display_only
  L3_2 = L3_2(L4_2)
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L7_1._setup_res_bar_area = L8_1
function L8_1(A0_2, A1_2, A2_2)
  A0_2._close_callback = A1_2
  A0_2._close_handler = A2_2
end
L7_1.register_close_callback = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_back
  L1_2(L2_2)
end
L7_1.close = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.try_close_compare
  L1_2(L2_2)
  A0_2.is_compare = false
  L1_2 = A0_2._close_callback
  if L1_2 then
    L1_2 = A0_2._close_handler
    if L1_2 then
      L1_2 = A0_2._close_callback
      L2_2 = A0_2._close_handler
      L1_2(L2_2)
    else
      L1_2 = A0_2._close_callback
      L1_2()
    end
  end
end
L7_1._on_btn_back = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.is_compare
  if L1_2 then
    A0_2.is_compare = false
    L2_2 = A0_2
    L1_2 = A0_2._setup_compare_state
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L7_1.try_close_compare = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._selected_point
  if L1_2 == nil then
    return
  end
  L1_2 = {}
  L2_2 = A0_2._next_point_row
  L2_2 = L2_2.MaterialList
  L3_2 = 0
  L4_2 = L2_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = L7_2.ItemID
    L8_2(L9_2, L10_2)
  end
  L3_2 = G
  L3_2 = L3_2.InventoryUtils
  L3_2 = L3_2.check_item_deleted
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    return
  end
  L3_2 = A0_2._item_cost_list_gener
  L4_2 = L3_2
  L3_2 = L3_2.get_item_cost_list
  L5_2 = A0_2._do_upgrade_skill
  L6_2 = A0_2._on_item_cost_not_enough
  L7_2 = A0_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L7_1._upgrade_skill = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.StrExt
  L2_2 = L2_2.IsNullOrEmpty
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIPileToastMessageTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L7_1._on_item_cost_not_enough = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 ~= nil then
    L2_2 = A1_2.Count
    if L2_2 ~= 0 then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.OOGONDGGKMI
  L3_2 = L2_2
  L2_2 = L2_2.JPONDAIBDKN
  L4_2 = A0_2._selected_point
  L4_2 = L4_2.PointID
  L5_2 = A0_2._point_level
  L5_2 = L5_2 + 1
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L7_1._do_upgrade_skill = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = A0_2
  L2_2 = A0_2._update_avatar_data
  L2_2(L3_2)
  L2_2 = L1_1.GetData
  L3_2 = A1_2.PointID
  L4_2 = A1_2.Level
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.PointType
  L4_2 = A1_2.PointID
  L5_2 = A1_2.Level
  L6_2 = A1_2.Level
  if L6_2 == 1 then
    L6_2 = "UIText_SkillTreeResult_Active"
    if L6_2 then
      goto lbl_17
    end
  end
  L6_2 = "UIText_SkillTreeResult_LevelUp"
  ::lbl_17::
  L7_2 = G
  L7_2 = L7_2.UIManager
  L7_2 = L7_2.load_and_show
  L8_2 = "Ui.AvatarEducation.AvatarSkillTree.SkillTreeLevelUpResultDialog"
  L9_2 = L3_2
  L10_2 = L4_2
  L11_2 = L5_2
  L12_2 = L6_2
  L13_2 = L5_2 - 1
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2 = L5_1.Special
  if L3_2 == L7_2 then
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.GlobalVars
    L7_2 = L7_2.s_GamePhaseManager
    L8_2 = L7_2
    L7_2 = L7_2.GetCurrentPhase
    L7_2 = L7_2(L8_2)
    L8_2 = L7_2 or L8_2
    if L7_2 then
      L9_2 = L7_2
      L8_2 = L7_2.GetAdventureAudioManager
      L8_2 = L8_2(L9_2)
    end
    if L8_2 ~= nil then
      L10_2 = L8_2
      L9_2 = L8_2.PlayUICharacterVO
      L11_2 = CS
      L11_2 = L11_2.RPG
      L11_2 = L11_2.GameCore
      L11_2 = L11_2.AdventureCharacterVOType
      L11_2 = L11_2.SkillTreeUnlock
      L12_2 = A0_2._avatar_data
      L9_2(L10_2, L11_2, L12_2)
    end
  end
end
L7_1._on_skill_upgraded = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.ID
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAvatar
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._avatar_data = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_view
  L2_2(L3_2)
end
L7_1._update_avatar_data = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_material_cost
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_material_cost
    L2_2 = L1_2
    L1_2 = L1_2.is_active
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_13
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_13::
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_material_cost
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L7_1.get_first_selected_object = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.level_up_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.active_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.level_up_in_control_button
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.active_in_control_button
  L2_2.ActionEnabled = A1_2
end
L7_1.setup_in_control_button_enable = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._display_only
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.get_blackboard
    L1_2 = L1_2(L2_2)
    L3_2 = L1_2
    L2_2 = L1_2.query
    L4_2 = "IsDisplayOnly"
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L2_2 = false
    end
    A0_2._display_only = L2_2
  end
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.IsDisplayOnly
  if not L1_2 then
    L1_2 = A0_2._display_only
  end
  return L1_2
end
L7_1._is_display_only = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_btn_compare
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._node_compare
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L7_1._enable_skill_compare = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2)
  local L9_2, L10_2, L11_2, L12_2
  A0_2._text_next_level = A1_2
  A0_2._text_next_add_level = A2_2
  A0_2._text_next_level_desc = A3_2
  A0_2._text_compare_skill_name = A4_2
  A0_2._node_compare = A5_2
  A0_2._next_scroll_rect_desc = A6_2
  A0_2._text_next_tag = A7_2
  L10_2 = A0_2
  L9_2 = A0_2.create_panel
  L11_2 = G
  L11_2 = L11_2.SkillTreePointSubDescPanel
  L12_2 = G
  L12_2 = L12_2.SkillTreePointSubDescPanelBinder
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  A0_2._panel_next_sub_desc = L9_2
  L9_2 = A0_2._panel_next_sub_desc
  L10_2 = L9_2
  L9_2 = L9_2.bind
  L11_2 = A8_2
  L9_2(L10_2, L11_2)
end
L7_1.register_next_level_node = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_compare_state
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_compare_info_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect_desc
  L2_2 = L1_2
  L1_2 = L1_2.SetHorizontalScrollPercent
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect_desc
  L2_2 = L1_2
  L1_2 = L1_2.SetVerticalScrollPercent
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._next_scroll_rect_desc
  L2_2 = L1_2
  L1_2 = L1_2.SetHorizontalScrollPercent
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._next_scroll_rect_desc
  L2_2 = L1_2
  L1_2 = L1_2.SetVerticalScrollPercent
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L7_1._on_btn_compare = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = nil
  L2_2 = nil
  L3_2 = nil
  L4_2 = A0_2._selected_point
  L4_2 = L4_2.PointType
  L5_2 = L5_1.Attribute
  if L4_2 == L5_2 then
    L4_2 = G
    L4_2 = L4_2.UITextUtils
    L4_2 = L4_2.get_skill_property_desc
    L5_2 = A0_2._next_point_row
    L4_2 = L4_2(L5_2)
    L1_2 = L4_2
    L2_2 = A0_2._point_level
  else
    L4_2 = A0_2._selected_point
    L4_2 = L4_2.PointType
    L5_2 = L5_1.Skill
    if L4_2 == L5_2 then
      L4_2 = A0_2._selected_point
      L4_2 = L4_2.LevelUpSkillID
      L4_2 = L4_2[0]
      if not L4_2 then
        L4_2 = 0
      end
      L5_2 = A0_2._avatar_data
      L5_2 = L5_2.SkillTreeData
      L6_2 = L5_2
      L5_2 = L5_2.GetSkillPointLevel
      L7_2 = L4_2
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = L2_1.GetData
      L7_2 = L4_2
      L8_2 = L5_2 + 1
      L6_2 = L6_2(L7_2, L8_2)
      L3_2 = L6_2
      if L3_2 ~= nil then
        L6_2 = G
        L6_2 = L6_2.UITextUtils
        L6_2 = L6_2.GetSkillDesc
        L7_2 = L3_2.SkillDesc
        L8_2 = L3_2.ParamList
        L6_2 = L6_2(L7_2, L8_2)
        L1_2 = L6_2
      end
      L2_2 = L5_2
    else
      L4_2 = A0_2._selected_point
      L4_2 = L4_2.PointType
      L5_2 = L5_1.Special
      if L4_2 == L5_2 then
        L4_2 = A0_2._next_point_row
        if L4_2 ~= nil then
          L4_2 = G
          L4_2 = L4_2.UITextUtils
          L4_2 = L4_2.GetSkillDesc
          L5_2 = A0_2._next_point_row
          L5_2 = L5_2.PointDesc
          L6_2 = A0_2._next_point_row
          L6_2 = L6_2.ParamList
          L4_2 = L4_2(L5_2, L6_2)
          L1_2 = L4_2
        end
        L2_2 = A0_2._point_level
      end
    end
  end
  L4_2 = A0_2._text_next_level_desc
  L5_2 = L4_2
  L4_2 = L4_2.SetCustomizedText
  L6_2 = L1_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._text_next_level
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = A0_2._point_level
  L6_2 = L6_2 + 1
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._point_level
  L4_2 = L2_2 - L4_2
  L5_2 = A0_2._text_next_add_level
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = "+"
  L8_2 = L4_2
  L7_2 = L7_2 .. L8_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._text_next_add_level
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = 0 < L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._text_compare_skill_name
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = A0_2._name_textid
  L5_2(L6_2, L7_2)
  if L3_2 == nil then
    L5_2 = A0_2._text_next_tag
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = false
    L5_2(L6_2, L7_2)
  else
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.TextmapStatic
    L5_2 = L5_2.GetText
    L6_2 = L3_2.SkillTag
    L5_2 = L5_2(L6_2)
    L6_2 = G
    L6_2 = L6_2.StrExt
    L6_2 = L6_2.IsNullOrEmpty
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    L6_2 = not L6_2
    L7_2 = A0_2._text_next_tag
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetActive
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    if L6_2 then
      L7_2 = A0_2._text_next_tag
      L8_2 = L7_2
      L7_2 = L7_2.SetCustomizedText
      L9_2 = "["
      L10_2 = L5_2
      L11_2 = "]"
      L9_2 = L9_2 .. L10_2 .. L11_2
      L7_2(L8_2, L9_2)
    end
  end
  L5_2 = A0_2._panel_next_sub_desc
  L6_2 = L5_2
  L5_2 = L5_2.setup_view
  L7_2 = L3_2
  L8_2 = A0_2._avatar_data
  L5_2(L6_2, L7_2, L8_2)
end
L7_1._setup_compare_info_view = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.arrow_compare_close
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.arrow_compare_expand
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._node_compare
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_compare_btn
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  if A1_2 then
    L4_2 = L4_1
    if L4_2 then
      goto lbl_24
    end
  end
  L4_2 = L3_1
  ::lbl_24::
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_compare
  if A1_2 then
    L5_2 = A0_2._on_btn_hiden
    if L5_2 then
      goto lbl_34
    end
  end
  L5_2 = A0_2._on_btn_compare
  ::lbl_34::
  L2_2(L3_2, L4_2, L5_2)
  A0_2.is_compare = A1_2
end
L7_1._setup_compare_state = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_compare_state
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L7_1._on_btn_hiden = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_locked
  L1_2 = A0_2._is_max
  L2_2 = A0_2
  L1_2 = A0_2._is_display_only
  L1_2 = L1_2(L2_2)
  L1_2 = not L1_2 and L1_2
  L3_2 = A0_2
  L2_2 = A0_2._enable_skill_compare
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_compare_state
    L4_2 = A0_2.is_compare
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._setup_compare_info_view
    L2_2(L3_2)
  else
    A0_2.is_compare = false
  end
end
L7_1._setup_compare_view = L8_1
return L7_1
