local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Settlement.Components.ChessRogueLayerMissionFinishPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Settlement.Components.ChessRogueCabinetMissionFinishItem"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueLayerMissionFinishPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 5
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == nil then
    return
  end
  A0_2._cabinet_data_lst = A1_2
  L2_2 = A0_2._cabinet_data_lst
  L2_2 = L2_2.Count
  L3_2 = L1_1
  if L2_2 > L3_2 then
    L2_2 = L1_1
  end
  A0_2._display_cabinet_count = L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_view
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_view
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_view
  L4_2 = L3_2
  L3_2 = L3_2.GetShownItemByItemIndex
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = L3_2.UserObjectData
    if L4_2 then
      L4_2 = L3_2.UserObjectData
      L5_2 = L4_2
      L4_2 = L4_2.play_fade_in
      L4_2(L5_2)
    end
  end
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._all_finished_callback = A1_2
  A0_2._all_finished_listener = A2_2
end
L0_1.register_fade_in_all_finish_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.ChessRogueCabinetMissionFinishItem
    L8_2 = G
    L8_2 = L8_2.ChessRogueCabinetMissionFinishItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = 0
  L6_2 = A0_2._fade_in_finished
  if not L6_2 then
    L6_2 = A0_2._fade_finished_count
    if not L6_2 then
      L6_2 = 0
    end
    if not (A2_2 < L6_2) then
      goto lbl_29
    end
  end
  L5_2 = 1
  ::lbl_29::
  L6_2 = L3_2.transform
  L7_2 = L6_2
  L6_2 = L6_2.SetSizeWithCurrentAnchors
  L8_2 = CS
  L8_2 = L8_2.UnityEngine
  L8_2 = L8_2.RectTransform
  L8_2 = L8_2.Axis
  L8_2 = L8_2.Horizontal
  L9_2 = A0_2._binder
  L9_2 = L9_2.list_view
  L9_2 = L9_2.transform
  L9_2 = L9_2.rect
  L9_2 = L9_2.width
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.register_fade_finish_callback
  L8_2 = A0_2._on_any_item_fade_animation_finished
  L9_2 = A0_2
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = A0_2._cabinet_data_lst
  L8_2 = L8_2[A2_2]
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.LayoutRebuilder
  L6_2 = L6_2.ForceRebuildLayoutImmediate
  L7_2 = L3_2.transform
  L6_2(L7_2)
  return L3_2
end
L0_1._on_item_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._fade_finished_count
  if not L1_2 then
    L1_2 = 0
  end
  L1_2 = L1_2 + 1
  A0_2._fade_finished_count = L1_2
  L1_2 = A0_2._fade_finished_count
  L2_2 = A0_2._display_cabinet_count
  if L1_2 ~= L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.list_view
    L2_2 = L1_2
    L1_2 = L1_2.GetShownItemByItemIndex
    L3_2 = A0_2._fade_finished_count
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L2_2 = L1_2.UserObjectData
      if L2_2 then
        L2_2 = L1_2.UserObjectData
        L3_2 = L2_2
        L2_2 = L2_2.play_fade_in
        L2_2(L3_2)
      end
    end
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._finish_fade_in
  L1_2(L2_2)
end
L0_1._on_any_item_fade_animation_finished = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._all_finished_callback
  if L1_2 then
    L1_2 = A0_2._all_finished_listener
    if L1_2 then
      L1_2 = A0_2._all_finished_callback
      L2_2 = A0_2._all_finished_listener
      L1_2(L2_2)
    end
  end
  A0_2._fade_in_finished = true
end
L0_1._finish_fade_in = L2_1
return L0_1
