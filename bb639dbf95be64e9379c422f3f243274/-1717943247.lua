local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Story.NewProfessionAddDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "NewProfessionAddDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 2
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.NewProfessionAddDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._is_can_close = false
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._hero_basic_type = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._refesh_data
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._add_count_down_timer
  L5_2 = A0_2._set_close
  L6_2 = L1_1
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2._count_down_timer = L3_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_exit
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_avatar_cutin
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_damage_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_profession_info
  L1_2(L2_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = #A1_2
  A0_2._avatar_id = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._avatar_id
  L2_2 = L2_2(L3_2)
  A0_2._avatar_row = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.DamageTypeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._avatar_row
  L3_2 = L3_2.DamageType
  L2_2 = L2_2(L3_2)
  A0_2._damage_type_row = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarBaseTypeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._avatar_row
  L3_2 = L3_2.AvatarBaseType
  L2_2 = L2_2(L3_2)
  A0_2._avatar_base_type_row = L2_2
end
L0_1._refesh_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_avatar_cutin
  L4_2 = A0_2._avatar_row
  L4_2 = L4_2.AvatarCutinFrontImgPath
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_avatar_cutin_bg
  L4_2 = A0_2._avatar_row
  L4_2 = L4_2.AvatarCutinBgImgPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._avatar_row
  L1_2 = L1_2.AvatarCutinFrontImgPath
  if L1_2 ~= "" then
    L2_2 = A0_2
    L1_2 = A0_2.async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_avatar_cutin_front
    L4_2 = A0_2._avatar_row
    L4_2 = L4_2.AvatarCutinFrontImgPath
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_avatar_cutin_front
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_avatar_cutin = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_damage_icon
  L4_2 = A0_2._damage_type_row
  L4_2 = L4_2.DamageTypeIconPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_damage_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._damage_type_row
  L3_2 = L3_2.DamageTypeName
  L1_2(L2_2, L3_2)
end
L0_1._setup_damage_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_profession_icon
  L4_2 = A0_2._avatar_base_type_row
  L4_2 = L4_2.BaseTypeIcon
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_profession_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._avatar_base_type_row
  L3_2 = L3_2.BaseTypeText
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_profession_name_first_world
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._avatar_base_type_row
  L3_2 = L3_2.FirstWordText
  L1_2(L2_2, L3_2)
end
L0_1._setup_profession_info = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._count_down_timer = nil
  A0_2._avatar_row = nil
  A0_2._damage_type_row = nil
  A0_2._avatar_base_type_row = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  A0_2._is_can_close = true
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
end
L0_1._set_close = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_can_close
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L0_1._on_exit = L2_1
return L0_1
