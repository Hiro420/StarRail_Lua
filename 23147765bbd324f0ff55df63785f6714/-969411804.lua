local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Heliobus.Skill.HeliobusSkillInfoRowBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusSkillInfoRow"
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
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_root
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._index = A2_2
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetSkillData
  L5_2 = A1_2.SkillID
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._skill_data = L3_2
  L3_2 = A0_2._skill_data
  L3_2 = L3_2.SkillData
  L3_2 = L3_2.HeliobusSkillID
  A0_2._skill_id = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_skill_icon
  L6_2 = A0_2._skill_data
  L6_2 = L6_2.SkillData
  L6_2 = L6_2.SkillIconPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_skill_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._skill_data
  L5_2 = L5_2.BattleActionData
  L5_2 = L5_2.EventName
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_skill_type
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L6_2 = A0_2
  L5_2 = A0_2._get_skill_tag_text_by_skill_effect
  L7_2 = A0_2._skill_data
  L7_2 = L7_2.SkillData
  L7_2 = L7_2.SkillEffect
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_skill_short_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._skill_data
  L5_2 = L5_2.BattleActionData
  L5_2 = L5_2.BriefDescription
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_selected_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2.IsSelected
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_recommend_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2.IsRecommended
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.bind_reddot
  L5_2 = "HeliobusSkillNew"
  L6_2 = A0_2._skill_id
  L7_2 = A0_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_reddot
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._on_click_call_back = A1_2
  A0_2._on_click_call_back_self = A2_2
end
L0_1.register_on_click_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_root
  L1_2(L2_2)
end
L0_1.set_default_selected = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_root_btn_checked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._on_click_call_back
  if L1_2 then
    L1_2 = A0_2._on_click_call_back
    L2_2 = A0_2._on_click_call_back_self
    L3_2 = A0_2._skill_data
    L4_2 = A0_2._index
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_btn_root = L2_1
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
