local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "BattleUIUtils"
L0_1 = L0_1(L1_1)
L1_1 = 0.4
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.EnumStatusType
L2_1 = L2_1.Buff
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.EnumStatusType
L3_1 = L3_1.Debuff
L4_1 = 2.8
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A0_2 then
    L2_2 = A0_2.materialForRendering
    if L2_2 then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L2_2 = A0_2.materialForRendering
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_GamePhaseManager
  L4_2 = L3_2
  L3_2 = L3_2.GetCurrentPhase
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L5_2 = L3_2
  L4_2 = L3_2.LevelCaptureFrame
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.CustomRP
  L6_2 = L6_2.FrameCapture
  L6_2 = L6_2.CaptureType
  L6_2 = L6_2.Game
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.LevelDirector
  L7_2 = L7_2.CaptureUsage
  L7_2 = L7_2.BattleResTransit
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.CustomRP
  L4_2 = L4_2.FrameCapture
  L5_2 = L4_2
  L4_2 = L4_2.GetTarget
  L4_2 = L4_2(L5_2)
  A0_2.texture = L4_2
  L5_2 = 1
  L6_2 = 0
  if A1_2 then
    L7_2 = A1_2.Transparency
    L5_2 = L7_2 or L5_2
    if not L7_2 then
    end
    L7_2 = A1_2.OuterState
    L6_2 = L7_2 or L6_2
    if not L7_2 then
    end
  end
  L8_2 = L2_2
  L7_2 = L2_2.SetFloat
  L9_2 = "_Transparency"
  L10_2 = L5_2
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = L2_2
  L7_2 = L2_2.SetFloat
  L9_2 = "_OuterState"
  L10_2 = L6_2
  L7_2(L8_2, L9_2, L10_2)
end
L0_1.set_screen_shot_bg = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = {}
  if not A0_2 then
    L4_2 = result
    return L4_2
  end
  L5_2 = A0_2
  L4_2 = A0_2.GetModifierCount
  L4_2 = L4_2(L5_2)
  L5_2 = 0
  L6_2 = L4_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L10_2 = A0_2
    L9_2 = A0_2.GetModifierByIndex
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 ~= nil then
      L10_2 = L9_2.IsBlocking
      if not L10_2 then
        L10_2 = CS
        L10_2 = L10_2.RPG
        L10_2 = L10_2.GameCore
        L10_2 = L10_2.StatusExcelTable
        L10_2 = L10_2.GetByModifierName
        L11_2 = L9_2.KeyForStatusConfig
        L10_2 = L10_2(L11_2)
        if L10_2 then
          L11_2 = L10_2.StatusType
          L12_2 = L2_1
          if L11_2 == L12_2 then
            L11_2 = table
            L11_2 = L11_2.insert
            L12_2 = L1_2
            L13_2 = L9_2
            L11_2(L12_2, L13_2)
          else
            L11_2 = L10_2.StatusType
            L12_2 = L3_1
            if L11_2 == L12_2 then
              L11_2 = table
              L11_2 = L11_2.insert
              L12_2 = L2_2
              L13_2 = L9_2
              L11_2(L12_2, L13_2)
            else
              L11_2 = table
              L11_2 = L11_2.insert
              L12_2 = L3_2
              L13_2 = L9_2
              L11_2(L12_2, L13_2)
            end
          end
        end
      end
    end
  end
  L5_2 = L0_1.sort_buff_list
  L6_2 = L1_2
  L5_2(L6_2)
  L5_2 = L0_1.sort_buff_list
  L6_2 = L2_2
  L5_2(L6_2)
  L5_2 = L0_1.sort_buff_list
  L6_2 = L3_2
  L5_2(L6_2)
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = L3_2
  return L5_2, L6_2, L7_2
end
L0_1.get_sorted_buff_list = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 == nil then
    return
  end
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L3_3 = A0_3
    L2_3 = A0_3.GetModifierConfig
    L2_3 = L2_3(L3_3)
    L4_3 = A1_3
    L3_3 = A1_3.GetModifierConfig
    L3_3 = L3_3(L4_3)
    L4_3 = L2_3.Priority
    L5_3 = L3_3.Priority
    if L4_3 ~= L5_3 then
      L4_3 = L3_3.Priority
      L5_3 = L2_3.Priority
      L4_3 = L4_3 < L5_3
      return L4_3
    end
    L4_3 = A0_3.UIIndex
    L5_3 = A1_3.UIIndex
    L4_3 = L4_3 > L5_3
    return L4_3
  end
  L1_2(L2_2, L3_2)
  return A0_2
end
L0_1.sort_buff_list = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  L2_2 = A0_2.ExtraEffectIDList
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ExtraEffectExcelTable
  L4_2 = 0
  L5_2 = L2_2.Length
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L2_2[L7_2]
    L9_2 = L3_2.GetData
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    L10_2 = {}
    L11_2 = L9_2.ExtraEffectName
    L10_2.Name = L11_2
    L11_2 = L9_2.ExtraEffectDesc
    L10_2.Desc = L11_2
    L11_2 = table
    L11_2 = L11_2.pack
    L12_2 = G
    L12_2 = L12_2.UITextUtils
    L12_2 = L12_2.GetSkillParams
    L13_2 = L9_2.DescParamList
    L12_2, L13_2 = L12_2(L13_2)
    L11_2 = L11_2(L12_2, L13_2)
    L10_2.DescParam = L11_2
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = L1_2
    L13_2 = L10_2
    L11_2(L12_2, L13_2)
  end
  return L1_2
end
L0_1.get_proper_noun_table_from_avatar_skill = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.ExtraEffectIDList
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.ExtraEffectExcelTable
    L10_2 = L7_2.ExtraEffectIDList
    if L10_2 then
      L10_2 = 0
      L11_2 = L8_2.Length
      L11_2 = L11_2 - 1
      L12_2 = 1
      for L13_2 = L10_2, L11_2, L12_2 do
        L14_2 = L8_2[L13_2]
        L15_2 = L9_2.GetData
        L16_2 = L14_2
        L15_2 = L15_2(L16_2)
        L16_2 = L1_2[L14_2]
        if L16_2 == nil then
          L16_2 = {}
          L17_2 = L15_2.ExtraEffectName
          L16_2.Name = L17_2
          L17_2 = L15_2.ExtraEffectDesc
          L16_2.Desc = L17_2
          L17_2 = table
          L17_2 = L17_2.pack
          L18_2 = G
          L18_2 = L18_2.UITextUtils
          L18_2 = L18_2.GetSkillParams
          L19_2 = L15_2.DescParamList
          L18_2, L19_2 = L18_2(L19_2)
          L17_2 = L17_2(L18_2, L19_2)
          L16_2.DescParam = L17_2
          L1_2[L14_2] = L16_2
          L17_2 = table
          L17_2 = L17_2.insert
          L18_2 = L2_2
          L19_2 = L16_2
          L17_2(L18_2, L19_2)
        end
      end
    end
  end
  return L2_2
end
L0_1.get_proper_noun_table_from_avatar_skill_table = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = A0_2.DamageTypeResistance
  L3_2 = 0
  L4_2 = L2_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    L7_2 = L7_2.Value
    L7_2 = L7_2.RawValue
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.FixPoint
    L8_2 = L8_2.One
    L8_2 = L8_2.RawValue
    L7_2 = L7_2 / L8_2
    L8_2 = L1_1
    if L7_2 > L8_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = L2_2[L6_2]
      L8_2(L9_2, L10_2)
    end
  end
  return L1_2
end
L0_1.get_type_resist_data_table = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = A0_2.DebuffResist
  L3_2 = 0
  L4_2 = L2_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    L7_2 = L7_2.Value
    L7_2 = L7_2.RawValue
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.FixPoint
    L8_2 = L8_2.One
    L8_2 = L8_2.RawValue
    L7_2 = L7_2 / L8_2
    L8_2 = L1_1
    if L7_2 > L8_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = L2_2[L6_2]
      L8_2(L9_2, L10_2)
    end
  end
  return L1_2
end
L0_1.get_status_resist_data_table = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 <= 0 then
    L2_2 = 0
    return L2_2
  end
  L2_2 = math
  L2_2 = L2_2.max
  L3_2 = A1_2
  L4_2 = L4_1
  L4_2 = L4_2 / A0_2
  return L2_2(L3_2, L4_2)
end
L0_1.get_hp_bar_min_clamped_value = L5_1
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_GamePhaseManager
  L1_2 = L0_2
  L0_2 = L0_2.GetCurrentPhase
  L0_2 = L0_2(L1_2)
  L1_2 = L0_2.BattleInstanceRef
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = L0_2.BattleInstanceRef
  L1_2 = L1_2.GameWorldRef
  L2_2 = L1_2.IsPause
  return L2_2
end
L0_1.is_battle_pause = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.UtilEngineWrap
    L2_2 = L2_2.IsCsType
    L3_2 = L1_2
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.BattleGamePhase
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L2_2 = G
      L2_2 = L2_2.UtilEngineWrap
      L2_2 = L2_2.IsCsType
      L3_2 = L1_2
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.ReplayGamePhase
      L2_2 = L2_2(L3_2, L4_2)
      if not L2_2 then
        goto lbl_61
      end
    end
    L2_2 = L1_2.BattleInstanceRef
    if L2_2 ~= nil then
      L2_2 = L1_2.BattleInstanceRef
      L2_2 = L2_2.GameWorldRef
      if L2_2 ~= nil then
        L2_2 = L1_2.BattleInstanceRef
        L2_2 = L2_2.GameWorldRef
        L2_2 = L2_2.TimeScaleStack
        L3_2 = L2_2
        L2_2 = L2_2.PublicPause
        L4_2 = A0_2
        L2_2(L3_2, L4_2)
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.Client
        L2_2 = L2_2.GlobalVars
        L2_2 = L2_2.s_UIManager
        L3_2 = L2_2
        L2_2 = L2_2.SetAudioPause
        L4_2 = A0_2
        L2_2(L3_2, L4_2)
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.Client
        L2_2 = L2_2.GlobalVars
        L2_2 = L2_2.s_UIManager
        L3_2 = L2_2
        L2_2 = L2_2.SetForbidTaskOpenScreenTransfer
        L4_2 = A0_2
        L2_2(L3_2, L4_2)
      end
    end
  end
  ::lbl_61::
end
L0_1.set_battle_pause = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = {}
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_GamePhaseManager
  L4_2 = L3_2
  L3_2 = L3_2.GetCurrentPhase
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.BattleInstanceRef
  if not L3_2 then
    return L2_2
  end
  L4_2 = L3_2.GameWorldRef
  L4_2 = L4_2.EntityManagerRef
  L4_2 = L4_2.LevelEntity
  L6_2 = L4_2
  L5_2 = L4_2.GetComponent
  L7_2 = typeof
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.GameCore
  L8_2 = L8_2.LevelDataComponent
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L7_2(L8_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  if L5_2 then
    L6_2 = L5_2.BattleTargetList
    if L6_2 then
      goto lbl_30
    end
  end
  do return L2_2 end
  ::lbl_30::
  L6_2 = L5_2.BattleTargetList
  L7_2 = L6_2
  L6_2 = L6_2.GetEnumerator
  L6_2 = L6_2(L7_2)
  while true do
    L8_2 = L6_2
    L7_2 = L6_2.MoveNext
    L7_2 = L7_2(L8_2)
    if not L7_2 then
      break
    end
    L7_2 = L6_2.Current
    L8_2 = L7_2.Key
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.BattleTargetConfigExcelTable
    L9_2 = L9_2.GetData
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if A1_2 ~= nil then
      L10_2 = L9_2.Type
      if L10_2 ~= A1_2 then
        goto lbl_107
      end
    end
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.GameCore
    L10_2 = L10_2.FixPoint
    L10_2 = L10_2.FloorToInt
    L11_2 = L7_2.Value
    L10_2 = L10_2(L11_2)
    L11_2 = L9_2.TargetParam
    L12_2 = L9_2.MultiTarget
    if L12_2 then
      L12_2 = L9_2.MultiTarget
      L12_2 = L12_2.Length
      if 0 < L12_2 then
        if A0_2 then
          L12_2 = 0
          L13_2 = L9_2.MultiTarget
          L13_2 = L13_2.Length
          L13_2 = L13_2 - 1
          L14_2 = 1
          for L15_2 = L12_2, L13_2, L14_2 do
            L16_2 = L9_2.MultiTarget
            L16_2 = L16_2[L15_2]
            L17_2 = L0_1.create_battle_target_data
            L18_2 = L8_2
            L19_2 = L10_2
            L20_2 = L16_2
            L17_2 = L17_2(L18_2, L19_2, L20_2)
            L18_2 = table
            L18_2 = L18_2.insert
            L19_2 = L2_2
            L20_2 = L17_2
            L18_2(L19_2, L20_2)
          end
        else
          L12_2 = CS
          L12_2 = L12_2.RPG
          L12_2 = L12_2.Client
          L12_2 = L12_2.BattleUIUtils
          L12_2 = L12_2.GetCurBattleSubTarget
          L13_2 = L8_2
          L14_2 = L10_2
          L12_2 = L12_2(L13_2, L14_2)
          L11_2 = L12_2
        end
      end
    end
    L12_2 = L0_1.create_battle_target_data
    L13_2 = L8_2
    L14_2 = L10_2
    L15_2 = L11_2
    L12_2 = L12_2(L13_2, L14_2, L15_2)
    L13_2 = table
    L13_2 = L13_2.insert
    L14_2 = L2_2
    L15_2 = L12_2
    L13_2(L14_2, L15_2)
    ::lbl_107::
  end
  return L2_2
end
L0_1.get_battle_targets = L5_1
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_GamePhaseManager
  L1_2 = L0_2
  L0_2 = L0_2.GetCurrentPhase
  L0_2 = L0_2(L1_2)
  L0_2 = L0_2.BattleInstanceRef
  if not L0_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = L0_2.BattleLineupDataRef
  L1_2 = L1_2.Context
  L1_2 = L1_2.StageConfig
  L2_2 = L1_2.StageType
  return L2_2
end
L0_1.get_battle_stage_type = L5_1
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_GamePhaseManager
  L1_2 = L0_2
  L0_2 = L0_2.GetCurrentPhase
  L0_2 = L0_2(L1_2)
  L0_2 = L0_2.BattleInstanceRef
  if not L0_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = L0_2.GameWorldRef
  L1_2 = L1_2.EntityManagerRef
  L1_2 = L1_2.LevelEntity
  L3_2 = L1_2
  L2_2 = L1_2.GetComponent
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.LevelDataComponent
  L4_2, L5_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  return L2_2
end
L0_1.get_level_data_component = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = {}
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.BattleTargetConfigExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L3_2.TargetID = A0_2
  L5_2 = L4_2.TargetName
  L3_2.Desc = L5_2
  L5_2 = L4_2.TargetNameSimple
  L3_2.SimpleDesc = L5_2
  L5_2 = L4_2.HintStep
  L3_2.HintStep = L5_2
  L5_2 = A2_2 or L5_2
  if not A2_2 then
    L5_2 = L4_2.TargetParam
  end
  L3_2.TotalProgress = L5_2
  L3_2.CurrentProgress = A1_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.BattleUIUtils
  L5_2 = L5_2.GetBattleTargetStatus
  L6_2 = L4_2.ParamType
  L7_2 = L3_2.CurrentProgress
  L8_2 = L3_2.TotalProgress
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L3_2.Status = L5_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.BattleUIUtils
  L5_2 = L5_2.IsFailProgress
  L6_2 = L4_2.ParamType
  L5_2 = L5_2(L6_2)
  L3_2.IsFailProgress = L5_2
  L5_2 = L4_2.IsShowProgress
  L5_2 = L5_2 ~= 0
  L3_2.ShouldShowProgress = L5_2
  L5_2 = L4_2.IsFixableHeight
  L3_2.IsFixHeight = L5_2
  return L3_2
end
L0_1.create_battle_target_data = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.BattleInstanceRef
  if not L2_2 then
    return L1_2
  end
  L3_2 = L2_2.GameWorldRef
  L3_2 = L3_2.EntityManagerRef
  L3_2 = L3_2.LevelEntity
  L5_2 = L3_2
  L4_2 = L3_2.GetComponent
  L6_2 = typeof
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.LevelDataComponent
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  if L4_2 then
    L5_2 = L4_2.BattleConditionList
    if L5_2 then
      goto lbl_30
    end
  end
  do return L1_2 end
  ::lbl_30::
  L5_2 = L4_2.BattleConditionList
  L6_2 = L5_2
  L5_2 = L5_2.GetEnumerator
  L5_2 = L5_2(L6_2)
  while true do
    L7_2 = L5_2
    L6_2 = L5_2.MoveNext
    L6_2 = L6_2(L7_2)
    if not L6_2 then
      break
    end
    L6_2 = L5_2.Current
    L7_2 = L0_1._create_battle_condition_data
    L8_2 = L6_2.Key
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.FixPoint
    L9_2 = L9_2.FloorToInt
    L10_2 = L6_2.Value
    L9_2 = L9_2(L10_2)
    L10_2 = A0_2
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    if L7_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  return L1_2
end
L0_1.get_battle_condition_list = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.BattleConditionConfigExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.WinOrLose
  if L4_2 ~= A2_2 then
    L4_2 = nil
    return L4_2
  end
  L4_2 = {}
  L4_2.ConditionID = A0_2
  L5_2 = L3_2.ConditionDes
  L4_2.Desc = L5_2
  L5_2 = L3_2.TargetParam
  L4_2.TotalProgress = L5_2
  L4_2.CurrentProgress = A1_2
  L5_2 = L3_2.IsShowProgress
  L5_2 = L5_2 == 1
  L4_2.ShouldShowProgress = L5_2
  return L4_2
end
L0_1._create_battle_condition_data = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MazeBuffExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2.ID
  L4_2 = A0_2.Level
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L3_2 = L2_2.InBattleBindingType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MazeBuffInBattleBindingType
  L4_2 = L4_2.StageAbility
  if L3_2 ~= L4_2 then
    L3_2 = L2_2.InBattleBindingType
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.MazeBuffInBattleBindingType
    L4_2 = L4_2.StageAbilityBeforeCharacterBorn
    if L3_2 ~= L4_2 then
      L3_2 = L2_2.InBattleBindingType
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.MazeBuffInBattleBindingType
      L4_2 = L4_2.StageAbilityAfterCharacterBorn
      if L3_2 ~= L4_2 then
        goto lbl_47
      end
    end
  end
  L3_2 = G
  L3_2 = L3_2.UITextUtils
  L3_2 = L3_2.GetSkillParams
  L4_2 = G
  L4_2 = L4_2.BattleUIUtils
  L4_2 = L4_2.get_maze_buff_params_dynamic
  L5_2 = A0_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2(L5_2)
  do return L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2) end
  ::lbl_47::
  L3_2 = 0
  L4_2 = L2_2.ParamList
  L4_2 = L4_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = "#ADF_"
    L8_2 = L6_2 + 1
    L7_2 = L7_2 .. L8_2
    L8_2 = A0_2.ExtraParamMap
    if L8_2 then
      L8_2 = A0_2.ExtraParamMap
      L9_2 = L8_2
      L8_2 = L8_2.ContainsKey
      L10_2 = L7_2
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 then
        L8_2 = A0_2.ExtraParamMap
        L9_2 = L8_2
        L8_2 = L8_2.get_Item
        L10_2 = L7_2
        L8_2 = L8_2(L9_2, L10_2)
        L9_2 = table
        L9_2 = L9_2.insert
        L10_2 = L1_2
        L11_2 = L8_2
        L9_2(L10_2, L11_2)
    end
    else
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = L2_2.ParamList
      L10_2 = L10_2[L6_2]
      L8_2(L9_2, L10_2)
    end
  end
  L3_2 = unpack
  L4_2 = L1_2
  return L3_2(L4_2)
end
L0_1.get_maze_buff_params = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.BattleInstanceRef
  L2_2 = L1_2.GameWorldRef
  L2_2 = L2_2.EntityManagerRef
  L2_2 = L2_2.LevelEntity
  L4_2 = L2_2
  L3_2 = L2_2.GetComponent
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.LevelDataComponent
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  if not L3_2 then
    L4_2 = {}
    return L4_2
  end
  L5_2 = L3_2
  L4_2 = L3_2.EvaluateStageMazeBuffDescParam
  L6_2 = A0_2.ID
  L7_2 = A0_2.Level
  return L4_2(L5_2, L6_2, L7_2)
end
L0_1.get_maze_buff_params_dynamic = L5_1
return L0_1
