local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Avatar.SubStarInfoPanelBinder"
L0_1(L1_1)
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
L1_1 = "EquipmentRightPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.AvatarPropertyType
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2.origin_pos = nil
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.DiscreteProgressBar
  L4_2 = G
  L4_2 = L4_2.DiscreteProgressBarBinder
  L5_2 = "Ui.Avatar.SubStarInfoPanel"
  L6_2 = "Ui.Avatar.SubStarInfoPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._promotion_stars_panel = L1_2
  L1_2 = A0_2._promotion_stars_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_promotion_panel
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
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.reset_lightcone_img_position
  L1_2(L2_2)
end
L0_1._on_unload = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._item = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_view_info_panel
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_status_panel
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_skill_panel
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_rank
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_avatar_base_type
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._init_lock_panel
  L3_2(L4_2)
  if A2_2 ~= nil and A2_2 == true then
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
  A0_2._item = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_view_info_panel
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_status_panel
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_skill_panel
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_rank
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_avatar_base_type
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_lock_panel
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_detail
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.button_level_up
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1.setup_view_by_item_display = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_lightcone_icon
  L2_2 = L1_2.transform
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector3
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.localPosition = L3_2
end
L0_1.reset_lightcone_img_position = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_light_cone_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_img_item
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_img_lightcone
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_lightcone_icon
  L4_2 = A0_2._item
  L4_2 = L4_2.EquipmentRow
  L4_2 = L4_2.ImagePath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_lightcone_icon
  L2_2 = A0_2._item
  L2_2 = L2_2.EquipmentRow
  L2_2 = L2_2.ItemRightPanelOffset
  if L2_2 ~= nil then
    L3_2 = L2_2.Length
    if L3_2 == 3 then
      L3_2 = L2_2[0]
      L4_2 = L2_2[1]
      L5_2 = L2_2[2]
      L6_2 = A0_2.origin_pos
      if L6_2 == nil then
        L6_2 = L1_2.transform
        L6_2 = L6_2.localPosition
        L7_2 = CS
        L7_2 = L7_2.UnityEngine
        L7_2 = L7_2.Vector3
        L8_2 = L6_2.x
        L9_2 = L6_2.y
        L10_2 = L6_2.z
        L7_2 = L7_2(L8_2, L9_2, L10_2)
        A0_2.origin_pos = L7_2
      end
      L6_2 = G
      L6_2 = L6_2.SuperDebug
      L6_2 = L6_2.LogFormatWithTag
      L7_2 = G
      L7_2 = L7_2.LogTag
      L7_2 = L7_2.UI
      L8_2 = "x_offset"
      L9_2 = L3_2
      L10_2 = "y_offset"
      L11_2 = L4_2
      L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2
      L6_2(L7_2, L8_2)
      L6_2 = L1_2.transform
      L7_2 = CS
      L7_2 = L7_2.UnityEngine
      L7_2 = L7_2.Vector3
      L8_2 = L5_2
      L9_2 = L5_2
      L10_2 = 1
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L6_2.localScale = L7_2
      L6_2 = L1_2.transform
      L7_2 = CS
      L7_2 = L7_2.UnityEngine
      L7_2 = L7_2.Vector3
      L8_2 = A0_2.origin_pos
      L8_2 = L8_2.x
      L8_2 = L8_2 + L3_2
      L9_2 = A0_2.origin_pos
      L9_2 = L9_2.y
      L9_2 = L9_2 + L4_2
      L10_2 = A0_2.origin_pos
      L10_2 = L10_2.z
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L6_2.localPosition = L7_2
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2.set_level
  L5_2 = A0_2._item
  L5_2 = L5_2.Level
  L6_2 = A0_2._item
  L7_2 = L6_2
  L6_2 = L6_2.GetCurrentMaxLv
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_item_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._item
  L5_2 = L5_2.Name
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_item_bg_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._item
  L5_2 = L5_2.BGDesc
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_promotion_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._promotion_stars_panel
  L4_2 = L3_2
  L3_2 = L3_2.rebind_child_node
  L5_2 = A0_2._item
  L5_2 = L5_2.EquipmentRow
  L5_2 = L5_2.MaxPromotion
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._promotion_stars_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._item
  L5_2 = L5_2.Promotion
  L6_2 = A0_2._item
  L6_2 = L6_2.EquipmentRow
  L6_2 = L6_2.MaxPromotion
  L3_2(L4_2, L5_2, L6_2)
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
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AvatarBaseTypeExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._item
  L4_2 = L4_2.EquipmentRow
  L4_2 = L4_2.AvatarBaseType
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_avatar_base_type
  L7_2 = L3_2.BaseTypeIconSmall
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._setup_view_info_panel = L2_1
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
  L8_2 = L8_2.rebind_child_node_by_name
  L10_2 = #L1_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._status_panel
  L9_2 = L8_2
  L8_2 = L8_2.setup_view
  L10_2 = L1_2
  L8_2(L9_2, L10_2)
end
L0_1._setup_status_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_equipment_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
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
  L4_2, L5_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_skill_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._item
  L3_2 = L3_2.SkillRow
  L3_2 = L3_2.SkillName
  L1_2(L2_2, L3_2)
end
L0_1._setup_skill_panel = L2_1
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
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
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
end
L0_1._setup_rank = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
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
end
L0_1._setup_avatar_base_type = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_level_current
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_level_current
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if A2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_level_max
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
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
end
L0_1.set_level = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.LightCone.LightConeDetailPage"
  L3_2 = A0_2._item
  L4_2 = nil
  L5_2 = nil
  L6_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_btn_detail = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.LightCone.LightConeDetailPage"
  L3_2 = A0_2._item
  L4_2 = 2
  L5_2 = nil
  L6_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_button_level_up = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._lock_panel
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.create_panel
    L3_2 = G
    L3_2 = L3_2.LightConeLockPanel
    L4_2 = G
    L4_2 = L4_2.LightConeLockPanelBinder
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._lock_panel = L1_2
    L1_2 = A0_2._lock_panel
    L2_2 = L1_2
    L1_2 = L1_2.bind
    L3_2 = A0_2._binder
    L3_2 = L3_2.equipment_lock_root
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.equipment_lock_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._lock_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._item
  L1_2(L2_2, L3_2)
end
L0_1._init_lock_panel = L2_1
return L0_1
