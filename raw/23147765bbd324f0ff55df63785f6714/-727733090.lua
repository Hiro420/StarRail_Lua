local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritUtilities.AetherSpiritUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritSkillDetailDialogLeftPanelSkillItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_click_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.DiscreteProgressBar
  L4_2 = G
  L4_2 = L4_2.DiscreteProgressBarBinder
  L5_2 = "Ui.Avatar.RarityStarPanel"
  L6_2 = "Ui.Avatar.RarityStarPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2.cost_item_panel = L1_2
  L1_2 = A0_2.cost_item_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_bp_list
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._skill_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_cost_detail
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._skill_slot_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_slot_info
  L2_2(L3_2)
end
L0_1.setup_slot_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_skill_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._skill_data
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.TextmapStatic
  L1_2 = L1_2.GetText
  L2_2 = A0_2._skill_data
  L2_2 = L2_2.SkillTag
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_skill_tag
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = "["
  L5_2 = L1_2
  L6_2 = "]"
  L4_2 = L4_2 .. L5_2 .. L6_2
  L2_2(L3_2, L4_2)
  L2_2 = {}
  L3_2 = 0
  L4_2 = A0_2._skill_data
  L4_2 = L4_2.ParamArray
  L4_2 = L4_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L2_2
    L9_2 = A0_2._skill_data
    L9_2 = L9_2.ParamArray
    L9_2 = L9_2[L6_2]
    L7_2(L8_2, L9_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_skill_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._skill_data
  L5_2 = L5_2.SkillDesc
  L6_2 = unpack
  L7_2 = L2_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._setup_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_cost
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_skill_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._skill_slot_data
  L3_2 = L3_2.SkillCoreData
  L3_2 = L3_2.PassiveSkillName
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AetherPassiveSkillTypeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._skill_slot_data
  L2_2 = L2_2.SkillType
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.TextmapStatic
  L2_2 = L2_2.GetText
  L3_2 = L1_2.Name
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_skill_tag
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = "["
  L6_2 = L2_2
  L7_2 = "]"
  L5_2 = L5_2 .. L6_2 .. L7_2
  L3_2(L4_2, L5_2)
  L3_2 = {}
  L4_2 = 0
  L5_2 = A0_2._skill_slot_data
  L5_2 = L5_2.SkillCoreData
  L5_2 = L5_2.ParamArray
  L5_2 = L5_2.Length
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L3_2
    L10_2 = A0_2._skill_slot_data
    L10_2 = L10_2.SkillCoreData
    L10_2 = L10_2.ParamArray
    L10_2 = L10_2[L7_2]
    L8_2(L9_2, L10_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_skill_desc
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = A0_2._skill_slot_data
  L6_2 = L6_2.SkillCoreData
  L6_2 = L6_2.PassiveSkillDesc
  L7_2 = unpack
  L8_2 = L3_2
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1._setup_slot_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = nil
  L2_2 = A0_2._skill_data
  if L2_2 ~= nil then
    L2_2 = A0_2._skill_data
    L1_2 = L2_2.Row
  else
    L2_2 = A0_2._skill_slot_data
    if L2_2 ~= nil then
      L2_2 = A0_2._skill_slot_data
      L1_2 = L2_2.SkillItemRow
    end
  end
  if L1_2 == nil then
    return
  end
  L2_2 = L1_2.ExtraEffectIDList
  L2_2 = L2_2.Length
  if 0 < L2_2 then
    L2_2 = G
    L2_2 = L2_2.AetherSpiritUtils
    L2_2 = L2_2.get_proper_noun_table_by_spirit_skill_row
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = G
    L3_2 = L3_2.UIManager
    L3_2 = L3_2.load_and_async_show
    L4_2 = "Ui.AvatarEducation.AvatarDetail.StatusDescriptionDialog"
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_click_btn_root = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = math
  L1_2 = L1_2.ceil
  L2_2 = A0_2._skill_data
  L2_2 = L2_2.Row
  L2_2 = L2_2.SPNeed
  L3_2 = L2_2
  L2_2 = L2_2.ToFloat
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = math
  L2_2 = L2_2.ceil
  L3_2 = A0_2._skill_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.BPNeed
  L4_2 = L3_2
  L3_2 = L3_2.ToFloat
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_cost
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_other_cost
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_bp_cost
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_sp_cost
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  if 0 < L1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_sp_cost
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_sp_cost
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
  elseif 0 < L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_bp_cost
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2.cost_item_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = L2_2
    L6_2 = L2_2
    L7_2 = L2_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_cost
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_cost_detail = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_bp_list
  L2_2 = L2_2.transform
  L2_2 = L2_2.childCount
  L3_2 = 0
  L4_2 = math
  L4_2 = L4_2.max
  L5_2 = A1_2
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    if L2_2 <= L6_2 then
      L8_2 = A0_2
      L7_2 = A0_2.instantiate_object
      L9_2 = A0_2._binder
      L9_2 = L9_2.node_bp_list
      L9_2 = L9_2.Prefab
      L10_2 = A0_2._binder
      L10_2 = L10_2.node_bp_list
      L10_2 = L10_2.transform
      L7_2(L8_2, L9_2, L10_2)
    else
      L7_2 = A0_2._binder
      L7_2 = L7_2.node_bp_list
      L7_2 = L7_2.transform
      L8_2 = L7_2
      L7_2 = L7_2.GetChild
      L9_2 = L6_2
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetActive
      L9_2 = A1_2 > L6_2
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1._setup_bp_cost = L1_1
return L0_1
