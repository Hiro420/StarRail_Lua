local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "StatusDetailInfoCompare"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  A0_2._data = A1_2
  L6_2 = A0_2
  L5_2 = A0_2._setup_title
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_img
  L7_2 = A3_2
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_property_change
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_new
  L5_2(L6_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_title
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_num_before
  L2_2 = L2_2.gameObject
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_icon_to
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_num_after
  L2_2 = L2_2.gameObject
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_down
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_up
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty_status
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L0_1.setup_unequipped_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarPropertyExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._data
  L2_2 = L2_2.PropertyType
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_icon
  L5_2 = L1_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.PropertyName
  L2_2(L3_2, L4_2)
end
L0_1._setup_title = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_num_after
  L1_2 = L1_2.gameObject
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty_status
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_empty_status
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.AvatarModule
  L1_2 = L1_2.FormatDisplayDataByType
  L2_2 = A0_2._data
  L2_2 = L2_2.PropertyType
  L3_2 = A0_2._data
  L3_2 = L3_2.NumBefore
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.AvatarModule
  L2_2 = L2_2.FormatDisplayDataByType
  L3_2 = A0_2._data
  L3_2 = L3_2.PropertyType
  L4_2 = A0_2._data
  L4_2 = L4_2.NumAfter
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._data
  L3_2 = L3_2.NumBefore
  L3_2 = L3_2 ~= 0
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_num_before
  L4_2 = L4_2.gameObject
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_icon_to
  if L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_icon_to
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_num_before
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L1_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_num_after
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  if L1_2 == L2_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_down
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_up
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_num_after
    L5_2 = A0_2._binder
    L5_2 = L5_2.equal_color
    L4_2.color = L5_2
  end
end
L0_1._setup_property_change = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_new
  if L1_2 then
    L1_2 = A0_2._data
    L1_2 = L1_2.IsNew
    L1_2 = A0_2._data
    L1_2 = L1_2 ~= nil and L1_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_new
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_new = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_bg
  if L2_2 and A1_2 then
    L2_2 = A1_2 % 2
    L2_2 = L2_2 ~= 0
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_bg
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_down
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_up
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._data
  L2_2 = L2_2.NumBefore
  L3_2 = A0_2._data
  L3_2 = L3_2.NumAfter
  if L2_2 < L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_num_after
    L3_2 = A0_2._binder
    L3_2 = L3_2.up_color
    L2_2.color = L3_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_up
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._data
    L2_2 = L2_2.NumBefore
    L3_2 = A0_2._data
    L3_2 = L3_2.NumAfter
    if L2_2 > L3_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_num_after
      L3_2 = A0_2._binder
      L3_2 = L3_2.down_color
      L2_2.color = L3_2
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_down
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_num_after
      L3_2 = A0_2._binder
      L3_2 = L3_2.equal_color
      L2_2.color = L3_2
    end
  end
end
L0_1._setup_img = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_level_up
  if L3_2 == nil then
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_level_up
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_level_up_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2 or L5_2
  L5_2 = A1_2 and 0 < A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_level_up_value
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1.show_level_up_mark = L1_1
return L0_1
