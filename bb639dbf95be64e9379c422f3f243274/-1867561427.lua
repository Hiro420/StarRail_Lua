local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherChallenge.Panels.AetherChallengeMonsterPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherChallenge.Panels.AetherChallengeMonsterPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherChallengePlayerPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 8001
L2_1 = 8002
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.AetherDivideModule
L3_1 = L3_1.TrainerData
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.PlayerModule
  L1_2 = L1_2.PlayerData
  L1_2 = L1_2.HeroAvatarInfoData
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentHeroGender
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GenderType
  L2_2 = L2_2.GENDER_MAN
  if L1_2 == L2_2 then
    L2_2 = L1_1
    if L2_2 then
      goto lbl_22
    end
  end
  L2_2 = L2_1
  ::lbl_22::
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_avatar_name
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.GlobalVars
  L5_2 = L5_2.s_ModuleManager
  L5_2 = L5_2.PlayerModule
  L5_2 = L5_2.PlayerData
  L5_2 = L5_2.NickName
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.setup_avatar_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.setup_level_view
  L5_2 = L3_1.TrainerLevel
  L3_2(L4_2, L5_2)
end
L0_1.setup_current_hero = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.setup_signature_view
  L4_2 = A1_2.Signature
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_avatar_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.Row
  L4_2 = L4_2.OpponentName
  L2_2(L3_2, L4_2)
  L3_2 = A1_2
  L2_2 = A1_2.GetDisplayMonsterDatas
  L2_2 = L2_2(L3_2)
  A0_2._monster_datas = L2_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A0_2._monster_datas
  L2_2 = L2_2(L3_2)
  A0_2._fellow_monster_datas = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.setup_boss_list_view
  L4_2 = A0_2._monster_datas
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_level_view
  L4_2 = A1_2.RankID
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_icon_avatar
  L4_2 = A1_2.Row
  L4_2 = L4_2.OpponentPrefabPath
  L5_2 = A1_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.setup_opponent_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = string
  L2_2 = L2_2.format
  L3_2 = "UI/Quest/AetherDivide/AvatarRole/AvatarRole_%d.prefab"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "SpriteOutput/AvatarCutinFigures/%d.png"
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_icon_avatar
  L6_2 = L2_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.setup_avatar_view = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if A1_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2.setup_boss_list_view
    L5_2 = nil
    L3_2(L4_2, L5_2)
    return
  end
  L4_2 = A1_2
  L3_2 = A1_2.GetMemberList
  L3_2 = L3_2(L4_2)
  L4_2 = 1
  L5_2 = A0_2._binder
  L5_2 = L5_2.panels_monster_boss
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = nil
    L9_2 = L3_2.Length
    if L7_2 <= L9_2 then
      L9_2 = L7_2 - 1
      L8_2 = L3_2[L9_2]
    end
    L9_2 = A0_2._binder
    L9_2 = L9_2.panels_monster_boss
    L9_2 = L9_2[L7_2]
    L11_2 = L9_2
    L10_2 = L9_2.setup_view_by_avatar
    L12_2 = L8_2
    L10_2(L11_2, L12_2)
    L11_2 = L9_2
    L10_2 = L9_2.show_forbidden
    L12_2 = A2_2
    L10_2(L11_2, L12_2)
  end
end
L0_1.setup_team_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.panels_monster_boss
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = nil
    if A1_2 ~= nil then
      L7_2 = A1_2.Count
      if L5_2 <= L7_2 then
        L7_2 = L5_2 - 1
        L6_2 = A1_2[L7_2]
      end
    end
    L7_2 = A0_2._binder
    L7_2 = L7_2.panels_monster_boss
    L7_2 = L7_2[L5_2]
    L9_2 = L7_2
    L8_2 = L7_2.setup_view_by_monster_data
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.register_click_callback
    L10_2 = A0_2._on_click_monster
    L11_2 = A0_2
    L12_2 = L5_2
    L8_2(L9_2, L10_2, L11_2, L12_2)
  end
end
L0_1.setup_boss_list_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_signature
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_signature
    if L2_2 ~= nil then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_signature
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_signature_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L3_1
  L3_2 = L2_2
  L2_2 = L2_2.GetTrainerLevelRow
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_level
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2 ~= nil
  L3_2(L4_2, L5_2)
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_level_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.Name
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_level_badge
  L6_2 = L2_2.IconPath
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.setup_level_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A1_2 then
    A1_2 = 1
  end
  L2_2 = G
  L2_2 = L2_2.AetherTeamUtils
  L2_2 = L2_2.show_monster_tips_dialog
  L3_2 = A0_2._fellow_monster_datas
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.show_enemy_info_dialog = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2._img_icon_avatar
  if L3_2 == nil then
    A0_2._image_path = A2_2
    L4_2 = A0_2
    L3_2 = A0_2._async_load_prefab
    L5_2 = A1_2
    L6_2 = A0_2._on_load_prefab
    L7_2 = A0_2
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_img
    L9_2 = true
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._img_icon_avatar
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._refresh_icon_avatar = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.ComponentExtensions
  L2_2 = L2_2.SafeGetCmpt
  L3_2 = typeof
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Image
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2
  L5_2 = "Avatar"
  L6_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2._img_icon_avatar = L2_2
  L2_2 = A0_2._img_icon_avatar
  if L2_2 ~= nil then
    L2_2 = CS
    L2_2 = L2_2.System
    L2_2 = L2_2.String
    L2_2 = L2_2.IsNullOrEmpty
    L3_2 = A0_2._image_path
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._refresh_icon_avatar
      L4_2 = nil
      L5_2 = A0_2._image_path
      L2_2(L3_2, L4_2, L5_2)
    end
  end
  A0_2._image_path = nil
end
L0_1._on_load_prefab = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2.show_enemy_info_dialog
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_click_monster = L4_1
return L0_1
