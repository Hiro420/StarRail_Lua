local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityCompanionMission.ActivityCompanionMissionMultiAvatarPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityCompanionMissionMultiAvatarPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A1_2 or L3_2
  if not A1_2 or not A1_2 then
    L3_2 = A2_2
  end
  A0_2._pre_banner_row = L3_2
  A0_2._current_banner_row = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._load_animation_img
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._load_img
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_box_1_b
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_box_2_b
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_box_3_b
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_box_4_b
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_box_5_b
  L8_2 = A0_2._pre_banner_row
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = A0_2
  L1_2 = A0_2._load_img
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_box_1
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_box_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_box_3
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_box_4
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_box_5
  L8_2 = A0_2._current_banner_row
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._load_animation_img = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L7_2 = A6_2.AvatarIDList
  L7_2 = L7_2.Length
  if A6_2 == nil or L7_2 < 2 then
    return
  end
  L8_2 = A6_2.SubImagePath
  L9_2 = nil
  L10_2 = nil
  if 2 < L7_2 then
    L11_2 = string
    L11_2 = L11_2.gsub
    L12_2 = L8_2
    L13_2 = tostring
    L14_2 = A6_2.AvatarIDList
    L14_2 = L14_2[1]
    L13_2 = L13_2(L14_2)
    L14_2 = tostring
    L15_2 = A6_2.AvatarIDList
    L15_2 = L15_2[2]
    L14_2, L15_2 = L14_2(L15_2)
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
    L9_2 = L11_2
  end
  if 3 < L7_2 then
    L11_2 = string
    L11_2 = L11_2.gsub
    L12_2 = L8_2
    L13_2 = tostring
    L14_2 = A6_2.AvatarIDList
    L14_2 = L14_2[1]
    L13_2 = L13_2(L14_2)
    L14_2 = tostring
    L15_2 = A6_2.AvatarIDList
    L15_2 = L15_2[3]
    L14_2, L15_2 = L14_2(L15_2)
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
    L10_2 = L11_2
  end
  if L7_2 == 2 then
    L12_2 = A0_2
    L11_2 = A0_2._async_load_sprite_to
    L13_2 = A1_2
    L14_2 = L8_2
    L11_2(L12_2, L13_2, L14_2)
  else
    L12_2 = A0_2
    L11_2 = A0_2._async_load_sprite_to
    L13_2 = A1_2
    L14_2 = L9_2
    L11_2(L12_2, L13_2, L14_2)
  end
  if L7_2 == 4 then
    L12_2 = A0_2
    L11_2 = A0_2._async_load_sprite_to
    L13_2 = A2_2
    L14_2 = L10_2
    L11_2(L12_2, L13_2, L14_2)
  else
    L12_2 = A0_2
    L11_2 = A0_2._async_load_sprite_to
    L13_2 = A2_2
    L14_2 = L8_2
    L11_2(L12_2, L13_2, L14_2)
  end
  L12_2 = A0_2
  L11_2 = A0_2._async_load_sprite_to
  L13_2 = A3_2
  L14_2 = L8_2
  L11_2(L12_2, L13_2, L14_2)
  if L7_2 == 2 then
    L12_2 = A0_2
    L11_2 = A0_2._async_load_sprite_to
    L13_2 = A4_2
    L14_2 = L8_2
    L11_2(L12_2, L13_2, L14_2)
  else
    L12_2 = A0_2
    L11_2 = A0_2._async_load_sprite_to
    L13_2 = A4_2
    L14_2 = L9_2
    L11_2(L12_2, L13_2, L14_2)
  end
  if L7_2 == 2 then
    L12_2 = A0_2
    L11_2 = A0_2._async_load_sprite_to
    L13_2 = A5_2
    L14_2 = L8_2
    L11_2(L12_2, L13_2, L14_2)
  elseif L7_2 == 3 then
    L12_2 = A0_2
    L11_2 = A0_2._async_load_sprite_to
    L13_2 = A5_2
    L14_2 = L9_2
    L11_2(L12_2, L13_2, L14_2)
  else
    L12_2 = A0_2
    L11_2 = A0_2._async_load_sprite_to
    L13_2 = A5_2
    L14_2 = L10_2
    L11_2(L12_2, L13_2, L14_2)
  end
end
L0_1._load_img = L1_1
return L0_1
