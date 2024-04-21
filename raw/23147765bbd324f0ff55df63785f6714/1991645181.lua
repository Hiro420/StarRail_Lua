local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "PunkLordUtils"
L0_1 = L0_1(L1_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.TextmapStatic
  L0_2 = L0_2.GetText
  L1_2 = "UIText_ActivityPunkLord_GameMasterName_Label"
  L0_2 = L0_2(L1_2)
  L1_2 = "SpriteOutput/AvatarRoundIcon/1006.png"
  return L0_2, L1_2
end
L0_1.get_gm_nickname_and_head_icon_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.PlayerModule
  L1_2 = L1_2.PlayerData
  L1_2 = L1_2.UserID
  if A0_2 == L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.PlayerModule
    L1_2 = L1_2.PlayerData
    L2_2 = L1_2.NickName
    L3_2 = L1_2.HeadIconID
    return L2_2, L3_2
  end
  if A0_2 == 0 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.TextmapStatic
    L1_2 = L1_2.GetText
    L2_2 = "AvatarConfig_AvatarName_1006"
    L1_2 = L1_2(L2_2)
    L2_2 = 201006
    return L1_2, L2_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.FriendModule
  L2_2 = L1_2
  L1_2 = L1_2.TryGetPlayerBriefData
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.Name
    L3_2 = L1_2.HeadIconID
    return L2_2, L3_2
  end
  return A0_2
end
L0_1.get_user_nickname_and_head_icon_id = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.PlayerModule
  L3_2 = L3_2.PlayerData
  L3_2 = L3_2.UserID
  if A0_2 == L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_ModuleManager
    L3_2 = L3_2.PlayerModule
    L3_2 = L3_2.PlayerData
    L4_2 = L0_1._resolve_callback
    L5_2 = A1_2
    L6_2 = A2_2
    L7_2 = L3_2.NickName
    L8_2 = L3_2.HeadIconID
    L4_2(L5_2, L6_2, L7_2, L8_2)
    return
  end
  if A0_2 == 0 then
    L3_2 = L0_1._resolve_callback
    L4_2 = A1_2
    L5_2 = A2_2
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.TextmapStatic
    L6_2 = L6_2.GetText
    L7_2 = "AvatarConfig_AvatarName_1006"
    L6_2 = L6_2(L7_2)
    L7_2 = 201006
    L3_2(L4_2, L5_2, L6_2, L7_2)
    return
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.FriendModule
  L4_2 = L3_2
  L3_2 = L3_2.GetPlayerBriefDisplayDataPromise
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2
  L3_2 = L3_2.ThenLuaActionOneParam
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    if A0_3 == nil then
      L1_3 = L0_1._resolve_callback
      L2_3 = A1_2
      L3_3 = A2_2
      L4_3 = nil
      L5_3 = nil
      L1_3(L2_3, L3_3, L4_3, L5_3)
    else
      L1_3 = L0_1._resolve_callback
      L2_3 = A1_2
      L3_3 = A2_2
      L4_3 = A0_3.Name
      L5_3 = A0_3.HeadIconID
      L1_3(L2_3, L3_3, L4_3, L5_3)
    end
  end
  L3_2(L4_2, L5_2)
end
L0_1.get_user_nickname_and_head_icon_id_promise = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  if A0_2 then
    L4_2 = A0_2
    L5_2 = A1_2
    L6_2 = A2_2
    L7_2 = A3_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1._resolve_callback = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.PunkLordMonsterRare
  L1_2 = L1_2.S
  if A0_2 == L1_2 then
    L1_2 = "UI/Atlas/AtlasRoot/Battle_UI/MonsterElite/AntiVirusMonsterType03.png"
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.PunkLordMonsterRare
  L1_2 = L1_2.A
  if A0_2 == L1_2 then
    L1_2 = "UI/Atlas/AtlasRoot/Battle_UI/MonsterElite/AntiVirusMonsterType02.png"
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.PunkLordMonsterRare
  L1_2 = L1_2.B
  if A0_2 == L1_2 then
    L1_2 = "UI/Atlas/AtlasRoot/Battle_UI/MonsterElite/AntiVirusMonsterType01.png"
    return L1_2
  end
  L1_2 = ""
  return L1_2
end
L0_1.get_monster_rare_icon_path = L1_1
L0_1.textid_summon_score = "UIText_ActivityPunkLord_PointReward_Finder_Label"
L0_1.textid_damage_score = "UIText_ActivityPunkLord_PointReward_DealDamage_Label"
L0_1.textid_finalhit_score = "UIText_ActivityPunkLord_PointReward_LastHit_Label"
L0_1.textid_assist_score = "UIText_ActivityPunkLord_PointReward_Honor_Label"
L0_1.textid_kill_score = "UIText_ActivityPunkLord_PointReward_InBattle_Label"
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = {}
  L2_2.TitleTextID = A0_2
  L2_2.Value = A1_2
  return L2_2
end
L0_1.create_score_statistic_data = L1_1
return L0_1
