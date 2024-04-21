local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSkillInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarSkillInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  A0_2._is_auto_click = A1_2
end
L0_1.setup_auto_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._is_auto_click
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._on_click
      L0_3(L1_3)
    else
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.save_navigation_target
      L2_3 = A0_2._binder
      L2_3 = L2_3.btn_root
      L2_3 = L2_3.gameObject
      L0_3(L1_3, L2_3)
    end
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._avatar_data = A1_2
  A0_2._skill_id = A2_2
  L3_2 = nil
  L4_2 = nil
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.ICharacterRowData
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2
  L5_2 = L5_2.IsAssignableFrom
  L7_2 = A0_2._avatar_data
  L8_2 = L7_2
  L7_2 = L7_2.GetType
  L7_2, L8_2 = L7_2(L8_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  if L5_2 then
    L6_2 = A1_2
    L5_2 = A1_2.GetSkillRowDataByID
    L7_2 = A2_2
    L5_2 = L5_2(L6_2, L7_2)
    L4_2 = L5_2
    L3_2 = L4_2.Level
  else
    L5_2 = A0_2._avatar_data
    L5_2 = L5_2.SkillTreeData
    L6_2 = L5_2
    L5_2 = L5_2.GetSkillPointLevel
    L7_2 = A0_2._skill_id
    L5_2 = L5_2(L6_2, L7_2)
    L3_2 = L5_2
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.AvatarSkillExcelTable
    L5_2 = L5_2.GetData
    L6_2 = A0_2._skill_id
    L7_2 = L3_2
    L5_2 = L5_2(L6_2, L7_2)
    L4_2 = L5_2
  end
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_skill_icon
  L8_2 = L4_2.SkillIcon
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_skill_type
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L4_2.SkillTypeDesc
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_skill_lv
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_lock
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L3_2 <= 0
  L5_2(L6_2, L7_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L1_1
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
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._call_back = A1_2
  A0_2._event_listener = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._bind_btn_callback
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_root
  L6_2 = A0_2._on_click
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.bind_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._call_back
  L2_2 = A0_2._event_listener
  L3_2 = A0_2._skill_id
  L1_2(L2_2, L3_2)
end
L0_1._on_click = L1_1
return L0_1
