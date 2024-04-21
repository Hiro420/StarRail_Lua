local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.BattleSkillInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.BattleSkillInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.BattlePhasePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.BattlePhasePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleMonsterSkillTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_AvatarDialogV2_Skill"
L2_1 = "BattleUIText_MonsterSkillPanel_StageTabBtn_Phase"
L3_1 = 1
function L4_1(A0_2)
  local L1_2
  A0_2._phase_num = 1
  A0_2._is_enable_gamepad_trigger = false
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_current_tab_item
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
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
L0_1._on_enter_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._phase_num
  if L1_2 == 1 then
    return
  end
  L1_2 = A0_2._cur_phase_id
  L1_2 = L1_2 - 1
  if 1 <= L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_phase_btn_click
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._select_pre = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._phase_num
  if L1_2 == 1 then
    return
  end
  L1_2 = A0_2._cur_phase_id
  L1_2 = L1_2 + 1
  L2_2 = A0_2._phase_num
  if L1_2 <= L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_phase_btn_click
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._select_next = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_phase_id
  if L1_2 then
    L1_2 = A0_2._cur_phase_id
    L1_2 = L1_2 - 1
    if L1_2 then
      goto lbl_9
    end
  end
  L1_2 = 0
  ::lbl_9::
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_phase
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    L4_2 = L3_2
    L3_2 = L3_2.get_first_selected_object
    return L3_2(L4_2)
  end
  L3_2 = nil
  return L3_2
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = false
    return L2_2
  end
end
L0_1._is_can_to_zoom = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._config = A1_2
  A0_2._characterData = A2_2
  L3_2 = A1_2.SkillList
  A0_2._skill_list = L3_2
  A0_2._cur_phase_id = nil
  L4_2 = A0_2
  L3_2 = A0_2._refesh_data
  L3_2(L4_2)
  L3_2 = A0_2._characterData
  if L3_2 ~= nil then
    L3_2 = A0_2._characterData
    L3_2 = L3_2.CurrentPhase
    if L3_2 then
      goto lbl_16
    end
  end
  L3_2 = L3_1
  ::lbl_16::
  L5_2 = A0_2
  L4_2 = A0_2._on_phase_btn_click
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_extra_info
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_btn_extra_info_interactable
  L4_2(L5_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_scroll_phase
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_scroll_skill
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_extra_desc
  L2_2 = A0_2._extra_info_data
  L2_2 = #L2_2
  L2_2 = 0 < L2_2
  L1_2.interactable = L2_2
  L1_2 = A0_2._is_enable_gamepad_trigger
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.force_set_first_navigation_target
    L1_2(L2_2)
  end
end
L0_1._on_select = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_left_round
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_left_normal
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_left_border = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_right_round
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_right_normal
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_right_border = L4_1
function L4_1(A0_2, A1_2)
  A0_2._is_enable_gamepad_trigger = A1_2
end
L0_1.enable_gamepad_trigger_key_map_hint = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_skill_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_scroll_skill_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_phase
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_scroll_phase_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_extra_desc
  L4_2 = A0_2._on_btn_extra_desc
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._is_enable_gamepad_trigger
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._bind_btn_callback
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_pre
    L4_2 = A0_2._select_pre
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._bind_btn_callback
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_next
    L4_2 = A0_2._select_next
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_kep_map
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_enable_gamepad_trigger
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L0_1._on_added = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  A0_2._config = nil
  L1_2 = G
  L1_2 = L1_2.SuperScrollViewUtils
  L1_2 = L1_2.DisposeList
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_skill_info
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.SuperScrollViewUtils
  L1_2 = L1_2.DisposeList
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_phase
  L1_2(L2_2)
end
L0_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = {}
  A0_2._extra_effect_ids = L1_2
  L1_2 = {}
  A0_2._skill_phase_list = L1_2
  A0_2._phase_num = 1
  L1_2 = A0_2._characterData
  if L1_2 ~= nil then
    L1_2 = A0_2._characterData
    L1_2 = L1_2.HideDisplayInfoSkillNames
    if L1_2 then
      goto lbl_14
    end
  end
  L1_2 = nil
  ::lbl_14::
  L2_2 = 0
  L3_2 = A0_2._skill_list
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.MonsterSkillExcelTable
    L6_2 = L6_2.GetData
    L7_2 = A0_2._skill_list
    L7_2 = L7_2[L5_2]
    L6_2 = L6_2(L7_2)
    if L1_2 ~= nil then
      L8_2 = L1_2
      L7_2 = L1_2.Contains
      L9_2 = L6_2.SkillTriggerKey
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        goto lbl_55
      end
    end
    L7_2 = L6_2.PhaseList
    if L7_2 ~= nil then
      L7_2 = L6_2.PhaseList
      L7_2 = L7_2.Length
      if L7_2 ~= 0 then
        L7_2 = 0
        L8_2 = L6_2.PhaseList
        L8_2 = L8_2.Length
        L8_2 = L8_2 - 1
        L9_2 = 1
        for L10_2 = L7_2, L8_2, L9_2 do
          L11_2 = L6_2.PhaseList
          L11_2 = L11_2[L10_2]
          L13_2 = A0_2
          L12_2 = A0_2._add_skill
          L14_2 = L11_2
          L15_2 = L6_2
          L12_2(L13_2, L14_2, L15_2)
        end
      end
    end
    ::lbl_55::
  end
  L2_2 = 1
  L3_2 = A0_2._phase_num
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._skill_phase_list
    L6_2 = L6_2[L5_2]
    if not L6_2 then
      L6_2 = A0_2._skill_phase_list
      L7_2 = {}
      L6_2[L5_2] = L7_2
    end
    L6_2 = table
    L6_2 = L6_2.sort
    L7_2 = A0_2._skill_phase_list
    L7_2 = L7_2[L5_2]
    function L8_2(A0_3, A1_3)
      local L2_3, L3_3
      L2_3 = A0_3.IsThreat
      L3_3 = A1_3.IsThreat
      if L2_3 == L3_3 then
        L2_3 = A0_3.SkillID
        L3_3 = A1_3.SkillID
        L2_3 = L2_3 < L3_3
        return L2_3
      end
      L2_3 = A0_3.IsThreat
      return L2_3
    end
    L6_2(L7_2, L8_2)
  end
end
L0_1._refesh_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  A0_2._extra_info_data = L1_2
  L1_2 = A0_2._extra_effect_ids
  L2_2 = A0_2._cur_phase_id
  L1_2 = L1_2[L2_2]
  if L1_2 == nil then
    return
  end
  L1_2 = pairs
  L2_2 = A0_2._extra_effect_ids
  L3_2 = A0_2._cur_phase_id
  L2_2 = L2_2[L3_2]
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L4_2
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.ExtraEffectExcelTable
    L7_2 = L7_2.GetData
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 ~= nil then
      L8_2 = {}
      L9_2 = L7_2.ExtraEffectName
      L8_2.Name = L9_2
      L9_2 = L7_2.ExtraEffectDesc
      L8_2.Desc = L9_2
      L9_2 = table
      L9_2 = L9_2.pack
      L10_2 = G
      L10_2 = L10_2.UITextUtils
      L10_2 = L10_2.GetSkillParams
      L11_2 = L7_2.DescParamList
      L10_2, L11_2 = L10_2(L11_2)
      L9_2 = L9_2(L10_2, L11_2)
      L8_2.DescParam = L9_2
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = A0_2._extra_info_data
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  end
end
L0_1._refresh_extra_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_current_tab_item
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = A0_2._binder
      if L1_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.btn_extra_desc
        if L1_2 then
          L1_2 = A0_2._binder
          L1_2 = L1_2.btn_extra_desc
          L2_2 = A0_2._extra_info_data
          L2_2 = #L2_2
          L2_2 = 0 < L2_2
          L1_2.interactable = L2_2
        end
      end
    end
  end
end
L0_1._refresh_btn_extra_info_interactable = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2._skill_phase_list
  L3_2 = L3_2[A1_2]
  if not L3_2 then
    L3_2 = A0_2._skill_phase_list
    L4_2 = {}
    L3_2[A1_2] = L4_2
  end
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2._skill_phase_list
  L4_2 = L4_2[A1_2]
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._extra_effect_ids
  L3_2 = L3_2[A1_2]
  if not L3_2 then
    L3_2 = A0_2._extra_effect_ids
    L4_2 = {}
    L3_2[A1_2] = L4_2
  end
  L3_2 = A2_2.ExtraEffectIDList
  if L3_2 ~= nil then
    L3_2 = 0
    L4_2 = A2_2.ExtraEffectIDList
    L4_2 = L4_2.Length
    L4_2 = L4_2 - 1
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = A0_2._extra_effect_ids
      L7_2 = L7_2[A1_2]
      L8_2 = A2_2.ExtraEffectIDList
      L8_2 = L8_2[L6_2]
      L9_2 = A2_2.ExtraEffectIDList
      L9_2 = L9_2[L6_2]
      L7_2[L8_2] = L9_2
    end
  end
  L3_2 = math
  L3_2 = L3_2.max
  L4_2 = A0_2._phase_num
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._phase_num = L3_2
end
L0_1._add_skill = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = nil
  L5_2 = A1_2
  L4_2 = A1_2.NewListViewItem
  L6_2 = 0
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L4_2
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.BattleSkillInfoPanel
    L8_2 = G
    L8_2 = L8_2.BattleSkillInfoPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._skill_phase_list
  L6_2 = A0_2._cur_phase_id
  L5_2 = L5_2[L6_2]
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_monster_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.LayoutRebuilder
  L6_2 = L6_2.ForceRebuildLayoutImmediate
  L7_2 = L4_2._binder
  L7_2 = L7_2.root
  L6_2(L7_2)
  L6_2 = G
  L6_2 = L6_2.SuperDebug
  L6_2 = L6_2.LogFormatWithTag
  L7_2 = G
  L7_2 = L7_2.LogTag
  L7_2 = L7_2.UI
  L8_2 = "ForceRebuildLayoutImmediate"
  L9_2 = tostring
  L10_2 = L4_2._binder
  L10_2 = L10_2.root
  L10_2 = L10_2.rect
  L10_2 = L10_2.height
  L9_2 = L9_2(L10_2)
  L8_2 = L8_2 .. L9_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._on_scroll_skill_change = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = nil
  L5_2 = A1_2
  L4_2 = A1_2.NewListViewItem
  L6_2 = 0
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L4_2
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.BattlePhasePanel
    L8_2 = G
    L8_2 = L8_2.BattlePhasePanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A2_2 + 1
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L9_2 = L2_1
  L10_2 = L5_2
  L9_2 = L9_2 .. L10_2
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_selected
  L8_2 = A0_2._cur_phase_id
  L8_2 = L5_2 == L8_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_btn_callback
  L8_2 = A0_2._on_phase_btn_click
  L9_2 = A0_2
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.LayoutRebuilder
  L6_2 = L6_2.ForceRebuildLayoutImmediate
  L7_2 = L4_2._binder
  L7_2 = L7_2.root
  L6_2(L7_2)
  return L3_2
end
L0_1._on_scroll_phase_change = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._cur_phase_id
  if L2_2 ~= A1_2 then
    A0_2._cur_phase_id = A1_2
    L3_2 = A0_2
    L2_2 = A0_2._refresh_extra_info
    L2_2(L3_2)
    L2_2 = A0_2._state
    L3_2 = A0_2.SelectState
    L3_2 = L3_2.Selected
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2.is_loaded
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2._setup_scroll_phase
        L2_2(L3_2)
        L3_2 = A0_2
        L2_2 = A0_2._setup_scroll_skill
        L2_2(L3_2)
        L3_2 = A0_2
        L2_2 = A0_2._refresh_btn_extra_info_interactable
        L2_2(L3_2)
      end
    end
  end
end
L0_1._on_phase_btn_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._extra_info_data
  if L1_2 ~= nil then
    L1_2 = A0_2._extra_info_data
    L1_2 = #L1_2
    if L1_2 ~= 0 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.AvatarEducation.AvatarDetail.StatusDescriptionDialog"
  L3_2 = A0_2._extra_info_data
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_extra_desc = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_skill_info
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._skill_phase_list
  L4_2 = A0_2._cur_phase_id
  L3_2 = L3_2[L4_2]
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_skill_info
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemIndex
  L3_2 = 0
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_skill_info
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2._binder
      L0_3 = L0_3.is_destroyed
      if not L0_3 then
        L0_3 = A0_2._binder
        L0_3 = L0_3.scroll_skill_info
        L1_3 = L0_3
        L0_3 = L0_3.MovePanelToItemIndex
        L2_3 = 0
        L3_3 = 0
        L0_3(L1_3, L2_3, L3_3)
      end
    end
  end
  L1_2(L2_2)
end
L0_1._setup_scroll_skill = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._phase_num
  if L1_2 <= 1 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_phase
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_phase
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_phase
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._phase_num
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_phase
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._setup_scroll_phase = L4_1
return L0_1
