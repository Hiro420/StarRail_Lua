local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.DiceBuild.Components.RogueNousDiceSurfaceEditPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousDiceSurfaceTagFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.DiceBuild.Components.RogueNousDiceSurfaceEditorPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.DiceBuild.Components.RogueNousDiceSurfaceEditorPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueCommon.Enum.RogueEnum"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousDiceSurfaceEditPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.RogueNousDiceSurfaceTagFilter
  L1_2 = L1_2(L2_2)
  A0_2._filter = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.delete
  L2_2 = A0_2._filter
  L1_2(L2_2)
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.confirm_btn
  L4_2 = A0_2._on_confirm_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.filter_btn
  L4_2 = A0_2._on_filter_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_surface_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect_ref
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_content_move
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.confirm_btn
  L1_2.interactable = false
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.create_short_cut_hint_panel
  L1_2 = L1_2(L2_2)
  A0_2._main_gamepad_hint_panel = L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._slot_data = A1_2
  A0_2._branch_data = A2_2
  L3_2 = A0_2._slot_data
  L3_2 = L3_2.CurEquippedSurface
  A0_2._cur_data = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._get_slot_can_equipped_data
  L3_2(L4_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.do_filter
  L4_2 = A0_2._can_equipped_data
  L5_2 = {}
  L6_2 = A0_2._filter
  L5_2[1] = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._filtered_surface_data_tb = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_titles
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._update_hint_txt
  L3_2(L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UIUtils
  L3_2 = L3_2.GetItemCornerWorldPosArray
  L4_2 = A0_2._binder
  L4_2 = L4_2.view_port_root
  L3_2 = L3_2(L4_2)
  A0_2._viewport_world_corners = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._on_content_move
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_cmpt
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "CommonRightPanel_FadeIn"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1.play_fade_in = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_cmpt
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "CommonRightPanel_FadeOut"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.play_fade_out = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._cur_data = nil
  A0_2._cur_panel = nil
  L1_2 = A0_2._binder
  L1_2 = L1_2.confirm_btn
  L1_2.interactable = false
end
L0_1.clear_cached_data = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._confirm_callback = A1_2
  A0_2._confirm_listener = A2_2
end
L0_1.register_confirm_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemIndex
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L3_2 = L2_2
    L2_2 = L2_2.get_root_gameObject
    return L2_2(L3_2)
  end
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.rarity_title_root_tb
  L2_2 = A0_2._slot_data
  L2_2 = L2_2.MaxRarity
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_RogueNous_SurfaceEditor_SlotTitle_1"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.rarity_title_root_tb
  L2_2 = A0_2._slot_data
  L2_2 = L2_2.MaxRarity
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.sub_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_RogueNous_Slot_Rarity_Hint_"
  L4_2 = tostring
  L5_2 = A0_2._slot_data
  L5_2 = L5_2.MaxRarity
  L5_2 = 4 - L5_2
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
  L1_2 = 1
  L2_2 = 3
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.rarity_title_root_tb
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.root
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = A0_2._slot_data
    L7_2 = L7_2.MaxRarity
    L7_2 = L7_2 == L4_2
    L5_2(L6_2, L7_2)
  end
end
L0_1._setup_titles = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._find_cur_title = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._prepare_sort_used_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._sort_can_equipped_data
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._sorted_surface_data_tb
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._cur_panel
  if L1_2 then
    L1_2 = A0_2._cur_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_data
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._cur_data
    if L1_2 == L2_2 then
      L1_2 = A0_2._cur_panel
      L2_2 = L1_2
      L1_2 = L1_2.set_checked
      L3_2 = true
      L1_2(L2_2, L3_2)
  end
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.list_view
    L2_2 = L1_2
    L1_2 = L1_2.GetShownItemByItemIndex
    L3_2 = 0
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 == nil then
      return
    end
    L2_2 = A0_2._cur_panel
    if L2_2 then
      L2_2 = A0_2._cur_panel
      L3_2 = L2_2
      L2_2 = L2_2.set_checked
      L4_2 = false
      L2_2(L3_2, L4_2)
    end
    L2_2 = L1_2.UserObjectData
    A0_2._cur_panel = L2_2
    L2_2 = A0_2._cur_panel
    L3_2 = L2_2
    L2_2 = L2_2.get_data
    L2_2 = L2_2(L3_2)
    A0_2._cur_data = L2_2
    L2_2 = A0_2._cur_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_checked
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._update_btn_status
  L1_2(L2_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.confirm_btn
  L2_2 = A0_2._cur_panel
  L3_2 = L2_2
  L2_2 = L2_2.get_data
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._slot_data
  L3_2 = L3_2.CurEquippedSurface
  L2_2 = L2_2 ~= L3_2
  L1_2.interactable = L2_2
end
L0_1._update_btn_status = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.RogueNousUtils
  L1_2 = L1_2.get_surface_data_table_with_correct_rarity
  L2_2 = A0_2._slot_data
  L2_2 = L2_2.MaxRarity
  L3_2 = A0_2._branch_data
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = {}
  end
  A0_2._can_equipped_data = L1_2
end
L0_1._get_slot_can_equipped_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ipairs
  L2_2 = A0_2._filtered_surface_data_tb
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.SurfaceID
    L7_2 = A0_2._slot_data
    L7_2 = L7_2.CurEquippedSurface
    L7_2 = L7_2.SurfaceID
    if L6_2 == L7_2 then
      L6_2 = A0_2._filtered_surface_data_tb
      return L6_2
    end
  end
  L1_2 = {}
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = A0_2._slot_data
  L4_2 = L4_2.CurEquippedSurface
  L2_2(L3_2, L4_2)
  L2_2 = ipairs
  L3_2 = A0_2._filtered_surface_data_tb
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  return L1_2
end
L0_1._get_all_valid_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._get_all_valid_data
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  A0_2._sorted_surface_data_tb = L2_2
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._sorted_surface_data_tb
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = A0_2._sorted_surface_data_tb
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._surface_compare_sort
    L4_3 = A0_2._slot_data
    L5_3 = A0_2._branch_data
    L6_3 = A0_3
    L7_3 = A1_3
    return L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
  end
  L2_2(L3_2, L4_2)
end
L0_1._sort_can_equipped_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._branch_data
  L1_2 = L1_2.SlotList
  L2_2 = {}
  A0_2._surface_id_to_slot_id = L2_2
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = A0_2._surface_id_to_slot_id
    L8_2 = L6_2.CurEquippedSurface
    L8_2 = L8_2.SurfaceID
    L9_2 = L6_2.SlotID
    L7_2[L8_2] = L9_2
  end
  L2_2 = {}
  A0_2._recommend_surface_hash_set = L2_2
  L2_2 = A0_2._branch_data
  L2_2 = L2_2.RecommendHashSet
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
    L3_2 = A0_2._recommend_surface_hash_set
    L4_2 = L2_2.Current
    L3_2[L4_2] = true
  end
  L4_2 = L2_2
  L3_2 = L2_2.Dispose
  L3_2(L4_2)
end
L0_1._prepare_sort_used_data = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  L5_2 = A1_2.CurEquippedSurface
  if A3_2 == L5_2 then
    L5_2 = true
    return L5_2
  end
  L5_2 = A1_2.CurEquippedSurface
  if A4_2 == L5_2 then
    L5_2 = false
    return L5_2
  end
  L5_2 = A3_2.IsUnlocked
  if L5_2 then
    L5_2 = A4_2.IsUnlocked
    if not L5_2 then
      L5_2 = true
      return L5_2
    end
  end
  L5_2 = A4_2.IsUnlocked
  if L5_2 then
    L5_2 = A3_2.IsUnlocked
    if not L5_2 then
      L5_2 = false
      return L5_2
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2._is_equipped_by_other_slot
  L7_2 = A1_2
  L8_2 = A3_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  if L5_2 then
    L6_2 = A0_2
    L5_2 = A0_2._is_equipped_by_other_slot
    L7_2 = A1_2
    L8_2 = A4_2
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    if not L5_2 then
      L5_2 = false
      return L5_2
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2._is_equipped_by_other_slot
  L7_2 = A1_2
  L8_2 = A3_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  if not L5_2 then
    L6_2 = A0_2
    L5_2 = A0_2._is_equipped_by_other_slot
    L7_2 = A1_2
    L8_2 = A4_2
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    if L5_2 then
      L5_2 = true
      return L5_2
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2._is_recommend_surface
  L7_2 = A3_2
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L6_2 = A0_2
    L5_2 = A0_2._is_recommend_surface
    L7_2 = A4_2
    L5_2 = L5_2(L6_2, L7_2)
    if not L5_2 then
      L5_2 = true
      return L5_2
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2._is_recommend_surface
  L7_2 = A4_2
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L6_2 = A0_2
    L5_2 = A0_2._is_recommend_surface
    L7_2 = A3_2
    L5_2 = L5_2(L6_2, L7_2)
    if not L5_2 then
      L5_2 = false
      return L5_2
    end
  end
  L5_2 = A3_2.Rarity
  L6_2 = A4_2.Rarity
  if L5_2 > L6_2 then
    L5_2 = true
    return L5_2
  end
  L5_2 = A4_2.Rarity
  L6_2 = A3_2.Rarity
  if L5_2 > L6_2 then
    L5_2 = false
    return L5_2
  end
  L5_2 = A3_2.SurfaceID
  L6_2 = A4_2.SurfaceID
  L5_2 = L5_2 < L6_2
  return L5_2
end
L0_1._surface_compare_sort = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._recommend_surface_hash_set
  L3_2 = A1_2.SurfaceID
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2 == true
  return L2_2
end
L0_1._is_recommend_surface = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A2_2.SurfaceID
  L4_2 = A0_2._surface_id_to_slot_id
  L4_2 = L4_2[L3_2]
  L4_2 = L4_2 ~= nil
  return L4_2
end
L0_1._is_equipped_by_other_slot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.hint_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_data
  L3_2 = L3_2.IsUnlocked
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.hint_txt
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._cur_data
  L3_2 = L3_2.UnlockCondition
  L1_2(L2_2, L3_2)
end
L0_1._update_hint_txt = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L2_2 = A0_2._cur_panel
  L3_2 = L2_2
  L2_2 = L2_2.has_extra_info
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L1_2
    L4_2 = "ActionGroup_BuffDetail"
    L2_2(L3_2, L4_2)
  end
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = "ActionGroup_Return"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._main_gamepad_hint_panel
  if L2_2 then
    L2_2 = A0_2._main_gamepad_hint_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_short_cut_hint_view
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._update_gamepad_hint = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._cur_panel
  if L3_2 then
    L3_2 = A0_2._cur_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_checked
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  A0_2._cur_panel = A2_2
  L3_2 = A0_2._cur_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_checked
  L5_2 = true
  L3_2(L4_2, L5_2)
  A0_2._cur_data = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.confirm_btn
  L4_2 = A0_2._cur_panel
  if L4_2 then
    L4_2 = A0_2._cur_data
    L5_2 = A0_2._slot_data
    L5_2 = L5_2.CurEquippedSurface
    L4_2 = A0_2._cur_panel
    L5_2 = L4_2
    L4_2 = L4_2.is_equipped
    L4_2 = L4_2(L5_2)
    L4_2 = A0_2._cur_data
    L4_2 = L4_2 ~= L5_2 and L4_2
  end
  L3_2.interactable = L4_2
  L4_2 = A0_2
  L3_2 = A0_2._update_hint_txt
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._update_gamepad_hint
  L3_2(L4_2)
end
L0_1._on_surface_clicked = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._confirm_callback
  if L1_2 then
    L1_2 = A0_2._confirm_listener
    if L1_2 then
      L1_2 = A0_2._confirm_callback
      L2_2 = A0_2._confirm_listener
      L3_2 = A0_2._cur_data
      L4_2 = A0_2._slot_data
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._on_confirm_btn_clicked = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_slot_can_equipped_data
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.RogueDLC.RogueNous.DiceBuild.RogueNousDiceSurfaceFilterDialog"
  L3_2 = A0_2._can_equipped_data
  L4_2 = {}
  L5_2 = A0_2._filter
  L4_2[1] = L5_2
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_finish_filter_callback
  L4_2 = A0_2._on_filter_changed
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_filter_btn_clicked = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RogueNousDiceSurfaceEditorPanel
    L8_2 = G
    L8_2 = L8_2.RogueNousDiceSurfaceEditorPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._branch_data
  L5_2 = L5_2.RecommendHashSet
  L6_2 = L5_2
  L5_2 = L5_2.Contains
  L7_2 = A0_2._sorted_surface_data_tb
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.SurfaceID
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = A0_2._sorted_surface_data_tb
  L7_2 = A2_2 + 1
  L6_2 = L6_2[L7_2]
  L8_2 = L4_2
  L7_2 = L4_2.setup_view
  L9_2 = L6_2
  L10_2 = A2_2
  L11_2 = L5_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L8_2 = L4_2
  L7_2 = L4_2.show_tag
  L7_2(L8_2)
  L8_2 = L4_2
  L7_2 = L4_2.set_equipped
  L9_2 = A0_2._slot_data
  L9_2 = L9_2.CurEquippedSurface
  L10_2 = A0_2._sorted_surface_data_tb
  L11_2 = A2_2 + 1
  L10_2 = L10_2[L11_2]
  L9_2 = G
  L9_2 = L9_2.RogueNousUtils
  L9_2 = L9_2.is_surface_equipped_by_other_slot
  L10_2 = A0_2._branch_data
  L11_2 = A0_2._sorted_surface_data_tb
  L12_2 = A2_2 + 1
  L11_2 = L11_2[L12_2]
  L12_2 = A0_2._slot_data
  L9_2 = L9_2 == L10_2 or L9_2
  L10_2 = G
  L10_2 = L10_2.RogueNousUtils
  L10_2 = L10_2.is_surface_equipped_by_other_slot
  L11_2 = A0_2._branch_data
  L12_2 = A0_2._sorted_surface_data_tb
  L13_2 = A2_2 + 1
  L12_2 = L12_2[L13_2]
  L13_2 = A0_2._slot_data
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2, L12_2, L13_2)
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L8_2 = L4_2
  L7_2 = L4_2.set_black_mask
  L9_2 = G
  L9_2 = L9_2.RogueNousUtils
  L9_2 = L9_2.is_surface_equipped_by_other_slot
  L10_2 = A0_2._branch_data
  L11_2 = A0_2._sorted_surface_data_tb
  L12_2 = A2_2 + 1
  L11_2 = L11_2[L12_2]
  L12_2 = A0_2._slot_data
  L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2, L11_2, L12_2)
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L8_2 = L4_2
  L7_2 = L4_2.register_click_callback
  L9_2 = A0_2._on_surface_clicked
  L10_2 = A0_2
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = L4_2
  L7_2 = L4_2.set_checked
  L9_2 = false
  L7_2(L8_2, L9_2)
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.UI
  L7_2 = L7_2.LayoutRebuilder
  L7_2 = L7_2.ForceRebuildLayoutImmediate
  L9_2 = L4_2
  L8_2 = L4_2.get_root
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2(L9_2)
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  return L3_2
end
L0_1._on_surface_changed = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._filtered_surface_data_tb = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
  L2_2 = A0_2._filter
  L3_2 = L2_2
  L2_2 = L2_2.get_active_filter_table
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.filter_icon
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = #L2_2
  L5_2 = L5_2 ~= 0
  L3_2(L4_2, L5_2)
  L3_2 = #L2_2
  if L3_2 ~= 0 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.filter_txt
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_RogueNous_SurfaceEditor_Filter_ING_Button"
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.filter_txt
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_RogueNous_SurfaceEditor_Filter_Button"
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_filter_changed = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L1_2 = L1_2.ItemList
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = L6_2.UserObjectData
    if L7_2 then
      L7_2 = L6_2.UserObjectData
      L8_2 = L7_2
      L7_2 = L7_2.try_show_first_unlock_surface_effect
      L9_2 = A0_2._viewport_world_corners
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1._on_content_move = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_Confirm" then
    L2_2 = A0_2._cur_panel
    L3_2 = L2_2
    L2_2 = L2_2.has_extra_info
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = A0_2._cur_panel
      L3_2 = L2_2
      L2_2 = L2_2.show_extra_info
      L2_2(L3_2)
    end
  end
end
L0_1._on_in_control_action_click = L1_1
return L0_1
