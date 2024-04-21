local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Heliobus.Skill.HeliobusSkillIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Skill.HeliobusSkillDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Skill.HeliobusSkillLockPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Skill.HeliobusSkillListPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusSkillListPage"
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
  L3_2 = L3_2.HeliobusSkillListPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L1_2 = {}
  A0_2._skill_panels = L1_2
  L1_2 = {}
  A0_2._btn_list = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_fade_in_animation_ready
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_skill_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.HeliobusSkillIconPanel
    L8_2 = G
    L8_2 = L8_2.HeliobusSkillIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_skill_list
    L8_2 = L8_2[L4_2]
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._skill_panels
    L6_2[L4_2] = L5_2
    L6_2 = A0_2._btn_list
    L7_2 = L5_2._binder
    L7_2 = L7_2.btn_root
    L6_2[L4_2] = L7_2
  end
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
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusSkillLockPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusSkillLockPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._skill_lock_panel = L1_2
  L1_2 = A0_2._skill_lock_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_skill_lock
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L1_2(L2_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._select_skill_panel = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._skill_panels
  L1_2 = L1_2[1]
  A0_2._cur_select_skill_panel = L1_2
  L1_2 = A0_2._cur_select_skill_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_selected
  L3_2 = true
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
  local L1_2
  L1_2 = A0_2._btn_list
  L1_2 = L1_2[1]
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
end
L0_1._on_in_control_click = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_in_control_input_switch = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_skill_icon_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_navi
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L1_1.HeliobusSkills
  L1_2 = L1_2(L2_2)
  A0_2._skills = L1_2
  L1_2 = 1
  L2_2 = A0_2._skills
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._skill_panels
    L5_2 = L5_2[L4_2]
    L7_2 = L5_2
    L6_2 = L5_2.setup_view
    L8_2 = A0_2._skills
    L8_2 = L8_2[L4_2]
    L6_2(L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.register_on_click_callback
    L8_2 = A0_2._on_skill_icon_click
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
  end
end
L0_1._setup_skill_icon_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = A0_2._btn_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._btn_list
    L5_2 = L5_2[1]
    L5_2 = L5_2.navigation
    L6_2 = CS
    L6_2 = L6_2.UnityEngine
    L6_2 = L6_2.UI
    L6_2 = L6_2.Navigation
    L6_2 = L6_2.Mode
    L6_2 = L6_2.Explicit
    L5_2.mode = L6_2
    L5_2.selectOnUp = nil
    L5_2.selectOnDown = nil
    L5_2.selectOnLeft = nil
    L5_2.selectOnRight = nil
    L6_2 = A0_2._btn_list
    L7_2 = L4_2 - 1
    L6_2 = L6_2[L7_2]
    if L6_2 ~= nil then
      L6_2 = L4_2 % 4
      if L6_2 ~= 1 then
        L6_2 = A0_2._btn_list
        L7_2 = L4_2 - 1
        L6_2 = L6_2[L7_2]
        L5_2.selectOnUp = L6_2
      end
    end
    L6_2 = A0_2._btn_list
    L7_2 = L4_2 + 1
    L6_2 = L6_2[L7_2]
    if L6_2 ~= nil then
      L6_2 = L4_2 % 4
      if L6_2 ~= 0 then
        L6_2 = A0_2._btn_list
        L7_2 = L4_2 + 1
        L6_2 = L6_2[L7_2]
        L5_2.selectOnDown = L6_2
      end
    end
    L6_2 = A0_2._btn_list
    L7_2 = L4_2 - 4
    L6_2 = L6_2[L7_2]
    if L6_2 ~= nil then
      L6_2 = A0_2._btn_list
      L7_2 = L4_2 - 4
      L6_2 = L6_2[L7_2]
      L5_2.selectOnLeft = L6_2
    end
    L6_2 = A0_2._btn_list
    L7_2 = L4_2 + 4
    L6_2 = L6_2[L7_2]
    if L6_2 ~= nil then
      L6_2 = A0_2._btn_list
      L7_2 = L4_2 + 4
      L6_2 = L6_2[L7_2]
      L5_2.selectOnRight = L6_2
    end
    L6_2 = A0_2._btn_list
    L6_2 = L6_2[L4_2]
    L6_2.navigation = L5_2
  end
end
L0_1._setup_btn_navi = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._skill_detail_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A1_2
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._skill_lock_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._cur_select_skill_panel
  if L3_2 ~= A2_2 then
    L3_2 = A0_2._cur_select_skill_panel
    if L3_2 ~= nil then
      L3_2 = A0_2._cur_select_skill_panel
      L4_2 = L3_2
      L3_2 = L3_2.set_selected
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
  end
  A0_2._cur_select_skill_panel = A2_2
  L3_2 = A1_2.IsUnlocked
  if L3_2 then
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.TryMarkSkillSeen
    L5_2 = A1_2.SkillData
    L5_2 = L5_2.HeliobusSkillID
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_skill_icon_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L1_1.HeliobusRedDotFilter
  L2_2 = L2_2.HeliobusNewUnlockSkill
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = A0_2._skill_panels
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._skill_panels
    L6_2 = L6_2[L5_2]
    L7_2 = ipairs
    L8_2 = L1_2
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L12_2 = A0_2._skills
      L12_2 = L12_2[L5_2]
      L12_2 = L12_2.SkillData
      L12_2 = L12_2.HeliobusSkillID
      if L12_2 == L11_2 then
        L13_2 = L6_2
        L12_2 = L6_2.play_unlock_anim
        L12_2(L13_2)
      end
    end
  end
end
L0_1._on_fade_in_animation_ready = L2_1
return L0_1
