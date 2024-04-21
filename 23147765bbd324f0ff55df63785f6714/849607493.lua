local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.FantasticStoryActivity.FantasticStoryChapterTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FantasticStoryActivity.FantasticStoryChapterCardPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FantasticStoryChapterTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_ActivityFanaticStory_TAB_Mission"
L2_1 = 5065
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  A0_2._chapter_panels = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.FantasticStoryActivityModule
  L2_2 = L1_2
  L1_2 = L1_2.GetSortedChapterData
  L1_2 = L1_2(L2_2)
  A0_2._chapter_data_list = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.chapter_scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = L1_2.FantasticStoryNewUnlockChapter
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
L0_1.clear_new_reddot = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.chapter_scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._chapter_data_list
  L3_2 = L3_2.Count
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.chapter_scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._try_play_anim
  L4_2 = A0_2._binder
  L4_2 = L4_2.chapter_scroll_view
  L4_2 = L4_2.FadeInOffset
  L5_2 = A0_2._chapter_data_list
  L5_2 = L5_2.Count
  L5_2 = L5_2 - 1
  L4_2 = L4_2 * L5_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.chapter_scroll_view
  L5_2 = L5_2.FadeInLength
  L4_2 = L4_2 + L5_2
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._anim_timer = L1_2
  L1_2 = A0_2._anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
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
  L2_2 = "Activity_Mission_Tab_Path"
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
  L4_2 = "FantasticStoryChapterTab"
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
  L5_2 = "Chapter"
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_added = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_view
  L1_2(L2_2)
end
L0_1._on_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_unselect = L3_1
function L3_1(A0_2, A1_2, A2_2)
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
  L7_2 = L7_2.FantasticStoryChapterCardPanel
  L8_2 = G
  L8_2 = L8_2.FantasticStoryChapterCardPanelBinder
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
  L7_2 = A0_2._chapter_data_list
  L7_2 = L7_2[A2_2]
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._chapter_panels
  L6_2 = A0_2._chapter_data_list
  L6_2 = L6_2[A2_2]
  L6_2 = L6_2.ChapterID
  L5_2[L6_2] = L4_2
  return L3_2
end
L0_1._on_item_change = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.TutorialManager
  L2_2 = L1_2
  L1_2 = L1_2.get_running_tutorial_id
  L1_2 = L1_2(L2_2)
  L2_2 = L2_1
  if L1_2 == L2_2 then
    A0_2._anim_try_played = false
  else
    L2_2 = A0_2
    L1_2 = A0_2._play_anim
    L1_2(L2_2)
  end
  L1_2 = A0_2._anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
end
L0_1._try_play_anim = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = L1_2.FantasticStoryNewUnlockChapterAnim
  L3_2 = L2_2
  L2_2 = L2_2.GetEnumerator
  L2_2 = L2_2(L3_2)
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = A0_2._chapter_panels
    L4_2 = L2_2.Current
    L3_2 = L3_2[L4_2]
    L4_2 = L3_2
    L3_2 = L3_2.play_unlock_anim
    L3_2(L4_2)
  end
  L3_2 = L1_2.FantasticStoryNewUnlockChapterAnim
  L4_2 = L3_2
  L3_2 = L3_2.Clear
  L3_2(L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.ForceSave
  L3_2()
  L3_2 = L1_2.FantasticStoryNewFinishChapter
  L4_2 = L3_2
  L3_2 = L3_2.GetEnumerator
  L3_2 = L3_2(L4_2)
  L2_2 = L3_2
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = A0_2._chapter_panels
    L4_2 = L2_2.Current
    L3_2 = L3_2[L4_2]
    L4_2 = L3_2
    L3_2 = L3_2.play_finish_anim
    L3_2(L4_2)
  end
  L3_2 = L1_2.FantasticStoryNewFinishChapter
  L4_2 = L3_2
  L3_2 = L3_2.Clear
  L3_2(L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.ForceSave
  L3_2()
end
L0_1._play_anim = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._anim_try_played
  if L1_2 == false then
    L2_2 = A0_2
    L1_2 = A0_2._play_anim
    L1_2(L2_2)
    A0_2._anim_try_played = true
  end
end
L0_1.on_first_child_dialog_close = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.chapter_scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = L1_2.UserObjectData
    L3_2 = L2_2
    L2_2 = L2_2.get_navigation_btn_gameobject
    return L2_2(L3_2)
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1.move_panel_to_first = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = 0
  L2_2 = A0_2._chapter_data_list
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._chapter_data_list
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.IsFinish
    if not L5_2 then
      L5_2 = false
      return L5_2
    end
  end
  L1_2 = true
  return L1_2
end
L0_1.is_all_chapter_finish = L3_1
function L3_1(A0_2)
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
L0_1._on_dispose = L3_1
return L0_1
