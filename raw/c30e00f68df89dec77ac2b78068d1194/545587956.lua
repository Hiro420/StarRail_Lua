local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Avatar.NewAvatarDropDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "NewAvatarDropDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_NewAvatarDropDialog_NewMember"
L2_1 = 2
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.NewAvatarDropDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._is_can_close = false
  A0_2._is_special_above_dialog = true
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._new_avatar_info = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._add_count_down_timer
  L5_2 = A0_2._set_close
  L6_2 = L2_1
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2._count_down_timer = L3_2
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg_close
  L4_2 = A0_2._on_exit
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_obtain_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_light_cone
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_obtain_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._new_avatar_info
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._new_avatar_info
  L1_2 = L1_2.NewAvatarData
  L1_2 = L1_2.Row
  L1_2 = L1_2.Rarity
  if L1_2 ~= nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.CombatPowerAvatarRarityType
    L2_2 = L2_2.CombatPowerAvatarRarityType5
    if L1_2 == L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.anim_fade_in
      L3_2 = L2_2
      L2_2 = L2_2.Play
      L4_2 = "NewAvatarDropDialog_FadeInR5"
      L2_2(L3_2, L4_2)
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.AvatarBaseTypeExcelTable
      L2_2 = L2_2.GetData
      L3_2 = A0_2._new_avatar_info
      L3_2 = L3_2.NewAvatarData
      L3_2 = L3_2.Row
      L3_2 = L3_2.AvatarBaseType
      L2_2 = L2_2(L3_2)
      L4_2 = A0_2
      L3_2 = A0_2.load_sprite_to
      L5_2 = A0_2._binder
      L5_2 = L5_2.img_eff_r5
      L6_2 = L2_2.BaseTypeIcon
      L3_2(L4_2, L5_2, L6_2)
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.anim_fade_in
      L3_2 = L2_2
      L2_2 = L2_2.Play
      L4_2 = "NewAvatarDropDialog_FadeInR4"
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = A0_2._count_down_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._count_down_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_share_panel_avatar
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._is_can_close = true
end
L0_1._set_close = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_can_close
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L0_1._on_exit = L3_1
return L0_1
