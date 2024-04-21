local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.CombatPowerAvatarRarityType
L1_1 = L1_1.CombatPowerAvatarRarityType4
L0_1[L1_1] = "SpriteOutput/UI/PlayerInfo/AvatarPurpleBg.png"
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.CombatPowerAvatarRarityType
L1_1 = L1_1.CombatPowerAvatarRarityType5
L0_1[L1_1] = "SpriteOutput/UI/PlayerInfo/AvatarOrangeBg.png"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "DisplayAvatarIconPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerInfoChanged
  L4_2 = A0_2._on_player_info_changed
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._avatar_data = A1_2
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.Row
  A0_2._avatar_row = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_view
  L2_2(L3_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_icon
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_name
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_level
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_rairty
  L1_2(L2_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._avatar_data
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentItemAvatarIconPath
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_icon
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L1_1._setup_icon = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.AvatarSelfShowOffset
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = #L1_2
    if not (L2_2 < 3) then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_icon
  L2_2 = L2_2.transform
  L3_2 = L1_2[1]
  L4_2 = L1_2[2]
  L5_2 = L1_2[3]
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Vector3
  L7_2 = L5_2
  L8_2 = L5_2
  L9_2 = 1
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L2_2.localScale = L6_2
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Vector3
  L7_2 = L3_2
  L8_2 = L4_2
  L9_2 = L2_2.localPosition
  L9_2 = L9_2.z
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L2_2.localPosition = L6_2
end
L1_1._setup_offset = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.IsHero
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_name
    L2_2 = L1_2
    L1_2 = L1_2.SetCustomizedText
    L3_2 = A0_2._avatar_data
    L3_2 = L3_2.AvatarName
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._avatar_row
    L3_2 = L3_2.AvatarName
    L1_2(L2_2, L3_2)
  end
end
L1_1._setup_name = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.Level
  L1_2(L2_2, L3_2)
end
L1_1._setup_level = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._avatar_row
  L1_2 = L1_2.Rarity
  L1_2 = L0_1[L1_2]
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_rarity
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L1_1._setup_rairty = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._avatar_data
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_view
  L1_2(L2_2)
end
L1_1._on_player_info_changed = L2_1
return L1_1
