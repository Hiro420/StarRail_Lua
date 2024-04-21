local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Expedition.Detail.ExpeditionAvatarHeadIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.Detail.ExpeditionAvatarHeadIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ExpeditionAvatarIconListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._avatar_data_list = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_avatar_icon_list_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_update_avatar_icon_list
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._member_clicked_callback = A1_2
  A0_2._member_clicked_handler = A2_2
end
L0_1.register_member_clicked_callback = L1_1
function L1_1(A0_2, A1_2)
  A0_2._max_expediton_count = A1_2
end
L0_1.set_max_expedition_count = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._avatar_real_ids = A1_2
  A0_2._to_choose_index = nil
  L3_2 = 1
  L4_2 = A0_2._max_expediton_count
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._avatar_real_ids
    L7_2 = L7_2[L6_2]
    if L7_2 == nil then
      A0_2._to_choose_index = L6_2
      break
    end
  end
  A0_2._interactable = A2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_avatar_icon_list_view
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = A0_2._max_expediton_count
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_avatar_icon_list_view
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.ExpeditionAvatarHeadIconPanel
    L8_2 = G
    L8_2 = L8_2.ExpeditionAvatarHeadIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
    L6_2 = L4_2
    L5_2 = L4_2.register_click_callback
    L7_2 = A0_2._on_avatar_clicked
    L8_2 = A0_2
    L9_2 = false
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
  L5_2 = A2_2 + 1
  L6_2 = A0_2._avatar_real_ids
  L6_2 = L6_2[L5_2]
  if L6_2 ~= nil then
    L8_2 = L4_2
    L7_2 = L4_2.setup_view
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  else
    L8_2 = L4_2
    L7_2 = L4_2.set_empty
    L9_2 = true
    L7_2(L8_2, L9_2)
  end
  L8_2 = L4_2
  L7_2 = L4_2.set_interactable
  L9_2 = A0_2._interactable
  L7_2(L8_2, L9_2)
  return L3_2
end
L0_1._on_update_avatar_icon_list = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._member_clicked_callback
  L4_2 = A0_2._member_clicked_handler
  L5_2 = A1_2
  L6_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_avatar_clicked = L1_1
return L0_1
