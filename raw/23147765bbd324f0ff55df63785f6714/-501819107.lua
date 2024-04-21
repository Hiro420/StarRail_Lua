local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Map3D.ModelIcon.Map3DModelIconInfo"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "Map3DModelIconContainer"
L2_1 = G
L2_1 = L2_1.BaseUI3DPanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 9
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = {}
  A0_2._icon_info_list = L2_2
  A0_2._default_prefab = nil
  A0_2._is_circle = nil
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._icon_info_list
  return L1_2
end
L0_1.get_icon_info_list = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._default_prefab = A1_2
  A0_2._is_circle = A2_2
end
L0_1.set_default_prefab = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = A0_2._icon_info_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.destroy_icons
    L6_2(L7_2)
  end
  L1_2 = {}
  A0_2._icon_info_list = L1_2
end
L0_1.release_game_object_pool = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L6_2 = A0_2
  L5_2 = A0_2._create_icon_info
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L10_2 = A4_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L7_2 = L5_2
  L6_2 = L5_2.refresh_transform
  L6_2(L7_2)
  L7_2 = L5_2
  L6_2 = L5_2.refresh_opacity
  L6_2(L7_2)
  return L5_2
end
L0_1.add_icon = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = A0_2._icon_info_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.refresh_transform
    L6_2(L7_2)
  end
end
L0_1.refresh_icon_transform = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = A0_2._icon_info_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.refresh_opacity
    L6_2(L7_2)
  end
end
L0_1.refresh_icon_opacity = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L5_2 = nil
  L6_2 = nil
  if A2_2 then
    L8_2 = A0_2
    L7_2 = A0_2.sync_load_prefab
    L9_2 = A2_2
    L10_2 = A0_2._root
    L10_2 = L10_2.transform
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L5_2 = L7_2
  elseif A3_2 then
    L8_2 = A0_2
    L7_2 = A0_2.instantiate_object
    L9_2 = A3_2
    L10_2 = A0_2._root
    L10_2 = L10_2.transform
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L5_2 = L7_2
  else
    L8_2 = A0_2
    L7_2 = A0_2.instantiate_object
    L9_2 = A0_2._default_prefab
    L10_2 = A0_2._root
    L10_2 = L10_2.transform
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L5_2 = L7_2
    L6_2 = true
  end
  if A4_2 then
    L7_2 = "PlayerDirection"
    if L7_2 then
      goto lbl_33
    end
  end
  L7_2 = A1_2.FriendlyName
  ::lbl_33::
  L5_2.name = L7_2
  L8_2 = L5_2
  L7_2 = L5_2.SetLayerRecursively
  L9_2 = L1_1
  L7_2(L8_2, L9_2)
  L7_2 = G
  L7_2 = L7_2.new
  L8_2 = G
  L8_2 = L8_2.Map3DModelIconInfo
  L9_2 = A0_2
  L10_2 = L5_2
  L11_2 = A1_2
  L12_2 = L6_2 or L12_2
  if L6_2 then
    L12_2 = A0_2._is_circle
  end
  L13_2 = A4_2
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L8_2 = table
  L8_2 = L8_2.insert
  L9_2 = A0_2._icon_info_list
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  return L7_2
end
L0_1._create_icon_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.release_game_object_pool
  L1_2(L2_2)
end
L0_1._on_dispose = L2_1
return L0_1
