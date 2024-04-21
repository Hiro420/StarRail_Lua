local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleCollegeLevelTutorialTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_BattleCollege_InBattleTutorial"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.BattleCollegeModule
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_normal_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_selected_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L0_1._on_added = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = L2_1.CurrentBattleCollegeData
  L1_2 = L1_2.Row
  L1_2 = L1_2.TutorialID
  if L1_2 == 0 then
    return
  end
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
  L2_2 = A0_2.custom_setup_view
  L2_2(L3_2)
end
L0_1._on_select = L3_1
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
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_guide
  L1_2(L2_2)
end
L0_1.custom_setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._data
  L2_2 = L1_2
  L1_2 = L1_2.get_row
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_next
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2.TutorialGuideIDList
  L4_2 = L4_2.Length
  L4_2 = 1 < L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_prev
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2.TutorialGuideIDList
  L4_2 = L4_2.Length
  L4_2 = 1 < L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_next
  L3_2 = A0_2._index
  L4_2 = L1_2.TutorialGuideIDList
  L4_2 = L4_2.Length
  L4_2 = L4_2 - 1
  L3_2 = L3_2 < L4_2
  L2_2.interactable = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_prev
  L3_2 = A0_2._index
  L3_2 = 0 < L3_2
  L2_2.interactable = L3_2
  L2_2 = A0_2._index
  L3_2 = L1_2.TutorialGuideIDList
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  if L2_2 == L3_2 then
    A0_2._is_to_end = true
  end
  L2_2 = A0_2._index
  L3_2 = L1_2.TutorialGuideIDList
  L3_2 = L3_2.Length
  if L2_2 < L3_2 then
    L2_2 = L1_2.TutorialGuideIDList
    L3_2 = A0_2._index
    L2_2 = L2_2[L3_2]
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_ModuleManager
    L3_2 = L3_2.TutorialSupportModule
    L4_2 = L3_2
    L3_2 = L3_2.GetGuideDataRow
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    L5_2 = A0_2
    L4_2 = A0_2._async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_pic
    L7_2 = L3_2.ImagePath
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_desc
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L3_2.DescText
    L4_2(L5_2, L6_2)
    L4_2 = {}
    L5_2 = 0
    L6_2 = L1_2.TutorialGuideIDList
    L6_2 = L6_2.Length
    L6_2 = L6_2 - 1
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L4_2
      L11_2 = A0_2._index
      L11_2 = L8_2 == L11_2
      L9_2(L10_2, L11_2)
    end
    L5_2 = A0_2._page_num_list
    L6_2 = L5_2
    L5_2 = L5_2.setup_view
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_content
  L2_2(L3_2)
end
L0_1._refresh_guide = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._index
  L2_2 = A0_2._data
  L3_2 = L2_2
  L2_2 = L2_2.get_row
  L2_2 = L2_2(L3_2)
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
