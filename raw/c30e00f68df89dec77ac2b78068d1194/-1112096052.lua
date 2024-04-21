local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BottomToastData"
L0_1 = L0_1(L1_1)
L1_1 = "UIText_Setting_Virtual_Leave"
L2_1 = "UIText_Rogue_Join_Avatar_Toast"
L3_1 = "UIText_Rogue_Miracle_Broken_Toast"
L4_1 = "UIText_Rogue_Miracle_Broken_Change_Toast"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AvatarModule
  L2_2 = L1_2
  L1_2 = L1_2.GetTrialAvatar
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L0_1.Create
  L3_2 = 3.6
  L4_2 = L1_2.AvatarSideIconPath
  L5_2 = true
  L6_2 = L1_1
  L7_2 = L1_2.AvatarName
  return L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1.CreateForTrialAvatarLeave = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AvatarModule
  L2_2 = L1_2
  L1_2 = L1_2.GetAvatar
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.AvatarModule
    L3_2 = L2_2
    L2_2 = L2_2.GetTrialAvatar
    L4_2 = A0_2
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  end
  L2_2 = L0_1.Create
  L3_2 = 3
  L4_2 = L1_2.AvatarSideIconPath
  L5_2 = true
  L6_2 = L2_1
  L7_2 = L1_2.AvatarName
  return L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1.CreateForRogueJoinAvatar = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RogueMiracleExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.RogueStatic
  L2_2 = L2_2.GetRogueMiracleDisplayByMiracleRow
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.MiracleIconPath
    if L3_2 then
      goto lbl_21
    end
  end
  L3_2 = nil
  ::lbl_21::
  if L2_2 ~= nil then
    L4_2 = G
    L4_2 = L4_2.TextmapStatic
    L4_2 = L4_2.GetText
    L5_2 = L2_2.MiracleName
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_31
    end
  end
  L4_2 = nil
  ::lbl_31::
  L5_2 = nil
  if L1_2 ~= nil then
    L6_2 = L1_2.BrokenChangeMiracleID
    if L6_2 ~= 0 then
      L5_2 = L4_1
  end
  else
    L5_2 = L3_1
  end
  L6_2 = L0_1.Create
  L7_2 = 3
  L8_2 = L3_2
  L9_2 = false
  L10_2 = L5_2
  L11_2 = L4_2
  return L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
end
L0_1.CreateForRogueMiracleBroken = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RogueMiracleExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.RogueStatic
  L2_2 = L2_2.GetRogueMiracleDisplayByMiracleRow
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.MiracleIconPath
    if L3_2 then
      goto lbl_21
    end
  end
  L3_2 = nil
  ::lbl_21::
  if L2_2 ~= nil then
    L4_2 = G
    L4_2 = L4_2.TextmapStatic
    L4_2 = L4_2.GetText
    L5_2 = L2_2.MiracleName
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_31
    end
  end
  L4_2 = nil
  ::lbl_31::
  L5_2 = L1_2.UseEffect
  L6_2 = L0_1.Create
  L7_2 = 3
  L8_2 = L3_2
  L9_2 = false
  L10_2 = L5_2
  L11_2 = L4_2
  return L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
end
L0_1.CreateForRogueMiracleUse = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.MazeBuffToastTable
  L1_2 = L1_2.GetConfig
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L0_1.Create
    L3_2 = 3
    L4_2 = L1_2.IconPath
    L5_2 = false
    L6_2 = L1_2.AddMazeBuffText
    return L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1.CreateForRogueBuffGet = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.MazeBuffToastTable
  L1_2 = L1_2.GetConfig
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L0_1.Create
    L3_2 = 3
    L4_2 = L1_2.IconPath
    L5_2 = false
    L6_2 = L1_2.DelMazeBuffText
    return L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1.CreateForRogueBuffDelete = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L5_2 = G
  L5_2 = L5_2.New
  L6_2 = "Ui.Common.Toast.BottomToastData"
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  return L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end
L0_1.Create = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  A0_2.close_time = A1_2
  A0_2.img_path = A2_2
  A0_2.show_avatar_icon = A3_2
  A0_2.title_text = A4_2
  A0_2.title_text_param = A5_2
end
L0_1.ctor = L5_1
return L0_1
