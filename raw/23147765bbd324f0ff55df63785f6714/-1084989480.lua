local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Maze.AvatarLightConeSwitchPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.AvatarStatusPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.AvatarStatusPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LightConeStarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LightConeStarPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarLightConeSwitchPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.Avatar = 1
L1_1.LightCone = 2
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.Avatar
  A0_2._show_statu = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_avatar2cone
  L4_2 = A0_2._show_lightcone
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_cone2avatar
  L4_2 = A0_2._show_avatar
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == nil then
    return
  end
  A0_2._avatar_data = A1_2
  L2_2 = A0_2._avatar_data
  L3_2 = L2_2
  L2_2 = L2_2.GetEquipment
  L2_2 = L2_2(L3_2)
  A0_2._equipment = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_switch_btn
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_avatar_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_lightcone_view
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._equipment
  if L1_2 == nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.go_avatar2cone
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._show_avatar
    L1_2(L2_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.go_avatar2cone
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._show_statu
    L2_2 = L1_1.LightCone
    if L1_2 == L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2._show_lightcone
      L1_2(L2_2)
    end
  end
end
L0_1._setup_switch_btn = L2_1
function L2_1(A0_2, A1_2)
  A0_2._status_data = A1_2
end
L0_1.set_status_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.ID
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_role
  L5_2 = L1_2.AvatarDialogHalfImagePath
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_role_bg
  L5_2 = L1_2.AvatarDialogHalfImagePath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.status_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._status_data
  L2_2(L3_2, L4_2)
end
L0_1._setup_avatar_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._equipment
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_cone_bg
  L4_2 = A0_2._equipment
  L4_2 = L4_2.EquipmentRow
  L4_2 = L4_2.ImagePath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.lightcone_star_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._equipment
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_cone_bg
  L2_2 = A0_2._equipment
  L2_2 = L2_2.EquipmentRow
  L2_2 = L2_2.BattleDialogOffset
  if L2_2 ~= nil then
    L3_2 = L2_2.Length
    if L3_2 == 3 then
      L3_2 = L2_2[0]
      L4_2 = L2_2[1]
      L5_2 = L2_2[2]
      L6_2 = A0_2.origin_pos
      if L6_2 == nil then
        L6_2 = L1_2.transform
        L6_2 = L6_2.localPosition
        L7_2 = CS
        L7_2 = L7_2.UnityEngine
        L7_2 = L7_2.Vector3
        L8_2 = L6_2.x
        L9_2 = L6_2.y
        L10_2 = L6_2.z
        L7_2 = L7_2(L8_2, L9_2, L10_2)
        A0_2.origin_pos = L7_2
      end
      L6_2 = L1_2.transform
      L7_2 = CS
      L7_2 = L7_2.UnityEngine
      L7_2 = L7_2.Vector3
      L8_2 = L5_2
      L9_2 = L5_2
      L10_2 = 1
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L6_2.localScale = L7_2
      L6_2 = L1_2.transform
      L7_2 = CS
      L7_2 = L7_2.UnityEngine
      L7_2 = L7_2.Vector3
      L8_2 = A0_2.origin_pos
      L8_2 = L8_2.x
      L8_2 = L8_2 + L3_2
      L9_2 = A0_2.origin_pos
      L9_2 = L9_2.y
      L9_2 = L9_2 + L4_2
      L10_2 = A0_2.origin_pos
      L10_2 = L10_2.z
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L6_2.localPosition = L7_2
    end
  end
end
L0_1._setup_lightcone_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._show_statu
  L2_2 = L1_1.Avatar
  if L1_2 == L2_2 then
    return
  end
  L1_2 = L1_1.Avatar
  A0_2._show_statu = L1_2
  L1_2 = A0_2._switch_avatar_callback
  if L1_2 then
    L1_2 = A0_2._switch_avatar_callback
    L2_2 = A0_2._switch_avatar_callback_self
    L1_2(L2_2)
  end
end
L0_1._show_avatar = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._show_statu
  L2_2 = L1_1.LightCone
  if L1_2 ~= L2_2 then
    L1_2 = A0_2._equipment
    if L1_2 ~= nil then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = L1_1.LightCone
  A0_2._show_statu = L1_2
  L1_2 = A0_2._switch_lightcone_callback
  if L1_2 then
    L1_2 = A0_2._switch_lightcone_callback
    L2_2 = A0_2._switch_lightconer_callback_self
    L1_2(L2_2)
  end
end
L0_1._show_lightcone = L2_1
function L2_1(A0_2, A1_2, A2_2)
  if A1_2 == nil or A2_2 == nil then
    return
  end
  A0_2._switch_avatar_callback_self = A1_2
  A0_2._switch_avatar_callback = A2_2
end
L0_1.set_switch_avatar_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  if A1_2 == nil or A2_2 == nil then
    return
  end
  A0_2._switch_lightconer_callback_self = A1_2
  A0_2._switch_lightcone_callback = A2_2
end
L0_1.set_switch_lightcone_callback = L2_1
return L0_1
