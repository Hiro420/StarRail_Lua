local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.QuestReward.AlleyQuestStagePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.QuestReward.AlleyQuestStageTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyQuestStageTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AlleyModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.QuestModule
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2
  A0_2._parent_page = A1_2
  A0_2._tab_index = A3_2
  L5_2 = G
  L5_2 = L5_2.Utils
  L5_2 = L5_2.create_lua_table_from_cs_list
  L6_2 = A4_2
  L5_2 = L5_2(L6_2)
  A0_2._stage_quest_groups = L5_2
  L5_2 = {}
  A0_2._stage_panels = L5_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._stage_quest_groups = nil
  A0_2._stage_panels = nil
end
L0_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._cur_index = nil
  L2_2 = A0_2
  L1_2 = A0_2.get_first_reward_index
  L1_2 = L1_2(L2_2)
  A0_2._select_index = L1_2
  L1_2 = A0_2._select_index
  if L1_2 == -1 then
    A0_2._select_index = 1
  end
  L2_2 = A0_2
  L1_2 = A0_2.refresh_view
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = A0_2._item_reddot_key
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.tab_btn_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._tab_btn_text_id
  L1_2(L2_2, L3_2)
end
L0_1._on_added = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.get_first_reward_index
  L1_2 = L1_2(L2_2)
  A0_2._select_index = L1_2
  L1_2 = A0_2._select_index
  if L1_2 == -1 then
    A0_2._select_index = 1
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = A0_2._select_index
  L3_2 = L3_2 - 1
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
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = 1
  L2_2 = A0_2._stage_quest_groups
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = G
    L5_2 = L5_2.Utils
    L5_2 = L5_2.create_lua_table_from_cs_array
    L6_2 = A0_2._stage_quest_groups
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.QuestList
    L5_2 = L5_2(L6_2)
    L6_2 = pairs
    L7_2 = L5_2
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      L11_2 = L2_1
      L12_2 = L11_2
      L11_2 = L11_2.TryGetQuestData
      L13_2 = L10_2
      L11_2 = L11_2(L12_2, L13_2)
      if L11_2 ~= nil then
        L12_2 = L11_2.Status
        L13_2 = CS
        L13_2 = L13_2.BLHLCHNAJKK
        L13_2 = L13_2.CDJHHIHBNMN
        if L12_2 == L13_2 then
          return L4_2
        end
      end
    end
  end
  L1_2 = -1
  return L1_2
end
L0_1.get_first_reward_index = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_view
  L3_2 = L2_2
  L2_2 = L2_2.SafeInitListView
  L4_2 = 0
  L5_2 = A0_2._on_stage_change
  L6_2 = nil
  L7_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_view
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._stage_quest_groups
  L4_2 = #L4_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_view
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_view
  L3_2 = L2_2
  L2_2 = L2_2.PlayFadeIn
  L2_2(L3_2)
  if A1_2 == true then
    L2_2 = A0_2._select_index
    if L2_2 ~= nil then
      L2_2 = A0_2._stage_panels
      L3_2 = A0_2._select_index
      L2_2 = L2_2[L3_2]
      L3_2 = L2_2
      L2_2 = L2_2.on_btn_root
      L2_2(L3_2)
    else
      L2_2 = A0_2._stage_panels
      L2_2 = L2_2[1]
      L3_2 = L2_2
      L2_2 = L2_2.on_btn_root
      L2_2(L3_2)
    end
  end
end
L0_1.refresh_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = 1
  L3_2 = A0_2._stage_panels
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._stage_panels
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2.index
    if L7_2 == A1_2 then
      L8_2 = L6_2
      L7_2 = L6_2.set_checked
      L9_2 = true
      L10_2 = true
      L7_2(L8_2, L9_2, L10_2)
    else
      L8_2 = L6_2
      L7_2 = L6_2.try_uncheck
      L7_2(L8_2)
    end
  end
end
L0_1._set_stage_checked_by_index = L3_1
function L3_1(A0_2, A1_2)
  A0_2._item_reddot_key = A1_2
end
L0_1.set_reddot_key = L3_1
function L3_1(A0_2, A1_2)
  A0_2._tab_btn_text_id = A1_2
end
L0_1.set_tab_button_name = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.AlleyQuestStagePanel
    L8_2 = G
    L8_2 = L8_2.AlleyQuestStagePanelBinder
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
  L7_2 = A2_2 + 1
  L8_2 = A0_2._stage_quest_groups
  L9_2 = A2_2 + 1
  L8_2 = L8_2[L9_2]
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_btn_click_callback
  L7_2 = A0_2
  L8_2 = A0_2._on_btn_stage
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.bind_reddot
  L7_2 = A0_2._item_reddot_key
  L8_2 = A2_2 + 1
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._stage_panels
  L6_2 = A2_2 + 1
  L5_2[L6_2] = L4_2
  return L3_2
end
L0_1._on_stage_change = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2._cur_index
  if L4_2 == A1_2 then
    L4_2 = A0_2._cur_index
    if L4_2 ~= nil then
      return
    end
  end
  A0_2._cur_index = A1_2
  L5_2 = A0_2
  L4_2 = A0_2._set_stage_checked_by_index
  L6_2 = A0_2._cur_index
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._parent_page
  L5_2 = L4_2
  L4_2 = L4_2.refresh_quest_view
  L6_2 = A0_2._stage_panels
  L6_2 = L6_2[A1_2]
  L7_2 = L6_2
  L6_2 = L6_2.get_quest_data
  L6_2 = L6_2(L7_2)
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_btn_stage = L3_1
return L0_1
