local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Heliobus.Skill.HeliobusSkillDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Skill.HeliobusSkillInfoRow"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Skill.HeliobusSkillChoosePageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusSkillChoosePage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HeliobusModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.HeliobusSkillChoosePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._recommend_skills = A1_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.GetUnlockedSkills
  L4_2, L5_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._unlocked_skills = L3_2
  A0_2._cur_selected_skill = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_skill_data
  L3_2(L4_2)
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_choose
  L4_2 = A0_2._on_btn_choose
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusSkillDetailPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusSkillDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._skill_detail_panel = L1_2
  L1_2 = A0_2._skill_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_skill_detail
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._skill_panels = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.skill_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L4_2 = L2_2
    L3_2 = L2_2.set_default_selected
    L3_2(L4_2)
    L3_2 = L2_2._binder
    L3_2 = L3_2.btn_root
    L3_2 = L3_2.gameObject
    return L3_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.skill_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_skill_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.skill_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._unlocked_skills
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.skill_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.skill_list
  L2_2 = L1_2
  L1_2 = L1_2.PlayFadeIn
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._on_select_callback = A1_2
  A0_2._on_select_callback_owner = A2_2
end
L0_1.register_on_select_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._skill_data_list = L1_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._unlocked_skills
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._get_skill_priority
    L4_3 = A0_3
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = A0_2
    L4_3 = L3_3
    L3_3 = L3_3._get_skill_priority
    L5_3 = A1_3
    L3_3 = L3_3(L4_3, L5_3)
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L1_2(L2_2, L3_2)
  L1_2 = pairs
  L2_2 = A0_2._unlocked_skills
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = {}
    L6_2.SkillID = L5_2
    L8_2 = A0_2
    L7_2 = A0_2._is_recommend_skill
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    L6_2.IsRecommended = L7_2
    L7_2 = A0_2._cur_selected_skill
    L7_2 = L5_2 == L7_2
    L6_2.IsSelected = L7_2
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._skill_data_list
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._setup_skill_data = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cur_selected_skill
  if A1_2 == L2_2 then
    L2_2 = 0
    return L2_2
  else
    L3_2 = A0_2
    L2_2 = A0_2._is_recommend_skill
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = 1
      return L2_2
    end
  end
  L2_2 = 2
  return L2_2
end
L0_1._get_skill_priority = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = pairs
  L3_2 = A0_2._recommend_skills
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 == A1_2 then
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._is_recommend_skill = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.HeliobusSkillInfoRow
    L8_2 = G
    L8_2 = L8_2.HeliobusSkillInfoRowBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._skill_data_list
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L8_2 = A2_2 + 1
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_on_click_callback
  L7_2 = A0_2._on_btn_skill
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  return L3_2
end
L0_1._on_skill_item_changed = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A0_2
  L3_2 = A0_2.async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_skill_icon
  L6_2 = A1_2.SkillData
  L6_2 = L6_2.SkillIconPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._skill_detail_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A1_2.SkillData
  L3_2 = L3_2.HeliobusSkillID
  A0_2._cur_selected_skill = L3_2
  L3_2 = 1
  L4_2 = A0_2._unlocked_skills
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.skill_list
    L8_2 = L7_2
    L7_2 = L7_2.GetShownItemByItemIndex
    L9_2 = L6_2 - 1
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 ~= nil then
      L8_2 = L7_2.UserObjectData
      L10_2 = L8_2
      L9_2 = L8_2.set_root_btn_checked
      L11_2 = L6_2 == A2_2
      L9_2(L10_2, L11_2)
    end
  end
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.TryMarkSkillSeen
  L5_2 = A1_2.SkillData
  L5_2 = L5_2.HeliobusSkillID
  L3_2(L4_2, L5_2)
end
L0_1._on_btn_skill = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._on_select_callback
  if L1_2 then
    L1_2 = A0_2._on_select_callback_owner
    if L1_2 then
      L1_2 = A0_2._on_select_callback
      L2_2 = A0_2._on_select_callback_owner
      L3_2 = A0_2._cur_selected_skill
      L1_2(L2_2, L3_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_choose = L2_1
return L0_1
