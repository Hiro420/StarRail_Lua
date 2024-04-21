local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "UIColorUtils"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = nil
  L2_2 = G
  L2_2 = L2_2.StrExt
  L2_2 = L2_2.IsNullOrEmpty
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = L0_1.COLOR_CACHE
    L1_2 = L2_2[A0_2]
    if L1_2 == nil then
      L2_2 = CS
      L2_2 = L2_2.UnityEngine
      L2_2 = L2_2.ColorUtility
      L2_2 = L2_2.TryParseHtmlString
      L3_2 = A0_2
      L2_2, L3_2 = L2_2(L3_2)
      L1_2 = L3_2
      _ = L2_2
      if L1_2 == nil then
        L1_2 = L0_1.DEFAULT_COLOR_RESULT
      end
      L2_2 = L0_1.COLOR_CACHE
      L2_2[A0_2] = L1_2
    end
    return L1_2
  end
  L2_2 = L0_1.DEFAULT_COLOR_RESULT
  return L2_2
end
L0_1.GetColor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = nil
  L3_2 = G
  L3_2 = L3_2.StrExt
  L3_2 = L3_2.IsNullOrEmpty
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.ColorUtility
    L3_2 = L3_2.TryParseHtmlString
    L4_2 = A0_2
    L3_2, L4_2 = L3_2(L4_2)
    L2_2 = L4_2
    _ = L3_2
  else
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.ColorUtility
    L3_2 = L3_2.TryParseHtmlString
    L4_2 = L0_1.DEFAULT_COLOR
    L3_2, L4_2 = L3_2(L4_2)
    L2_2 = L4_2
    _ = L3_2
  end
  L2_2.a = A1_2
  return L2_2
end
L0_1.GetColorWithAlpha = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = "#DEC288"
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueTalkColorType
  L2_2 = L2_2.Purple
  if A0_2 == L2_2 then
    L1_2 = "#837db3"
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.RogueTalkColorType
    L2_2 = L2_2.Yellow
    if A0_2 == L2_2 then
      L1_2 = "#b39e7d"
    else
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.RogueTalkColorType
      L2_2 = L2_2.Blue
      if A0_2 == L2_2 then
        L2_2 = CS
        L2_2 = L2_2.UnityEngine
        L2_2 = L2_2.Color
        L2_2 = L2_2.blue
        return L2_2
      else
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.GameCore
        L2_2 = L2_2.RogueTalkColorType
        L2_2 = L2_2.Green
        if A0_2 == L2_2 then
          L1_2 = "#a0a0a0"
        else
          L2_2 = CS
          L2_2 = L2_2.RPG
          L2_2 = L2_2.GameCore
          L2_2 = L2_2.RogueTalkColorType
          L2_2 = L2_2.Pink
          if A0_2 == L2_2 then
            L1_2 = "#b37d8c"
          end
        end
      end
    end
  end
  L2_2 = L0_1.GetColor
  L3_2 = L1_2
  return L2_2(L3_2)
end
L0_1.GetColorInRogueTalkType = L1_1
L0_1.DEFAULT_COLOR = "#333333"
L1_1 = CS
L1_1 = L1_1.UnityEngine
L1_1 = L1_1.ColorUtility
L1_1 = L1_1.TryParseHtmlString
L2_1 = L0_1.DEFAULT_COLOR
L1_1, L2_1 = L1_1(L2_1)
L0_1.DEFAULT_COLOR_RESULT = L2_1
L0_1.DEFAULT_COLOR_VALID = L1_1
L1_1 = {}
L0_1.COLOR_CACHE = L1_1
return L0_1
