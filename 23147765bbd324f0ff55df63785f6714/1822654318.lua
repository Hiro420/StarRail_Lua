local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "UIFrameCaptureUtils"
L0_1 = L0_1(L1_1)
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_GamePhaseManager
  L1_2 = L0_2
  L0_2 = L0_2.GetCurrentPhase
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L2_2 = L0_2
    L1_2 = L0_2.GetEnvironmentSystem
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L3_2 = L1_2
      L2_2 = L1_2.GetFrameCaptureManager
      return L2_2(L3_2)
    end
  end
end
L0_1.get_frame_capture_manager = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = L0_1.get_frame_capture_manager
  L3_2 = L3_2()
  if L3_2 then
    L5_2 = L3_2
    L4_2 = L3_2.ReleaseCaptureFrame
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
    L5_2 = L3_2
    L4_2 = L3_2.CaptureFrame
    L6_2 = A0_2
    L7_2 = A1_2
    L8_2 = A2_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
L0_1.capture = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.CustomRP
  L0_2 = L0_2.FrameCapture
  L1_2 = L0_2
  L0_2 = L0_2.GetTarget
  return L0_2(L1_2)
end
L0_1.get_capture_result = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = L0_1.get_frame_capture_manager
  L3_2 = L3_2()
  if L3_2 then
    L5_2 = L3_2
    L4_2 = L3_2.ReleaseCaptureFrame
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
    L5_2 = L3_2
    L4_2 = L3_2.CaptureFrame
    L6_2 = A0_2
    L7_2 = A1_2
    L8_2 = A2_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.CustomRP
    L4_2 = L4_2.FrameCapture
    L5_2 = L4_2
    L4_2 = L4_2.GetTarget
    return L4_2(L5_2)
  end
end
L0_1.get_cur_frame_texture = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.get_frame_capture_manager
  L1_2 = L1_2()
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.ReleaseCaptureFrame
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.release_capture_frame = L1_1
return L0_1
