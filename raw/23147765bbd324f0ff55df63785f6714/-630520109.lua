local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PlayerDiaryItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2._get_time_param
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == 0 then
    L3_2 = G
    L3_2 = L3_2.TextmapStatic
    L3_2 = L3_2.GetText
    L4_2 = "UIText_PlayerCard_Updates_Days2"
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_19
    end
  end
  L3_2 = G
  L3_2 = L3_2.TextmapStatic
  L3_2 = L3_2.GetText
  L4_2 = "UIText_PlayerCard_Updates_Days1"
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  ::lbl_19::
  L4_2 = G
  L4_2 = L4_2.TextmapStatic
  L4_2 = L4_2.GetText
  L6_2 = A0_2
  L5_2 = A0_2._get_text_id
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = A0_2
  L6_2 = A0_2._get_content_param
  L8_2 = A1_2
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_desc
  L6_2 = L5_2
  L5_2 = L5_2.SetCustomizedText
  L7_2 = L3_2
  L8_2 = L4_2
  L7_2 = L7_2 .. L8_2
  L5_2(L6_2, L7_2)
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.LayoutRebuilder
  L5_2 = L5_2.ForceRebuildLayoutImmediate
  L6_2 = A0_2._binder
  L6_2 = L6_2.root
  L6_2 = L6_2.transform
  L5_2(L6_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.Type
  L3_2 = CS
  L3_2 = L3_2.IAIMCIJKKDF
  L3_2 = L3_2.CLGBFDIIPFF
  if L2_2 == L3_2 then
    L2_2 = "UIText_PlayerCard_Updates_Type2_1"
    return L2_2
  else
    L2_2 = A1_2.Type
    L3_2 = CS
    L3_2 = L3_2.IAIMCIJKKDF
    L3_2 = L3_2.NOCCLAACMHB
    if L2_2 == L3_2 then
      L2_2 = "UIText_PlayerCard_Updates_Type2_2"
      return L2_2
    else
      L2_2 = A1_2.Type
      L3_2 = CS
      L3_2 = L3_2.IAIMCIJKKDF
      L3_2 = L3_2.PBHOKFCGJDB
      if L2_2 == L3_2 then
        L2_2 = "UIText_PlayerCard_Updates_Type3_1"
        return L2_2
      else
        L2_2 = A1_2.Type
        L3_2 = CS
        L3_2 = L3_2.IAIMCIJKKDF
        L3_2 = L3_2.OMDJCMGCIAD
        if L2_2 == L3_2 then
          L2_2 = "UIText_PlayerCard_Updates_Type3_1"
          return L2_2
        else
          L2_2 = A1_2.Type
          L3_2 = CS
          L3_2 = L3_2.IAIMCIJKKDF
          L3_2 = L3_2.NHCIKGAEJOL
          if L2_2 ~= L3_2 then
            L2_2 = A1_2.Type
            L3_2 = CS
            L3_2 = L3_2.IAIMCIJKKDF
            L3_2 = L3_2.IIIIMLKEEKB
            if L2_2 ~= L3_2 then
              L2_2 = A1_2.Type
              L3_2 = CS
              L3_2 = L3_2.IAIMCIJKKDF
              L3_2 = L3_2.ILNDLBIOBAA
              if L2_2 ~= L3_2 then
                goto lbl_58
              end
            end
          end
          L2_2 = "UIText_PlayerCard_Updates_Type1_1"
          do return L2_2 end
          goto lbl_78
          ::lbl_58::
          L2_2 = A1_2.Type
          L3_2 = CS
          L3_2 = L3_2.IAIMCIJKKDF
          L3_2 = L3_2.CONCPELFDMP
          if L2_2 == L3_2 then
            L2_2 = "UIText_PlayerCard_Updates_Type1_2"
            return L2_2
          else
            L2_2 = A1_2.Type
            L3_2 = CS
            L3_2 = L3_2.IAIMCIJKKDF
            L3_2 = L3_2.DDADJGEEOHO
            if L2_2 == L3_2 then
              L2_2 = "UIText_PlayerCard_Updates_Type1_3"
              return L2_2
            else
              L2_2 = nil
              return L2_2
            end
          end
        end
      end
    end
  end
  ::lbl_78::
end
L0_1._get_text_id = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.TimeUtils
  L2_2 = L2_2.DateTimeToTimeStampInSeconds
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_TimeManager
  L3_2 = L3_2.NowDateTime
  L3_2 = L3_2.Date
  L2_2 = L2_2(L3_2)
  L3_2 = A1_2.TimeStamp
  if L2_2 < L3_2 then
    L3_2 = 0
    return L3_2
  end
  L3_2 = math
  L3_2 = L3_2.modf
  L4_2 = A1_2.TimeStamp
  L4_2 = L2_2 - L4_2
  L4_2 = L4_2 / 86400
  L3_2, L4_2 = L3_2(L4_2)
  L5_2 = L3_2 + 1
  return L5_2
end
L0_1._get_time_param = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.ContentID
  L3_2 = A1_2.Type
  L4_2 = CS
  L4_2 = L4_2.IAIMCIJKKDF
  L4_2 = L4_2.CLGBFDIIPFF
  if L3_2 == L4_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.AvatarExcelTable
    L3_2 = L3_2.GetData
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L4_2 = G
    L4_2 = L4_2.TextmapStatic
    L4_2 = L4_2.GetText
    L5_2 = L3_2.AvatarName
    return L4_2(L5_2)
  else
    L3_2 = A1_2.Type
    L4_2 = CS
    L4_2 = L4_2.IAIMCIJKKDF
    L4_2 = L4_2.NOCCLAACMHB
    if L3_2 == L4_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.EquipmentExcelTable
      L3_2 = L3_2.GetData
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      L4_2 = G
      L4_2 = L4_2.TextmapStatic
      L4_2 = L4_2.GetText
      L5_2 = L3_2.EquipmentName
      return L4_2(L5_2)
    else
      L3_2 = A1_2.Type
      L4_2 = CS
      L4_2 = L4_2.IAIMCIJKKDF
      L4_2 = L4_2.PBHOKFCGJDB
      if L3_2 ~= L4_2 then
        L3_2 = A1_2.Type
        L4_2 = CS
        L4_2 = L4_2.IAIMCIJKKDF
        L4_2 = L4_2.OMDJCMGCIAD
        if L3_2 ~= L4_2 then
          goto lbl_68
        end
      end
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.ActivityPanelExcelTable
      L3_2 = L3_2.GetData
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      L4_2 = G
      L4_2 = L4_2.TextmapStatic
      L4_2 = L4_2.GetText
      L5_2 = L3_2.TitleName
      do return L4_2(L5_2) end
      goto lbl_156
      ::lbl_68::
      L3_2 = A1_2.Type
      L4_2 = CS
      L4_2 = L4_2.IAIMCIJKKDF
      L4_2 = L4_2.NHCIKGAEJOL
      if L3_2 == L4_2 then
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.GameCore
        L3_2 = L3_2.RogueAreaConfigExcelTable
        L3_2 = L3_2.GetData
        L4_2 = L2_2
        L3_2 = L3_2(L4_2)
        L4_2 = G
        L4_2 = L4_2.TextmapStatic
        L4_2 = L4_2.GetText
        L5_2 = L3_2.AreaNameID
        return L4_2(L5_2)
      else
        L3_2 = A1_2.Type
        L4_2 = CS
        L4_2 = L4_2.IAIMCIJKKDF
        L4_2 = L4_2.IIIIMLKEEKB
        if L3_2 ~= L4_2 then
          L3_2 = A1_2.Type
          L4_2 = CS
          L4_2 = L4_2.IAIMCIJKKDF
          L4_2 = L4_2.ILNDLBIOBAA
          if L3_2 ~= L4_2 then
            goto lbl_114
          end
        end
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.GameCore
        L3_2 = L3_2.RogueDLCAreaExcelTable
        L3_2 = L3_2.GetData
        L4_2 = L2_2
        L3_2 = L3_2(L4_2)
        L4_2 = G
        L4_2 = L4_2.TextmapStatic
        L4_2 = L4_2.GetText
        L5_2 = L3_2.AreaNameID
        do return L4_2(L5_2) end
        goto lbl_156
        ::lbl_114::
        L3_2 = A1_2.Type
        L4_2 = CS
        L4_2 = L4_2.IAIMCIJKKDF
        L4_2 = L4_2.CONCPELFDMP
        if L3_2 == L4_2 then
          L3_2 = CS
          L3_2 = L3_2.RPG
          L3_2 = L3_2.GameCore
          L3_2 = L3_2.ChallengeMazeConfigExcelTable
          L3_2 = L3_2.GetData
          L4_2 = L2_2
          L3_2 = L3_2(L4_2)
          L4_2 = G
          L4_2 = L4_2.TextmapStatic
          L4_2 = L4_2.GetText
          L5_2 = L3_2.Name
          return L4_2(L5_2)
        else
          L3_2 = A1_2.Type
          L4_2 = CS
          L4_2 = L4_2.IAIMCIJKKDF
          L4_2 = L4_2.DDADJGEEOHO
          if L3_2 == L4_2 then
            L3_2 = CS
            L3_2 = L3_2.RPG
            L3_2 = L3_2.GameCore
            L3_2 = L3_2.ChallengeMazeConfigExcelTable
            L3_2 = L3_2.GetData
            L4_2 = L2_2
            L3_2 = L3_2(L4_2)
            L4_2 = G
            L4_2 = L4_2.TextmapStatic
            L4_2 = L4_2.GetText
            L5_2 = L3_2.Name
            return L4_2(L5_2)
          else
            L3_2 = nil
            return L3_2
          end
        end
      end
    end
  end
  ::lbl_156::
end
L0_1._get_content_param = L1_1
return L0_1
