local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ScreenTransferEntry"
L0_1 = L0_1(L1_1)
L1_1 = {}
L1_1.Opening = 1
L1_1.Keep = 2
L1_1.Closing = 3
L1_1.Idle = 9
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueClientExcelTable
L2_1 = L2_1.GetData
L3_1 = "ScreenTransfer_TextTransferDuration"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.FloatValue
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.ConstValueClientExcelTable
L3_1 = L3_1.GetData
L4_1 = "ScreenTransfer_MaskTransferDuration_WithText"
L3_1 = L3_1(L4_1)
L3_1 = L3_1.Value
L3_1 = L3_1.FloatValue
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.ConstValueClientExcelTable
L4_1 = L4_1.GetData
L5_1 = "ScreenTransfer_Gap_BetweenTextAndMask"
L4_1 = L4_1(L5_1)
L4_1 = L4_1.Value
L4_1 = L4_1.FloatValue
L5_1 = L4_1 / L3_1
function L6_1(A0_2)
  local L1_2
  A0_2._config_num = 0
  A0_2.wait_start = false
end
L0_1.ctor = L6_1
function L6_1(A0_2)
  local L1_2
  A0_2._config = nil
end
L0_1.dtor = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._is_running
  if not L2_2 then
    return
  end
  L2_2 = A0_2._transfer_mode
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ScreenTransferMode
  L3_2 = L3_2.SwitchOut
  if L2_2 == L3_2 then
    L2_2 = A0_2._config
    L2_2 = L2_2.TextEnabled
    if not L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._tick_opening
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    else
      L3_2 = A0_2
      L2_2 = A0_2._tick_opening_with_text
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  else
    L2_2 = A0_2._transfer_mode
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ScreenTransferMode
    L3_2 = L3_2.SwitchIn
    if L2_2 == L3_2 then
      L2_2 = A0_2._config
      L2_2 = L2_2.TextEnabled
      if not L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2._tick_closing
        L4_2 = A1_2
        L2_2(L3_2, L4_2)
      else
        L3_2 = A0_2
        L2_2 = A0_2._tick_closing_with_text
        L4_2 = A1_2
        L2_2(L3_2, L4_2)
      end
    else
      L2_2 = A0_2._transfer_mode
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.ScreenTransferMode
      L3_2 = L3_2.FullTransfer
      if L2_2 == L3_2 then
        L3_2 = A0_2
        L2_2 = A0_2._tick_full
        L4_2 = A1_2
        L2_2(L3_2, L4_2)
      else
        L2_2 = A0_2._transfer_mode
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.GameCore
        L3_2 = L3_2.ScreenTransferMode
        L3_2 = L3_2.DirectlySet
        if L2_2 == L3_2 then
        end
      end
    end
  end
end
L0_1.tick = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2.seq_id = A2_2
  L3_2 = A0_2._config_num
  L3_2 = L3_2 + 1
  A0_2._config_num = L3_2
  A0_2.wait_start = true
  A0_2.is_open_finished = false
  A0_2.is_close_finished = false
  L3_2 = A0_2._transfer_mode
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ScreenTransferMode
  L4_2 = L4_2.SwitchOut
  if L3_2 == L4_2 then
    L3_2 = A0_2._is_running
    if L3_2 then
      A0_2.is_open_finished = true
    end
  end
  A0_2._config = A1_2
  L3_2 = A1_2.Mode
  A0_2._transfer_mode = L3_2
  L3_2 = A1_2.CustomTime
  A0_2._transfer_duration = L3_2
  L3_2 = A0_2._config
  L3_2 = L3_2.TextEnabled
  if L3_2 then
    L3_2 = A0_2._transfer_duration
    if 0 < L3_2 then
      L3_2 = L3_1
      A0_2._transfer_duration = L3_2
    end
  end
  L3_2 = A0_2._transfer_duration
  if L3_2 < 0 then
    A0_2._transfer_duration = 0
  end
  L3_2 = A1_2.KeepDisplay
  A0_2.is_keep_display = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._set_mask_alpha
  L5_2 = 0
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_text_alpha
  L5_2 = 0
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._log_new_config
  L3_2(L4_2)
end
L0_1.set_config = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.is_keep_display
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._set_mask_alpha
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_text_alpha
  L3_2 = 0
  L1_2(L2_2, L3_2)
  A0_2._is_running = false
  A0_2._tick_timer = 0
  A0_2.is_open_finished = false
  A0_2.is_close_finished = true
  L1_2 = L1_1.Idle
  A0_2._full_step = L1_2
end
L0_1.on_adventure_phase_end = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = UNITY_EDITOR
  if not L1_2 then
    return
  end
  L1_2 = A0_2._transfer_mode
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ScreenTransferMode
  L2_2 = L2_2.FullTransfer
  if L1_2 == L2_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogFormat
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.LogTag
    L2_2 = L2_2.Performance
    L3_2 = "[{7}]ScreenTransferLua add config reason:[{0}] seq:[{1}] mode:[{2}] duration:[{3}][{4}][{5}] keepDisplay:[{6}]"
    L4_2 = tostring
    L5_2 = A0_2._config
    L5_2 = L5_2.Reason
    L4_2 = L4_2(L5_2)
    L5_2 = tostring
    L6_2 = A0_2.seq_id
    L5_2 = L5_2(L6_2)
    L6_2 = tostring
    L7_2 = A0_2._config
    L7_2 = L7_2.Mode
    L6_2 = L6_2(L7_2)
    L7_2 = tostring
    L8_2 = A0_2._config
    L8_2 = L8_2.TransferFullDuration
    L8_2 = L8_2.PrevDuration
    L7_2 = L7_2(L8_2)
    L8_2 = tostring
    L9_2 = A0_2._config
    L9_2 = L9_2.TransferFullDuration
    L9_2 = L9_2.KeepDuration
    L8_2 = L8_2(L9_2)
    L9_2 = tostring
    L10_2 = A0_2._config
    L10_2 = L10_2.TransferFullDuration
    L10_2 = L10_2.PostDuration
    L9_2 = L9_2(L10_2)
    L10_2 = tostring
    L11_2 = A0_2.is_keep_display
    L10_2 = L10_2(L11_2)
    L11_2 = tostring
    L12_2 = CS
    L12_2 = L12_2.UnityEngine
    L12_2 = L12_2.Time
    L12_2 = L12_2.frameCount
    L11_2, L12_2 = L11_2(L12_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  else
    L1_2 = A0_2._transfer_mode
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ScreenTransferMode
    L2_2 = L2_2.DirectlySet
    if L1_2 == L2_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.SuperDebug
      L1_2 = L1_2.LogFormat
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.LogTag
      L2_2 = L2_2.Performance
      L3_2 = "[{6}]ScreenTransferLua add config reason:[{0}] seq:[{1}] mode:[{2}] directAlpha:[{3}] keepDisplay:[{4}] textEnable:[{5}]"
      L4_2 = tostring
      L5_2 = A0_2._config
      L5_2 = L5_2.Reason
      L4_2 = L4_2(L5_2)
      L5_2 = tostring
      L6_2 = A0_2.seq_id
      L5_2 = L5_2(L6_2)
      L6_2 = tostring
      L7_2 = A0_2._config
      L7_2 = L7_2.Mode
      L6_2 = L6_2(L7_2)
      L7_2 = tostring
      L8_2 = A0_2._config
      L8_2 = L8_2.MaskAlpha
      L7_2 = L7_2(L8_2)
      L8_2 = tostring
      L9_2 = A0_2.is_keep_display
      L8_2 = L8_2(L9_2)
      L9_2 = tostring
      L10_2 = A0_2._config
      L10_2 = L10_2.TextEnabled
      L9_2 = L9_2(L10_2)
      L10_2 = tostring
      L11_2 = CS
      L11_2 = L11_2.UnityEngine
      L11_2 = L11_2.Time
      L11_2 = L11_2.frameCount
      L10_2, L11_2, L12_2 = L10_2(L11_2)
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    else
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.SuperDebug
      L1_2 = L1_2.LogFormat
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.LogTag
      L2_2 = L2_2.Performance
      L3_2 = "[{6}]ScreenTransferLua add config reason:[{0}] seq:[{1}] mode:[{2}] duration:[{3}] keepDisplay:[{4}] textEnable:[{5}]"
      L4_2 = tostring
      L5_2 = A0_2._config
      L5_2 = L5_2.Reason
      L4_2 = L4_2(L5_2)
      L5_2 = tostring
      L6_2 = A0_2.seq_id
      L5_2 = L5_2(L6_2)
      L6_2 = tostring
      L7_2 = A0_2._config
      L7_2 = L7_2.Mode
      L6_2 = L6_2(L7_2)
      L7_2 = tostring
      L8_2 = A0_2._config
      L8_2 = L8_2.CustomTime
      L7_2 = L7_2(L8_2)
      L8_2 = tostring
      L9_2 = A0_2.is_keep_display
      L8_2 = L8_2(L9_2)
      L9_2 = tostring
      L10_2 = A0_2._config
      L10_2 = L10_2.TextEnabled
      L9_2 = L9_2(L10_2)
      L10_2 = tostring
      L11_2 = CS
      L11_2 = L11_2.UnityEngine
      L11_2 = L11_2.Time
      L11_2 = L11_2.frameCount
      L10_2, L11_2, L12_2 = L10_2(L11_2)
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    end
  end
end
L0_1._log_new_config = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2.wait_start = false
  L2_2 = A0_2._transfer_mode
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ScreenTransferMode
  L3_2 = L3_2.SwitchOut
  if L2_2 == L3_2 then
    L2_2 = A0_2._config
    L2_2 = L2_2.TextEnabled
    if not L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._start_opening
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    else
      L3_2 = A0_2
      L2_2 = A0_2._start_opening_with_text
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  else
    L2_2 = A0_2._transfer_mode
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ScreenTransferMode
    L3_2 = L3_2.SwitchIn
    if L2_2 == L3_2 then
      L2_2 = A0_2._config
      L2_2 = L2_2.TextEnabled
      if not L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2._start_closing
        L4_2 = A1_2
        L2_2(L3_2, L4_2)
      else
        L3_2 = A0_2
        L2_2 = A0_2._start_closing_with_text
        L4_2 = A1_2
        L2_2(L3_2, L4_2)
      end
    else
      L2_2 = A0_2._transfer_mode
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.ScreenTransferMode
      L3_2 = L3_2.FullTransfer
      if L2_2 == L3_2 then
        L3_2 = A0_2
        L2_2 = A0_2._start_full
        L4_2 = A1_2
        L2_2(L3_2, L4_2)
      else
        L2_2 = A0_2._transfer_mode
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.GameCore
        L3_2 = L3_2.ScreenTransferMode
        L3_2 = L3_2.DirectlySet
        if L2_2 == L3_2 then
          L3_2 = A0_2
          L2_2 = A0_2._start_directly_set
          L2_2(L3_2)
        end
      end
    end
  end
end
L0_1.start = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._from_alpha = 0
  A0_2._to_alpha = 1
  L2_2 = A0_2._config_num
  if L2_2 <= 1 then
    A1_2 = 0
  end
  L2_2 = A0_2._from_alpha
  L2_2 = A1_2 - L2_2
  L3_2 = A0_2._to_alpha
  L4_2 = A0_2._from_alpha
  L3_2 = L3_2 - L4_2
  L2_2 = L2_2 / L3_2
  L3_2 = A0_2._transfer_duration
  L2_2 = L2_2 * L3_2
  A0_2._tick_timer = L2_2
  L2_2 = A0_2._transfer_duration
  A0_2._transfer_end_time = L2_2
  A0_2._is_running = true
  L2_2 = A0_2._transfer_duration
  if 0 < L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._set_mask_alpha
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._set_mask_alpha
    L4_2 = A0_2._to_alpha
    L2_2(L3_2, L4_2)
  end
end
L0_1._start_opening = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._tick_timer
  L2_2 = L2_2 + A1_2
  A0_2._tick_timer = L2_2
  L2_2 = A0_2._tick_timer
  L3_2 = A0_2._transfer_end_time
  if L2_2 < L3_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.MMathf
    L2_2 = L2_2.Lerp
    L3_2 = A0_2._from_alpha
    L4_2 = A0_2._to_alpha
    L5_2 = A0_2._tick_timer
    L6_2 = A0_2._transfer_duration
    L5_2 = L5_2 / L6_2
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._set_mask_alpha
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._set_mask_alpha
    L4_2 = A0_2._to_alpha
    L2_2(L3_2, L4_2)
    A0_2._is_running = false
    A0_2._tick_timer = 0
    A0_2.is_open_finished = true
  end
end
L0_1._tick_opening = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._start_opening
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = L5_1
  L3_2 = A0_2._from_alpha
  L2_2 = L2_2 - L3_2
  L3_2 = A0_2._to_alpha
  L4_2 = A0_2._from_alpha
  L3_2 = L3_2 - L4_2
  L2_2 = L2_2 / L3_2
  L3_2 = A0_2._transfer_duration
  L2_2 = L2_2 * L3_2
  A0_2._text_start_time = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.MMathf
  L2_2 = L2_2.Max
  L3_2 = A0_2._text_start_time
  L4_2 = A0_2._tick_timer
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._text_start_time = L2_2
  L2_2 = A0_2._text_start_time
  L3_2 = L2_1
  L2_2 = L2_2 + L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.MMathf
  L3_2 = L3_2.Max
  L4_2 = L2_2
  L5_2 = A0_2._transfer_duration
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._transfer_end_time = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._set_text_alpha
  L5_2 = A0_2._from_alpha
  L3_2(L4_2, L5_2)
end
L0_1._start_opening_with_text = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._tick_opening
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.is_open_finished
  if not L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.MMathf
    L2_2 = L2_2.Lerp
    L3_2 = A0_2._from_alpha
    L4_2 = A0_2._to_alpha
    L5_2 = A0_2._tick_timer
    L6_2 = A0_2._text_start_time
    L5_2 = L5_2 - L6_2
    L6_2 = L2_1
    L5_2 = L5_2 / L6_2
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._set_text_alpha
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._set_text_alpha
    L4_2 = A0_2._to_alpha
    L2_2(L3_2, L4_2)
  end
end
L0_1._tick_opening_with_text = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._from_alpha = 1
  A0_2._to_alpha = 0
  L2_2 = A0_2._config_num
  if L2_2 <= 1 then
    A1_2 = 1
  end
  L2_2 = A0_2._from_alpha
  L2_2 = A1_2 - L2_2
  L3_2 = A0_2._to_alpha
  L4_2 = A0_2._from_alpha
  L3_2 = L3_2 - L4_2
  L2_2 = L2_2 / L3_2
  L3_2 = A0_2._transfer_duration
  L2_2 = L2_2 * L3_2
  A0_2._tick_timer = L2_2
  L2_2 = A0_2._transfer_duration
  A0_2._transfer_end_time = L2_2
  A0_2._is_running = true
  L2_2 = A0_2._transfer_duration
  if 0 < L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._set_mask_alpha
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._set_mask_alpha
    L4_2 = A0_2._to_alpha
    L2_2(L3_2, L4_2)
  end
end
L0_1._start_closing = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._tick_timer
  L2_2 = L2_2 + A1_2
  A0_2._tick_timer = L2_2
  L2_2 = A0_2._tick_timer
  L3_2 = A0_2._transfer_end_time
  if L2_2 < L3_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.MMathf
    L2_2 = L2_2.Lerp
    L3_2 = A0_2._from_alpha
    L4_2 = A0_2._to_alpha
    L5_2 = A0_2._tick_timer
    L6_2 = A0_2._transfer_duration
    L5_2 = L5_2 / L6_2
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._set_mask_alpha
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._set_mask_alpha
    L4_2 = A0_2._to_alpha
    L2_2(L3_2, L4_2)
    A0_2._is_running = false
    A0_2._tick_timer = 0
    A0_2.is_close_finished = true
  end
end
L0_1._tick_closing = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._start_closing
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._to_alpha
  L3_2 = L5_1
  L2_2 = L2_2 - L3_2
  L3_2 = A0_2._to_alpha
  L4_2 = A0_2._from_alpha
  L3_2 = L3_2 - L4_2
  L2_2 = L2_2 / L3_2
  L3_2 = A0_2._transfer_duration
  L2_2 = L2_2 * L3_2
  L3_2 = A0_2._transfer_duration
  L3_2 = L3_2 - L2_2
  L4_2 = L2_1
  L3_2 = L3_2 - L4_2
  A0_2._tick_timer = L3_2
  L3_2 = A0_2._tick_timer
  A0_2._text_start_time = L3_2
  L3_2 = A0_2._transfer_duration
  A0_2._transfer_end_time = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._set_text_alpha
  L5_2 = A0_2._from_alpha
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_mask_alpha
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1._start_closing_with_text = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._tick_closing
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.is_close_finished
  if not L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.MMathf
    L2_2 = L2_2.Lerp
    L3_2 = A0_2._from_alpha
    L4_2 = A0_2._to_alpha
    L5_2 = A0_2._tick_timer
    L6_2 = A0_2._text_start_time
    L5_2 = L5_2 - L6_2
    L6_2 = L2_1
    L5_2 = L5_2 / L6_2
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._set_text_alpha
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._set_text_alpha
    L4_2 = A0_2._to_alpha
    L2_2(L3_2, L4_2)
  end
end
L0_1._tick_closing_with_text = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L1_1.Opening
  A0_2._full_step = L2_2
  L2_2 = A0_2._config
  L2_2 = L2_2.TransferFullDuration
  L2_2 = L2_2.PrevDuration
  A0_2._transfer_duration = L2_2
  A0_2._from_alpha = 0
  A0_2._to_alpha = 1
  L2_2 = A0_2._config_num
  if L2_2 <= 1 then
    A1_2 = 0
  end
  L2_2 = A0_2._from_alpha
  L2_2 = A1_2 - L2_2
  L3_2 = A0_2._to_alpha
  L4_2 = A0_2._from_alpha
  L3_2 = L3_2 - L4_2
  L2_2 = L2_2 / L3_2
  L3_2 = A0_2._transfer_duration
  L2_2 = L2_2 * L3_2
  A0_2._tick_timer = L2_2
  A0_2._is_running = true
  L2_2 = A0_2._transfer_duration
  if 0 < L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._set_mask_alpha
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._set_mask_alpha
    L4_2 = A0_2._to_alpha
    L2_2(L3_2, L4_2)
  end
end
L0_1._start_full = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._tick_timer
  L2_2 = L2_2 + A1_2
  A0_2._tick_timer = L2_2
  L2_2 = A0_2._tick_timer
  L3_2 = A0_2._transfer_duration
  if L2_2 < L3_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.MMathf
    L2_2 = L2_2.Lerp
    L3_2 = A0_2._from_alpha
    L4_2 = A0_2._to_alpha
    L5_2 = A0_2._tick_timer
    L6_2 = A0_2._transfer_duration
    L5_2 = L5_2 / L6_2
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._set_mask_alpha
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._set_mask_alpha
    L4_2 = A0_2._to_alpha
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._full_step
    L3_2 = L1_1.Opening
    if L2_2 == L3_2 then
      L2_2 = L1_1.Keep
      A0_2._full_step = L2_2
      A0_2.is_open_finished = true
      A0_2._tick_timer = 0
      L2_2 = A0_2._config
      L2_2 = L2_2.TransferFullDuration
      L2_2 = L2_2.KeepDuration
      A0_2._transfer_duration = L2_2
      A0_2._from_alpha = 1
      A0_2._to_alpha = 1
    else
      L2_2 = A0_2._full_step
      L3_2 = L1_1.Keep
      if L2_2 == L3_2 then
        L2_2 = L1_1.Closing
        A0_2._full_step = L2_2
        A0_2._tick_timer = 0
        L2_2 = A0_2._config
        L2_2 = L2_2.TransferFullDuration
        L2_2 = L2_2.PostDuration
        A0_2._transfer_duration = L2_2
        A0_2._from_alpha = 1
        A0_2._to_alpha = 0
      else
        L2_2 = A0_2._full_step
        L3_2 = L1_1.Closing
        if L2_2 == L3_2 then
          L2_2 = L1_1.Idle
          A0_2._full_step = L2_2
          A0_2._is_running = false
          A0_2.is_close_finished = true
          A0_2._tick_timer = 0
        end
      end
    end
  end
end
L0_1._tick_full = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._is_running = false
  L1_2 = A0_2._config
  L1_2 = L1_2.MaskAlpha
  if L1_2 <= 0 then
    A0_2.is_close_finished = true
  end
  L2_2 = A0_2
  L1_2 = A0_2._set_mask_alpha
  L3_2 = A0_2._config
  L3_2 = L3_2.MaskAlpha
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_text_alpha
  L3_2 = A0_2._config
  L3_2 = L3_2.TextAlpha
  L1_2(L2_2, L3_2)
end
L0_1._start_directly_set = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.MMathf
  L2_2 = L2_2.Clamp01
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2.mask_alpha = L2_2
end
L0_1._set_mask_alpha = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.MMathf
  L2_2 = L2_2.Clamp01
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2.text_alpha = L2_2
end
L0_1._set_text_alpha = L6_1
return L0_1
