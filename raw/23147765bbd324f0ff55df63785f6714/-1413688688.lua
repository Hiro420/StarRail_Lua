local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleCollegeDetailTutorialTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.BattleCollegeModule
L2_1 = "UIText_BattleCollege_InBattleTutorial"
function L3_1(A0_2)
  local L1_2
  A0_2._on_select_callback = nil
  A0_2._on_select_listener = nil
  A0_2._on_select_param = nil
end
L0_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
end
L0_1._on_added = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_next
  L4_2 = A0_2._on_btn_next_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_prev
  L4_2 = A0_2._on_btn_prev_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.Common.PageNumPanel"
  L6_2 = "Ui.Common.PageNumPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._page_num_list = L1_2
  L1_2 = A0_2._page_num_list
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_page
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2.battle_college_data = A1_2
  L2_2 = A1_2.Row
  A0_2.battle_college_data_row = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.setup_tutorial_info
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1.setup_desc = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.battle_college_data_row
  L1_2 = L1_2.TutorialID
  if L1_2 == 0 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2.battle_college_data_row
  L4_2 = L4_2.StageIntroTitle
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.TutorialModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.get_tutorial_guide_data
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._data = L2_2
  A0_2._index = 0
  A0_2._is_to_end = false
  L3_2 = A0_2
  L2_2 = A0_2._refresh_guide
  L2_2(L3_2)
end
L0_1.setup_tutorial_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._on_select_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._on_select_callback
    L2_2 = A0_2._on_select_listener
    L3_2 = A0_2._on_select_param
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_select = L3_1
function L3_1(A0_2, A1_2, A2_2, ...)
  local L3_2
  A0_2._on_select_callback = A1_2
  A0_2._on_select_listener = A2_2
  L3_2 = (...)
  A0_2._on_select_param = L3_2
end
L0_1.register_select_callback = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_next
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.row
  L3_2 = L3_2.TutorialGuideIDList
  L3_2 = L3_2.Length
  L3_2 = 1 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_next_in_control_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.row
  L3_2 = L3_2.TutorialGuideIDList
  L3_2 = L3_2.Length
  L3_2 = 1 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_prev
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.row
  L3_2 = L3_2.TutorialGuideIDList
  L3_2 = L3_2.Length
  L3_2 = 1 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_prev_in_control_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.row
  L3_2 = L3_2.TutorialGuideIDList
  L3_2 = L3_2.Length
  L3_2 = 1 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_next
  L2_2 = A0_2._index
  L3_2 = A0_2._data
  L3_2 = L3_2.row
  L3_2 = L3_2.TutorialGuideIDList
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L2_2 = L2_2 < L3_2
  L1_2.interactable = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_prev
  L2_2 = A0_2._index
  L2_2 = 0 < L2_2
  L1_2.interactable = L2_2
  L1_2 = A0_2._index
  L2_2 = A0_2._data
  L2_2 = L2_2.row
  L2_2 = L2_2.TutorialGuideIDList
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  if L1_2 == L2_2 then
    A0_2._is_to_end = true
  end
  L1_2 = A0_2._index
  L2_2 = A0_2._data
  L2_2 = L2_2.row
  L2_2 = L2_2.TutorialGuideIDList
  L2_2 = L2_2.Length
  if L1_2 < L2_2 then
    L1_2 = A0_2._data
    L1_2 = L1_2.row
    L1_2 = L1_2.TutorialGuideIDList
    L2_2 = A0_2._index
    L1_2 = L1_2[L2_2]
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.TutorialSupportModule
    L3_2 = L2_2
    L2_2 = L2_2.GetGuideDataRow
    L4_2 = L1_2
    L2_2 = L2_2(L3_2, L4_2)
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_pic
    L6_2 = L2_2.ImagePath
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_desc
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L2_2.DescText
    L3_2(L4_2, L5_2)
    L3_2 = {}
    L4_2 = 0
    L5_2 = A0_2._data
    L5_2 = L5_2.row
    L5_2 = L5_2.TutorialGuideIDList
    L5_2 = L5_2.Length
    L5_2 = L5_2 - 1
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L3_2
      L10_2 = A0_2._index
      L10_2 = L7_2 == L10_2
      L8_2(L9_2, L10_2)
    end
    L4_2 = A0_2._page_num_list
    L5_2 = L4_2
    L4_2 = L4_2.setup_view
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_content
  L1_2(L2_2)
end
L0_1._refresh_guide = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._index
  L2_2 = A0_2._data
  L2_2 = L2_2.row
  L2_2 = L2_2.TutorialGuideIDList
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  if L1_2 < L2_2 then
    L1_2 = A0_2._index
    L1_2 = L1_2 + 1
    A0_2._index = L1_2
    L2_2 = A0_2
    L1_2 = A0_2._refresh_guide
    L1_2(L2_2)
  end
end
L0_1._on_btn_next_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._index
  if 0 < L1_2 then
    L1_2 = A0_2._index
    L1_2 = L1_2 - 1
    A0_2._index = L1_2
    L2_2 = A0_2
    L1_2 = A0_2._refresh_guide
    L1_2(L2_2)
  end
end
L0_1._on_btn_prev_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_unselect = L3_1
return L0_1
