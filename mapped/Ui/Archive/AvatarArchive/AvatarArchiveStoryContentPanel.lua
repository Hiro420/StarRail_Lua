local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Archive.AvatarArchive.AvatarArchiveStoryItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.AvatarArchive.AvatarArchiveStoryItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarArchiveStoryContentPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ArchiveModule
L1_1 = L1_1.ArchiveLockName
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._all_entries = A1_2
  A0_2._story_entry = A2_2
  A0_2._avatar_entry = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._clear_anim_state
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh
  L4_2(L5_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.story_panel_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.clear_anim_state
    L6_2(L7_2)
  end
end
L0_1._clear_anim_state = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._story_entry
  L1_2 = L1_2.IsUnlock
  L1_2 = not L1_2
  A0_2._is_lock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_node
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_list
  L1_2(L2_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_lock
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_content
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_lock
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L0_1._refresh_node = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_lock
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_title
    L2_2 = L1_2
    L1_2 = L1_2.SetCustomizedText
    L3_2 = L1_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_unlock_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._story_entry
    L4_2 = L3_2
    L3_2 = L3_2.GetUnlockDesc
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._story_entry
    L4_2 = L3_2
    L3_2 = L3_2.GetStoryTitle
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_content
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._story_entry
    L3_2 = L3_2.Row
    L3_2 = L3_2.Story
    L1_2(L2_2, L3_2)
    L1_2 = CS
    L1_2 = L1_2.UnityEngine
    L1_2 = L1_2.UI
    L1_2 = L1_2.LayoutRebuilder
    L1_2 = L1_2.ForceRebuildLayoutImmediate
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_text_content
    L1_2(L2_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_rect
    L2_2 = L1_2
    L1_2 = L1_2.SetVerticalScrollPercent
    L3_2 = 1
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._all_entries
  L1_2 = #L1_2
  L2_2 = ipairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.story_panel_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L5_2 > L1_2 then
      L8_2 = L6_2
      L7_2 = L6_2.safe_set_active
      L9_2 = false
      L7_2(L8_2, L9_2)
    else
      L8_2 = L6_2
      L7_2 = L6_2.safe_set_active
      L9_2 = true
      L7_2(L8_2, L9_2)
      L8_2 = L6_2
      L7_2 = L6_2.setup_view
      L9_2 = A0_2._all_entries
      L9_2 = L9_2[L5_2]
      L7_2(L8_2, L9_2)
      L8_2 = L6_2
      L7_2 = L6_2.register_click_callback
      L9_2 = A0_2._on_item_click
      L10_2 = A0_2
      L7_2(L8_2, L9_2, L10_2)
      L8_2 = L6_2
      L7_2 = L6_2.set_trigger_click_on_navigation
      L9_2 = true
      L7_2(L8_2, L9_2)
    end
    L7_2 = A0_2._all_entries
    L7_2 = L7_2[L5_2]
    L8_2 = A0_2._story_entry
    L7_2 = L7_2 == L8_2
    L9_2 = L6_2
    L8_2 = L6_2.set_selected
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    if L7_2 then
      A0_2._cur_panel = L6_2
    end
  end
end
L0_1._refresh_list = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._story_entry
  if A1_2 == L2_2 then
    return
  end
  A0_2._story_entry = A1_2
  L2_2 = A0_2._avatar_entry
  L3_2 = L2_2
  L2_2 = L2_2.OnEntryClick
  L4_2 = A0_2._story_entry
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_item_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_panel
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._cur_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L2_1
return L0_1
