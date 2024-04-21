local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSkillInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSkillInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarSkillListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L2_1 = "Skill01"
L3_1 = "Skill02"
L4_1 = "Skill03"
L5_1 = "SkillP01"
L6_1 = "SkillMaze"
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L1_1[4] = L5_1
L1_1[5] = L6_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2.skill_panel_table
  L1_2 = L1_2[1]
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._binder
  if L2_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = ipairs
  L3_2 = A0_2._show_skill_ids
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 == A1_2 then
      L7_2 = A0_2.skill_panel_table
      L7_2 = L7_2[L5_2]
      L8_2 = L7_2
      L7_2 = L7_2.get_first_selected_object
      return L7_2(L8_2)
    end
  end
end
L0_1.get_appointed_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayFromEnd
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim
    L3_2 = "CommonAlphaFadeIn"
    L1_2(L2_2, L3_2)
  end
end
L0_1.interrupt_fade_in_anim = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2.skill_panel_table = L1_2
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.skill_icon
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.AvatarSkillInfoPanel
    L8_2 = G
    L8_2 = L8_2.AvatarSkillInfoPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L8_2 = L8_2.skill_icon
    L8_2 = L8_2[L4_2]
    L6_2(L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2.skill_panel_table
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowSkillDetail
  L4_2 = L0_1._on_ui_show_skill_detail
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = ipairs
    L3_2 = A0_2._show_skill_ids
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      if L6_2 == A1_2 then
        L8_2 = A0_2
        L7_2 = A0_2.set_navigation_target
        L9_2 = A0_2.skill_panel_table
        L9_2 = L9_2[L5_2]
        L10_2 = L9_2
        L9_2 = L9_2.get_first_selected_object
        L9_2, L10_2 = L9_2(L10_2)
        L7_2(L8_2, L9_2, L10_2)
      end
    end
  end
end
L0_1._on_ui_show_skill_detail = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._avatar_data = A1_2
  A0_2._on_click_skill = A2_2
  A0_2._event_listener = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._build_show_skill_id_list
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_skill_view
  L4_2(L5_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.AvatarBaseTypeExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A0_2._avatar_data
  L5_2 = L5_2.Row
  L5_2 = L5_2.AvatarBaseType
  L4_2 = L4_2(L5_2)
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_profession
  L8_2 = L4_2.BaseTypeIcon
  L5_2(L6_2, L7_2, L8_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = A0_2.skill_panel_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2.skill_panel_table
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.setup_view
    L7_2 = A0_2._avatar_data
    L8_2 = A0_2._show_skill_ids
    L8_2 = L8_2[L4_2]
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = A0_2.skill_panel_table
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.bind_click
    L7_2 = A0_2._on_click_skill
    L8_2 = A0_2._event_listener
    L5_2(L6_2, L7_2, L8_2)
  end
end
L0_1._refresh_skill_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A1_2.SkillTriggerKey
  L3_2 = pairs
  L4_2 = L1_1
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L7_2 == L2_2 then
      L8_2 = true
      return L8_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._is_skill_need_to_show = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.Row
  L1_2 = L1_2.SkillList
  L1_2 = L1_2.Length
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.Row
  L2_2 = L2_2.SkillList
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.SkillTreeData
  L3_2 = L3_2.SkillLevels
  L4_2 = {}
  A0_2._show_skill_ids = L4_2
  L4_2 = 0
  L5_2 = L1_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L2_2[L7_2]
    L9_2 = L3_2[L8_2]
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.GameCore
    L10_2 = L10_2.AvatarSkillExcelTable
    L10_2 = L10_2.GetData
    L11_2 = L8_2
    L12_2 = L9_2
    L10_2 = L10_2(L11_2, L12_2)
    L12_2 = A0_2
    L11_2 = A0_2._is_skill_need_to_show
    L13_2 = L10_2
    L11_2 = L11_2(L12_2, L13_2)
    if L11_2 then
      L11_2 = table
      L11_2 = L11_2.insert
      L12_2 = A0_2._show_skill_ids
      L13_2 = L8_2
      L11_2(L12_2, L13_2)
    end
  end
end
L0_1._build_show_skill_id_list = L2_1
return L0_1
