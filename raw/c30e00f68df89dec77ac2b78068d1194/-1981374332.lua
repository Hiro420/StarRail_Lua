local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherSpiritAtlas.AetherSpiritAtlasUnlockAnim.AetherSpiritAtlasUnlockAnimDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritAtlasUnlockAnimDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AetherDivideModule
L1_1 = L1_1.AetherOutfitData
L2_1 = "AetherDivideMonsterAppearPage_FadeIn"
L3_1 = 3.5
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AetherSpiritAtlasUnlockAnimDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_click_bg
  L1_2(L2_2, L3_2, L4_2)
  A0_2._is_enable_exit = false
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = L1_1.AllAetherMonsterDisplayAvatars
  L2_2 = L2_2[A1_2]
  A0_2._spirit_display_data = L2_2
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_anim
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_gym
  L1_2(L2_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._spirit_display_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.AvatarName
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_spirit
  L4_2 = A0_2._spirit_display_data
  L4_2 = L4_2.Row
  L4_2 = L4_2.AtlasAvatarHeadIconPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.AssetLoader
  L1_2 = L1_2.SyncLoadAsset
  L2_2 = A0_2._spirit_display_data
  L2_2 = L2_2.Row
  L2_2 = L2_2.AtlasAvatarHeadIconPath
  L3_2 = typeof
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Sprite
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._sprite = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.smooth_mask_spirit
  L2_2 = A0_2._sprite
  L1_2.sprite = L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AetherSpiritTypeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._spirit_display_data
  L2_2 = L2_2.Row
  L2_2 = L2_2.SpiritType
  L2_2 = #L2_2
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2.async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_spirit_type
  L5_2 = L1_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._spirit_display_data
  L4_2 = L4_2.Row
  L4_2 = L4_2.SpiritDescription
  L2_2(L3_2, L4_2)
end
L0_1._setup_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AetherDivideGymInfoExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._spirit_display_data
  L2_2 = L2_2.GymLocation
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_gym
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 ~= nil
  L2_2(L3_2, L4_2)
  if L1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2.async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_gym
    L5_2 = L1_2.IconPath
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._setup_gym = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  L3_1 = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_start_end
  L4_2 = L3_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._count_down_timer = L1_2
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L0_1._setup_anim = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  A0_2._is_enable_exit = true
end
L0_1._on_start_end = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._on_click_bg = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_enable_exit
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L0_1._on_exit = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.AssetLoader
  L1_2 = L1_2.ReleaseAsset
  L2_2 = A0_2._sprite
  L1_2(L2_2)
  A0_2._sprite = nil
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.AetherSpiritOnAtlasUnlockAnimEnd
  L1_2(L2_2)
end
L0_1._on_unload = L4_1
return L0_1
