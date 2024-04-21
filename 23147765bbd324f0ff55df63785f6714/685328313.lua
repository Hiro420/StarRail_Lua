local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarMainSkillRowPanel"
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
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._avatar_data = A2_2
  A0_2._skill_row = A1_2
  L3_2 = false
  L4_2 = A1_2.SkillTag
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.TextID
  L5_2 = L5_2.empty
  if L4_2 ~= L5_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.TextmapStatic
    L4_2 = L4_2.GetText
    L5_2 = A1_2.SkillTag
    L4_2 = L4_2(L5_2)
    if L4_2 ~= "" then
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.TextmapStatic
      L4_2 = L4_2.GetText
      L5_2 = A1_2.SkillTag
      L4_2 = L4_2(L5_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.txt_tag
      L6_2 = L5_2
      L5_2 = L5_2.SetCustomizedText
      L7_2 = "["
      L8_2 = L4_2
      L9_2 = "]"
      L7_2 = L7_2 .. L8_2 .. L9_2
      L5_2(L6_2, L7_2)
      L3_2 = true
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_tag
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_name
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = A1_2.SkillName
  L4_2(L5_2, L6_2)
  L4_2 = A2_2.IsShowSkillPlotTrialPlayer
  if L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_describe
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = A1_2.SimpleSkillDesc
    L7_2 = G
    L7_2 = L7_2.UITextUtils
    L7_2 = L7_2.GetSkillParams
    L8_2 = A1_2.SimpleParamList
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_describe
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = A1_2.SkillDesc
    L7_2 = G
    L7_2 = L7_2.UITextUtils
    L7_2 = L7_2.GetSkillParams
    L8_2 = A1_2.ParamList
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  end
  L4_2 = A1_2.Level
  if 0 < L4_2 then
    L4_2 = A2_2.IsShowSkillPlotTrialPlayer
    if not L4_2 then
      L4_2 = A0_2._binder
      L4_2 = L4_2.txt_lv
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetTextID
      L6_2 = "UIText_UIlevel_Info"
      L4_2(L5_2, L6_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.num_lv
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetText
      L6_2 = A1_2.Level
      L4_2(L5_2, L6_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.num_lv
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetActive
      L6_2 = true
      L4_2(L5_2, L6_2)
  end
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_lv
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.num_lv
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2._setup_cost_detail
  L4_2(L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_danger_mark
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.LayoutRebuilder
  L4_2 = L4_2.ForceRebuildLayoutImmediate
  L5_2 = A0_2._binder
  L5_2 = L5_2.root
  L4_2(L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_root
  L4_2.interactable = true
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._modifier_table = nil
  A0_2._avatar_data = nil
end
L0_1._on_dispose = L1_1
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
    L3_2 = A0_2._avatar_data
    L3_2 = L3_2.UltraSkillType
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.AvatarSpecialUltraType
    L4_2 = L4_2.Normal
    if L3_2 == L4_2 then
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
      L3_2 = CS
      L3_2 = L3_2.UnityEngine
      L3_2 = L3_2.UI
      L3_2 = L3_2.LayoutRebuilder
      L3_2 = L3_2.ForceRebuildLayoutImmediate
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_sp_cost
      L3_2(L4_2)
  end
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
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.UI
    L3_2 = L3_2.LayoutRebuilder
    L3_2 = L3_2.ForceRebuildLayoutImmediate
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_bp_cost
    L3_2(L4_2)
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
        L3_2 = CS
        L3_2 = L3_2.UnityEngine
        L3_2 = L3_2.UI
        L3_2 = L3_2.LayoutRebuilder
        L3_2 = L3_2.ForceRebuildLayoutImmediate
        L4_2 = A0_2._binder
        L4_2 = L4_2.node_other_cost
        L3_2(L4_2)
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
