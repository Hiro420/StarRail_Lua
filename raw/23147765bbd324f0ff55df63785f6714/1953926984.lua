local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.AvatarItemIconLitePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.AvatarItemIconLitePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarIconListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_list
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_avatar_item_change
  L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._is_inited = false
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._title = A1_2
  A0_2._avatar_list = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._get_avatar_item_callback = A1_2
  A0_2._get_avatar_item_callback_self = A2_2
  A0_2._is_inited = true
end
L0_1.register_get_avatar_item_callback = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_list
  return L1_2
end
L0_1.get_static_list = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._avatar_list
  L1_2 = #L1_2
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = 0 < L1_2
  L2_2(L3_2, L4_2)
  if L1_2 == 0 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.root
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.Vector2
    L3_2 = L3_2.zero
    L2_2.sizeDelta = L3_2
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._title
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._is_inited
  if not L2_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.avatar_list
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = L1_2
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2._avatar_list
  if L3_2 == nil then
    L4_2 = A1_2
    L3_2 = A1_2.NewListViewItem
    L5_2 = 0
    return L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._get_avatar_item_callback
  L4_2 = A0_2._get_avatar_item_callback_self
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2._avatar_list
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  return L3_2
end
L0_1._on_avatar_item_change = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    if L2_2 ~= nil then
      goto lbl_13
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_13::
  L2_2 = L1_2.UserObjectData
  L3_2 = L2_2
  L2_2 = L2_2.get_first_selected_object
  return L2_2(L3_2)
end
L0_1.get_first_selected_object = L1_1
return L0_1
