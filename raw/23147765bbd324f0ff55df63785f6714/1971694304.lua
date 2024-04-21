local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AetherDivide.Common.AetherCommonSkillCoreItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.Common.AetherCommonSkillCoreItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritSkillCoreEquip.AetherSpiritSkillCoreFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritSkillCoreEquipPageListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_simple_desc_switch
  L4_2 = A0_2._on_btn_simple_desc_switch
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_listview_skill_core
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_spirit_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = {}
  A0_2._cur_type_skill_core_table = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.AetherSkillCoreSimpleDescSwitch
  A0_2._is_simple_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_filter
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_listview_skill_core
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._filter_callback = A1_2
  A0_2._filter_callback_self = A2_2
end
L0_1.register_filter_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if A2_2 ~= nil then
    A0_2._skill_slot_table = A2_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.is_empty
  L3_2 = L3_2(L4_2)
  if L3_2 then
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.loop_listview_skill_core
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
  if A1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.loop_listview_skill_core
    L4_2 = L3_2
    L3_2 = L3_2.PlayFadeIn
    L3_2(L4_2)
  end
end
L0_1.refresh_list = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.loop_listview_skill_core
  L3_2 = L2_2
  L2_2 = L2_2.MovePanelToItemIndex
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.move_panel_to_index = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = nil
  L3_2 = 1
  L4_2 = A0_2._cur_type_skill_core_table
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._cur_type_skill_core_table
    L7_2 = L7_2[L6_2]
    L7_2 = L7_2.ConfigID
    if L7_2 == A1_2 then
      L2_2 = L6_2
      break
    end
  end
  if L2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.loop_listview_skill_core
    L4_2 = L3_2
    L3_2 = L3_2.GetShownItemByItemIndex
    L5_2 = L2_2 - 1
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 ~= nil then
      L4_2 = L3_2.UserObjectData
      return L4_2
    end
  end
  L3_2 = nil
  return L3_2
end
L0_1.get_shown_item_data_skillcore_id = L1_1
function L1_1(A0_2, A1_2)
  A0_2._skill_slot_table = A1_2
end
L0_1.set_skill_slot_table = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  A0_2._cur_type_skill_core_table = A1_2
  A0_2._spirit_data = A2_2
  A0_2._skill_slot_table = A3_2
  L5_2 = A0_2
  L4_2 = A0_2.is_empty
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_list
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = not L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_empty
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_simple_desc_switch
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = not L4_2
  L5_2(L6_2, L7_2)
  if L4_2 then
    return
  end
  L6_2 = A0_2
  L5_2 = A0_2._sort
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_spirit_item_list
  L5_2(L6_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.loop_listview_skill_core
  L6_2 = L5_2
  L5_2 = L5_2.PlayFadeIn
  L5_2(L6_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_simple_desc_switch
  L6_2 = L5_2
  L5_2 = L5_2.SetChecked
  L7_2 = A0_2._is_simple_desc
  L5_2(L6_2, L7_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._cur_type_skill_core_table
  L1_2 = #L1_2
  L1_2 = L1_2 == 0
  return L1_2
end
L0_1.is_empty = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_simple_desc
  L1_2 = not L1_2
  A0_2._is_simple_desc = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = A0_2._is_simple_desc
  L1_2.AetherSkillCoreSimpleDescSwitch = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_simple_desc_switch
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = A0_2._is_simple_desc
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.refresh_list
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_simple_desc_switch = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._cur_type_skill_core_table
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._get_selected_slot
    L4_3 = A0_3.ConfigID
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = A0_2
    L4_3 = L3_3
    L3_3 = L3_3._get_selected_slot
    L5_3 = A1_3.ConfigID
    L3_3 = L3_3(L4_3, L5_3)
    L4_3 = A0_2
    L5_3 = L4_3
    L4_3 = L4_3._check_is_recommend
    L6_3 = A0_3.ConfigID
    L4_3 = L4_3(L5_3, L6_3)
    L5_3 = A0_2
    L6_3 = L5_3
    L5_3 = L5_3._check_is_recommend
    L7_3 = A1_3.ConfigID
    L5_3 = L5_3(L6_3, L7_3)
    if L2_3 ~= nil and L3_3 == nil then
      L6_3 = true
      return L6_3
    elseif L2_3 == nil and L3_3 ~= nil then
      L6_3 = false
      return L6_3
    elseif L2_3 ~= nil and L3_3 ~= nil then
      L6_3 = L2_3.SlotIndex
      L7_3 = L3_3.SlotIndex
      L6_3 = L6_3 < L7_3
      return L6_3
    elseif L4_3 ~= L5_3 then
      return L4_3
    else
      L6_3 = A0_3.IsNew
      L7_3 = A1_3.IsNew
      if L6_3 ~= L7_3 then
        L6_3 = A0_3.IsNew
        return L6_3
      else
        L6_3 = A0_3.BelongAetherMonsterAvatarID
        if L6_3 == 0 then
          L6_3 = A1_3.BelongAetherMonsterAvatarID
          if L6_3 ~= 0 then
            goto lbl_66
          end
        end
        L6_3 = A0_3.BelongAetherMonsterAvatarID
        if L6_3 ~= 0 then
          L6_3 = A1_3.BelongAetherMonsterAvatarID
          ::lbl_66::
          if L6_3 == 0 then
            L6_3 = A0_3.BelongAetherMonsterAvatarID
            L6_3 = L6_3 == 0
            return L6_3
        end
        else
          L6_3 = A0_3.SkillRarity
          L7_3 = A1_3.SkillRarity
          if L6_3 ~= L7_3 then
            L6_3 = A0_3.SkillRarity
            L7_3 = A1_3.SkillRarity
            L6_3 = L6_3 > L7_3
            return L6_3
          else
            L6_3 = A0_3.ConfigID
            L7_3 = A1_3.ConfigID
            if L6_3 == L7_3 then
              L6_3 = A0_3.BelongAetherMonsterAvatarID
              L7_3 = A1_3.BelongAetherMonsterAvatarID
              L6_3 = L6_3 > L7_3
              return L6_3
            else
              L6_3 = A0_3.ConfigID
              L7_3 = A1_3.ConfigID
              L6_3 = L6_3 < L7_3
              return L6_3
            end
          end
        end
      end
    end
  end
  L1_2(L2_2, L3_2)
end
L0_1._sort = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_listview_skill_core
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._cur_type_skill_core_table
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_listview_skill_core
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._setup_spirit_item_list = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.AetherCommonSkillCoreItemPanel
    L8_2 = G
    L8_2 = L8_2.AetherCommonSkillCoreItemPanelBinder
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
  L7_2 = A0_2._cur_type_skill_core_table
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L8_2 = A0_2._spirit_data
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_simple_desc_open
  L7_2 = A0_2._is_simple_desc
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_recommend
  L8_2 = A0_2
  L7_2 = A0_2._check_is_recommend
  L9_2 = A0_2._cur_type_skill_core_table
  L10_2 = A2_2 + 1
  L9_2 = L9_2[L10_2]
  L9_2 = L9_2.ConfigID
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2, L9_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_callback
  L7_2 = A0_2._on_click_item
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = A0_2
  L5_2 = A0_2._get_selected_slot
  L7_2 = A0_2._cur_type_skill_core_table
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.ConfigID
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_selected_slot
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.LayoutRebuilder
  L6_2 = L6_2.ForceRebuildLayoutImmediate
  L7_2 = L3_2.transform
  L6_2(L7_2)
  return L3_2
end
L0_1._on_spirit_item_change = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = 0
  L3_2 = A0_2._spirit_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.RecommendPassiveSkillList
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._spirit_data
    L6_2 = L6_2.Row
    L6_2 = L6_2.RecommendPassiveSkillList
    L6_2 = L6_2[L5_2]
    if L6_2 == A1_2 then
      L6_2 = true
      return L6_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._check_is_recommend = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 1
  L3_2 = A0_2._skill_slot_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._skill_slot_table
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2.Status
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.MonsterAvatarSkillSlotStatus
    L8_2 = L8_2.Equipped
    if L7_2 == L8_2 then
      L7_2 = L6_2.SkillCoreData
      L7_2 = L7_2.ConfigID
      if L7_2 == A1_2 then
        return L6_2
      end
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1._get_selected_slot = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._callback
  if L3_2 ~= nil then
    L3_2 = A0_2._callback_self
    if L3_2 ~= nil then
      L3_2 = A0_2._callback
      L4_2 = A0_2._callback_self
      L5_2 = A1_2
      L6_2 = A2_2
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L0_1._on_click_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.AetherSpiritSkillCoreFilter
  L1_2 = L1_2(L2_2)
  A0_2._skill_core_filter = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_filters
  L3_2 = A0_2._skill_core_filter
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_callback
  L3_2 = A0_2._on_setup_filter
  L4_2 = A0_2._on_finish_filter
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._init_filter = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_source_data
  L3_2 = A0_2._owner
  L3_2 = L3_2._all_skill_core_table
  L1_2(L2_2, L3_2)
end
L0_1._on_setup_filter = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = 1
  L3_2 = A0_2._skill_slot_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._skill_slot_table
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2.Status
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.MonsterAvatarSkillSlotStatus
    L8_2 = L8_2.Equipped
    if L7_2 == L8_2 then
      L8_2 = A0_2
      L7_2 = A0_2._check_is_skill_core_exist
      L9_2 = A1_2
      L10_2 = L6_2.SkillCoreData
      L10_2 = L10_2.ConfigID
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      if not L7_2 then
        L7_2 = table
        L7_2 = L7_2.insert
        L8_2 = A1_2
        L9_2 = L6_2.SkillCoreData
        L7_2(L8_2, L9_2)
      end
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.setup_view
  L4_2 = A1_2
  L5_2 = A0_2._spirit_data
  L6_2 = A0_2._skill_slot_table
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.loop_listview_skill_core
  L3_2 = L2_2
  L2_2 = L2_2.MovePanelToItemIndex
  L4_2 = 0
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._filter_callback
  if L2_2 then
    L2_2 = A0_2._filter_callback_self
    if L2_2 then
      L2_2 = A0_2._filter_callback
      L3_2 = A0_2._filter_callback_self
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_finish_filter = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = 1
  L4_2 = #A1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    L7_2 = L7_2.ConfigID
    if L7_2 == A2_2 then
      L7_2 = true
      return L7_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._check_is_skill_core_exist = L1_1
return L0_1
