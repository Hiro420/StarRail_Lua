local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.FantasticStoryActivity.FantasticStoryParagraphTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FantasticStoryActivity.FantasticStoryParagraphCardPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FantasticStoryParagraphTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_ActivityFanaticStory_TAB_Challenge"
function L2_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._paragraph_panels = L1_2
  A0_2._scroll_rect_moved = false
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.paragraph_scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.RemoveAllListeners
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  function L3_2()
    local L0_3, L1_3
    A0_2._scroll_rect_moved = true
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = L1_2.FantasticStoryNewUnlockParagraphCard
  L3_2 = L2_2
  L2_2 = L2_2.Clear
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.ForceSave
  L2_2()
end
L0_1.clear_new_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.FantasticStoryActivityModule
  L3_2 = L1_2
  L2_2 = L1_2.GetSortedParagraphData
  L2_2 = L2_2(L3_2)
  A0_2._paragraph_data_list = L2_2
  L2_2 = {}
  A0_2._paragraph_panels = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.paragraph_scroll_view
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._paragraph_data_list
  L4_2 = L4_2.Count
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.paragraph_scroll_view
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._make_new_finish_card_center
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.paragraph_scroll_view
  L3_2 = L2_2
  L2_2 = L2_2.PlayFadeIn
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._add_count_down_timer
  L4_2 = A0_2._try_play_unlock_anim
  L5_2 = A0_2._binder
  L5_2 = L5_2.paragraph_scroll_view
  L5_2 = L5_2.FadeInOffset
  L6_2 = A0_2._paragraph_data_list
  L6_2 = L6_2.Count
  L6_2 = L6_2 - 1
  L5_2 = L5_2 * L6_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.paragraph_scroll_view
  L6_2 = L6_2.FadeInLength
  L5_2 = L5_2 + L6_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._anim_timer = L2_2
  L2_2 = A0_2._anim_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._anim_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  A0_2._center_index = 0
  L1_2 = 0
  L2_2 = A0_2._paragraph_data_list
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._paragraph_data_list
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.IsUnlock
    if L5_2 then
      A0_2._center_index = L4_2
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.paragraph_scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemIndex
  L3_2 = math
  L3_2 = L3_2.max
  L4_2 = A0_2._center_index
  L4_2 = L4_2 - 1
  L5_2 = 0
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._make_new_finish_card_center = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_tab_select
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_tab_unselect
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueFantasticStoryExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "Activity_Battle_Tab_Path"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_tab_selected
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_tab_unselected
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "FantasticStoryParagraphTab"
  L5_2 = nil
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.red_dot
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.TutorialSupportModule
  L3_2 = L2_2
  L2_2 = L2_2.SetNodeDynamicKey
  L4_2 = A0_2._binder
  L4_2 = L4_2.tab_btn_root
  L4_2 = L4_2.gameObject
  L5_2 = "Paragraph"
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_added = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_view
  L1_2(L2_2)
end
L0_1._on_select = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_unselect = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_21
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.FantasticStoryParagraphCardPanel
  L8_2 = G
  L8_2 = L8_2.FantasticStoryParagraphCardPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_21::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._paragraph_data_list
  L7_2 = L7_2[A2_2]
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._paragraph_panels
  L6_2 = A0_2._paragraph_data_list
  L6_2 = L6_2[A2_2]
  L6_2 = L6_2.ParagraphID
  L5_2[L6_2] = L4_2
  return L3_2
end
L0_1._on_item_change = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = math
  L1_2 = L1_2.max
  L2_2 = A0_2._center_index
  L2_2 = L2_2 - 1
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._scroll_rect_moved
  if L2_2 then
    L1_2 = 0
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.paragraph_scroll_view
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = L2_2.UserObjectData
    L4_2 = L3_2
    L3_2 = L3_2.get_navigation_btn_gameobject
    return L3_2(L4_2)
  end
  L3_2 = nil
  return L3_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1.on_first_child_dialog_close = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.FantasticStoryNewUnlockParagraphCardAnim
  L2_2 = L1_2
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2(L2_2)
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = A0_2._paragraph_panels
    L3_2 = L1_2.Current
    L2_2 = L2_2[L3_2]
    if L2_2 ~= nil then
      L2_2 = A0_2._paragraph_panels
      L3_2 = L1_2.Current
      L2_2 = L2_2[L3_2]
      L3_2 = L2_2
      L2_2 = L2_2.try_play_unlock_animation
      L2_2(L3_2)
    end
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.FantasticStoryNewUnlockParagraphCardAnim
  L3_2 = L2_2
  L2_2 = L2_2.Clear
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.ForceSave
  L2_2()
  L2_2 = A0_2._anim_timer
  L3_2 = L2_2
  L2_2 = L2_2.stop
  L2_2(L3_2)
end
L0_1._try_play_unlock_anim = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.paragraph_scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemIndex
  L3_2 = 0
  L1_2(L2_2, L3_2)
end
L0_1.move_panel_to_first = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._state
  L2_2 = L0_1.SelectState
  L2_2 = L2_2.Selected
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2.clear_new_reddot
    L1_2(L2_2)
  end
end
L0_1._on_dispose = L2_1
return L0_1
