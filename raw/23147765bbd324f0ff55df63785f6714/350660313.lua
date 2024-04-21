local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.BoxingClub.Components.BoxingClubAvatarPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BoxingClubAvatarPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.avatar_btn
  L4_2 = A0_2._on_avatar_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil or A1_2 == 0 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_empty_view
    L2_2(L3_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.AvatarModule
    L3_2 = L2_2
    L2_2 = L2_2.GetAvatar
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
    A0_2._avatar_data = L2_2
    L2_2 = A0_2._avatar_data
    if L2_2 == nil then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_ModuleManager
      L2_2 = L2_2.AvatarModule
      L3_2 = L2_2
      L2_2 = L2_2.AddTrialPlayer
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_ModuleManager
      L2_2 = L2_2.AvatarModule
      L3_2 = L2_2
      L2_2 = L2_2.GetTrialAvatar
      L4_2 = A1_2
      L2_2 = L2_2(L3_2, L4_2)
      A0_2._avatar_data = L2_2
    end
    L2_2 = A0_2._avatar_data
    L2_2 = L2_2.IsTrialPlayer
    if L2_2 then
      L2_2 = A0_2._avatar_data
      L2_2 = L2_2.TrialPlayerID
      A0_2._avatar_id = L2_2
    else
      L2_2 = A0_2._avatar_data
      L2_2 = L2_2.RealID
      A0_2._avatar_id = L2_2
    end
    L2_2 = A0_2._avatar_data
    L2_2 = L2_2.Row
    A0_2._avatar_row = L2_2
    L3_2 = A0_2
    L2_2 = A0_2._setup_avatar_view
    L2_2(L3_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_view
  L3_2 = A0_2._avatar_id
  L1_2(L2_2, L3_2)
end
L0_1._on_return_to_top = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.info_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.empty_avatar_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.has_avatar_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.trial_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._setup_empty_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.info_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.empty_avatar_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.has_avatar_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.trial_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.IsTrialPlayer
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_avatar_icon
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_avatar_level
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_avatar_damage_type
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_avatar_rarity_bg
  L1_2(L2_2)
end
L0_1._setup_avatar_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.avatar_img
  L4_2 = A0_2._avatar_data
  L4_2 = L4_2.DefaultAvatarHeadIconPath
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_avatar_icon = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.level_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.Level
  L1_2(L2_2, L3_2)
end
L0_1._setup_avatar_level = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.DamageTypeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.Row
  L2_2 = L2_2.DamageType
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.damage_type
  L5_2 = L1_2.IconNatureColor
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_avatar_damage_type = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.InventoryModule
  L1_2 = L1_2.GetItemRarityConfig
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.Row
  L2_2 = L2_2.Rarity
  L2_2 = #L2_2
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.avatar_bg_img
  L5_2 = L1_2.FrameItemRarityPath
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_avatar_rarity_bg = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._avatar_id
  if L1_2 ~= nil then
    L1_2 = A0_2._avatar_id
    if L1_2 ~= 0 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = "Ui.Avatar.AvatarMainPage"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.init
  L4_2 = A0_2._avatar_id
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2._avatar_data
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_avatar_data_list
  L4_2 = {}
  L5_2 = A0_2._avatar_data
  L4_2[1] = L5_2
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.async_show
  L2_2(L3_2)
end
L0_1._on_avatar_btn_clicked = L1_1
return L0_1
