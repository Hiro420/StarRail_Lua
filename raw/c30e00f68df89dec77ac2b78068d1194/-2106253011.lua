local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Heliobus.Skill.HeliobusSkillDetailPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusSkillDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HeliobusModule
function L2_1(A0_2, A1_2, A2_2)
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if A2_2 == true then
    L3_2 = A1_2.IsUnlocked
    if not L3_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_root
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = false
      L3_2(L4_2, L5_2)
      return
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_root
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_skill_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2.BattleActionData
  L5_2 = L5_2.EventName
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_skill_type
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L6_2 = A0_2
  L5_2 = A0_2._get_skill_tag_text_by_skill_effect
  L7_2 = A1_2.SkillData
  L7_2 = L7_2.SkillEffect
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_skill_cycle
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_skill_effect_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2.BattleActionData
  L5_2 = L5_2.FullDescription
  L6_2 = G
  L6_2 = L6_2.UITextUtils
  L6_2 = L6_2.GetSkillParams
  L7_2 = A1_2.BattleActionData
  L7_2 = L7_2.ParamList
  L6_2, L7_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_skill_bg_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2.SkillData
  L5_2 = L5_2.BGDescription
  L3_2(L4_2, L5_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.Convert
  L2_2 = L2_2.ToUInt32
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = "AvatarSkillTag_"
  L4_2 = tostring
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 .. L4_2
  return L3_2
end
L0_1._get_skill_tag_text_by_skill_effect = L2_1
return L0_1
