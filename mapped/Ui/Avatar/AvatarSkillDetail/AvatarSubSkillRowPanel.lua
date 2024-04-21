local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarSubSkillRowPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L2_2.interactable = A1_2
end
L0_1.set_btn_interactable = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._avatar_data = A2_2
  A0_2._skill_row = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_info_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_cost_detail
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_describe
  L3_2.enableUnderline = true
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_danger_mark
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.LayoutRebuilder
  L3_2 = L3_2.ForceRebuildLayoutImmediate
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L4_2 = L4_2.transform
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L3_2.interactable = true
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._avatar_data = A2_2
  A0_2._skill_row = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_info_view
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_describe
  L3_2.enableUnderline = false
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_cost
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_danger_mark
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.LayoutRebuilder
  L3_2 = L3_2.ForceRebuildLayoutImmediate
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L4_2 = L4_2.transform
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L3_2.interactable = false
end
L0_1.setup_view_in_skill_tree = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._modifier_table = nil
  A0_2._avatar_data = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = false
  L2_2 = A0_2._skill_row
  L2_2 = L2_2.SkillTag
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TextID
  L3_2 = L3_2.empty
  if L2_2 ~= L3_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.TextmapStatic
    L2_2 = L2_2.GetText
    L3_2 = A0_2._skill_row
    L3_2 = L3_2.SkillTag
    L2_2 = L2_2(L3_2)
    if L2_2 ~= "" then
      L1_2 = true
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.TextmapStatic
      L2_2 = L2_2.GetText
      L3_2 = A0_2._skill_row
      L3_2 = L3_2.SkillTag
      L2_2 = L2_2(L3_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.txt_tag
      L4_2 = L3_2
      L3_2 = L3_2.SetCustomizedText
      L5_2 = "["
      L6_2 = L2_2
      L7_2 = "]"
      L5_2 = L5_2 .. L6_2 .. L7_2
      L3_2(L4_2, L5_2)
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_tag
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._skill_row
  L4_2 = L4_2.SkillName
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.IsShowSkillPlotTrialPlayer
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_describe
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A0_2._skill_row
    L4_2 = L4_2.SimpleSkillDesc
    L5_2 = G
    L5_2 = L5_2.UITextUtils
    L5_2 = L5_2.GetSkillParams
    L6_2 = A0_2._skill_row
    L6_2 = L6_2.SimpleParamList
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_describe
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A0_2._skill_row
    L4_2 = L4_2.SkillDesc
    L5_2 = G
    L5_2 = L5_2.UITextUtils
    L5_2 = L5_2.GetSkillParams
    L6_2 = A0_2._skill_row
    L6_2 = L6_2.ParamList
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
end
L0_1._setup_info_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._skill_row
  L1_2 = L1_2.ExtraEffectIDList
  L1_2 = L1_2.Length
  if 0 < L1_2 then
    L1_2 = G
    L1_2 = L1_2.BattleUIUtils
    L1_2 = L1_2.get_proper_noun_table_from_avatar_skill
    L2_2 = A0_2._skill_row
    L1_2 = L1_2(L2_2)
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_async_show
    L3_2 = "Ui.AvatarEducation.AvatarDetail.StatusDescriptionDialog"
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_btn_root_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = math
  L1_2 = L1_2.ceil
  L2_2 = A0_2._skill_row
  L2_2 = L2_2.SPNeed
  L3_2 = L2_2
  L2_2 = L2_2.ToFloat
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = math
  L2_2 = L2_2.ceil
  L3_2 = A0_2._skill_row
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
    L4_2 = A0_2
    L3_2 = A0_2._setup_bp_cost
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._skill_row
    L3_2 = L3_2.SkillNeed
    if L3_2 ~= nil then
      L3_2 = A0_2._skill_row
      L3_2 = L3_2.SkillNeed
      L4_2 = L3_2
      L3_2 = L3_2.IsEmpty
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        L3_2 = A0_2._binder
        L3_2 = L3_2.node_other_cost
        L4_2 = L3_2
        L3_2 = L3_2.SafeSetActive
        L5_2 = true
        L3_2(L4_2, L5_2)
        L3_2 = A0_2._binder
        L3_2 = L3_2.txt_other_desc
        L4_2 = L3_2
        L3_2 = L3_2.SafeSetTextID
        L5_2 = A0_2._skill_row
        L5_2 = L5_2.SkillNeed
        L6_2 = G
        L6_2 = L6_2.UITextUtils
        L6_2 = L6_2.GetSkillParams
        L7_2 = A0_2._skill_row
        L7_2 = L7_2.ParamList
        L6_2, L7_2 = L6_2(L7_2)
        L3_2(L4_2, L5_2, L6_2, L7_2)
    end
    else
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_cost
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
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
