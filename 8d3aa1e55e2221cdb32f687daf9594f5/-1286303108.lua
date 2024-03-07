local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ArchiveAvatarFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ArchiveModule
function L2_1(A0_2)
  local L1_2
  L1_2 = "AvatarArchive"
  return L1_2
end
L0_1.get_associate_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._avatar_archive_data
  if L1_2 == nil then
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.GetArchiveDataByType
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.ArchiveType
    L3_2 = L3_2.Avatar
    L1_2 = L1_2(L2_2, L3_2)
    A0_2._avatar_archive_data = L1_2
  end
  L1_2 = A0_2._avatar_archive_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._avatar_archive_data
  L1_2 = L1_2.AllEntriesList
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = L6_2.IsNew
    if not L7_2 then
      L7_2 = L6_2.BasicInfo
      L7_2 = L7_2.IsCampNew
      if not L7_2 then
        goto lbl_39
      end
    end
    L7_2 = G
    L7_2 = L7_2.RedDotModule
    L7_2 = L7_2.Instance
    L8_2 = L7_2
    L7_2 = L7_2.update_reddot
    L9_2 = "AvatarArchive"
    L10_2 = L6_2.RedDotKey
    L7_2(L8_2, L9_2, L10_2)
    ::lbl_39::
    L7_2 = L6_2.IsUnlock
    if L7_2 then
      L8_2 = A0_2
      L7_2 = A0_2._refresh_voice_tab
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
      L8_2 = A0_2
      L7_2 = A0_2._refresh_story_tab
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1.refresh = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A1_2.ShouldShowVoiceTabRedDot
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.RedDotModule
    L2_2 = L2_2.Instance
    L3_2 = L2_2
    L2_2 = L2_2.update_reddot
    L4_2 = "AvatarVoiceTab"
    L5_2 = A1_2.RedDotKey
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = A1_2.VoiceEntryList
  if L2_2 ~= nil then
    L2_2 = 0
    L3_2 = A1_2.VoiceEntryList
    L3_2 = L3_2.Count
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A1_2.VoiceEntryList
      L6_2 = L6_2[L5_2]
      L7_2 = L6_2.IsHide
      if not L7_2 then
        L7_2 = L6_2.IsNew
        if L7_2 then
          L7_2 = G
          L7_2 = L7_2.RedDotModule
          L7_2 = L7_2.Instance
          L8_2 = L7_2
          L7_2 = L7_2.update_reddot
          L9_2 = "AvatarVoiceArchive"
          L10_2 = L6_2.RedDotKey
          L7_2(L8_2, L9_2, L10_2)
        end
      end
    end
  end
end
L0_1._refresh_voice_tab = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A1_2.ShouldShowStoryTabRedDot
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.RedDotModule
    L2_2 = L2_2.Instance
    L3_2 = L2_2
    L2_2 = L2_2.update_reddot
    L4_2 = "AvatarStoryTab"
    L5_2 = A1_2.RedDotKey
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = A1_2.StoryEntryList
  if L2_2 ~= nil then
    L2_2 = 0
    L3_2 = A1_2.StoryEntryList
    L3_2 = L3_2.Count
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A1_2.StoryEntryList
      L6_2 = L6_2[L5_2]
      L7_2 = L6_2.IsHide
      if not L7_2 then
        L7_2 = L6_2.IsNew
        if L7_2 then
          L7_2 = G
          L7_2 = L7_2.RedDotModule
          L7_2 = L7_2.Instance
          L8_2 = L7_2
          L7_2 = L7_2.update_reddot
          L9_2 = "AvatarStoryArchive"
          L10_2 = L6_2.RedDotKey
          L7_2(L8_2, L9_2, L10_2)
        end
      end
    end
  end
end
L0_1._refresh_story_tab = L2_1
return L0_1
