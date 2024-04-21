local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Maze.AvatarInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._show_skills = false
  A0_2._buff_type = 1
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_all_callback
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._btn_skill_onclick
  L1_2(L2_2)
end
L0_1.switch_to_skill_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_skill_details
  L4_2 = A0_2._btn_skill_onclick
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_property_details
  L4_2 = A0_2._show_all_property
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_property_all_details
  L4_2 = A0_2._show_important_property
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._bind_all_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_avatar_info
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.important_property_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._important_property_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.all_property_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._all_property_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._buff_data
  L4_2 = A0_2._buff_type
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.skill_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._skill_data
  L1_2(L2_2, L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.Level
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.ID
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.DamageTypeExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2.DamageType
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.IconNatureColor
  L4_2 = A0_2._binder
  L4_2 = L4_2.skill_panel
  L5_2 = L4_2
  L4_2 = L4_2.safe_set_active
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_lv
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L1_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_name
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = A0_2._avatar_data
  L6_2 = L6_2.Row
  L6_2 = L6_2.AvatarName
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_nature
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._setup_avatar_info = L1_1
function L1_1(A0_2, A1_2)
  if A1_2 == nil then
    return
  end
  A0_2._avatar_data = A1_2
end
L0_1.set_avatar_data = L1_1
function L1_1(A0_2, A1_2)
  A0_2._important_property_data = A1_2
end
L0_1.set_important_property_data = L1_1
function L1_1(A0_2, A1_2)
  A0_2._all_property_data = A1_2
end
L0_1.set_all_property_data = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._buff_data = A1_2
  A0_2._buff_type = A2_2
end
L0_1.set_buff_data = L1_1
function L1_1(A0_2, A1_2)
  A0_2._skill_data = A1_2
end
L0_1.set_skill_data = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._show_skills
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.ani_skill
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = "SkillSwitchV2"
    L1_2(L2_2, L3_2)
    A0_2._show_skills = false
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.ani_skill
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = "SkillSwitchV1"
    L1_2(L2_2, L3_2)
    A0_2._show_skills = true
  end
end
L0_1._btn_skill_onclick = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.go_status_property
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.go_status_normal
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._close_all = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._close_all
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.go_status_normal
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._show_important_property = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._close_all
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.go_status_property
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._show_all_property = L1_1
return L0_1
