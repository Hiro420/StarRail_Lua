local L0_1, L1_1
L0_1 = require
L1_1 = "Ui.UIUtils.UIFrameCaptureUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "ShareUtils"
L0_1 = L0_1(L1_1)
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2
  L8_2 = G
  L8_2 = L8_2.UIUtils
  L8_2 = L8_2.try_clear_selected_object_animator_state
  L8_2()
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.Client
  L8_2 = L8_2.GlobalVars
  L8_2 = L8_2.s_ModuleManager
  L8_2 = L8_2.ShareModule
  L9_2 = L8_2
  L8_2 = L8_2.GetShareFrameCapturePromise
  L8_2 = L8_2(L9_2)
  L9_2 = L8_2
  L8_2 = L8_2.ThenLuaActionOneParam
  function L10_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = G
    L1_3 = L1_3.new
    L2_3 = "Ui.Share.ShareDialog"
    L1_3 = L1_3(L2_3)
    L3_3 = L1_3
    L2_3 = L1_3.set_share_id
    L4_3 = A0_2
    L2_3(L3_3, L4_3)
    L3_3 = L1_3
    L2_3 = L1_3.set_result_texture
    L4_3 = A0_3
    L2_3(L3_3, L4_3)
    L3_3 = L1_3
    L2_3 = L1_3.set_share_reward
    L4_3 = A4_2
    L2_3(L3_3, L4_3)
    L3_3 = L1_3
    L2_3 = L1_3.set_report_source
    L4_3 = A5_2
    L2_3(L3_3, L4_3)
    L3_3 = L1_3
    L2_3 = L1_3.enable_save
    L4_3 = A6_2
    L4_3 = L4_3 == true
    L2_3(L3_3, L4_3)
    L3_3 = L1_3
    L2_3 = L1_3.set_override_sorting_order
    L4_3 = A7_2
    L2_3(L3_3, L4_3)
    L3_3 = L1_3
    L2_3 = L1_3.set_exit_callback
    function L4_3()
      local L0_4, L1_4, L2_4
      L0_4 = CS
      L0_4 = L0_4.RPG
      L0_4 = L0_4.Client
      L0_4 = L0_4.GlobalVars
      L0_4 = L0_4.s_ModuleManager
      L0_4 = L0_4.ShareModule
      L1_4 = L0_4
      L0_4 = L0_4.ReleaseShareCapturedFrame
      L0_4(L1_4)
      L0_4 = G
      L0_4 = L0_4.Utils
      L0_4 = L0_4.invoke_callback
      L1_4 = A1_2
      L2_4 = A3_2
      L0_4(L1_4, L2_4)
    end
    L2_3(L3_3, L4_3)
    L2_3 = A2_2
    if L2_3 then
      L2_3 = A2_2
      L3_3 = A3_2
      L2_3(L3_3)
    end
    L3_3 = L1_3
    L2_3 = L1_3.async_show
    L2_3(L3_3)
  end
  L8_2(L9_2, L10_2)
end
L0_1.ShareCurFrame = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = {}
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.GachaModule
  L5_2 = G
  L5_2 = L5_2.TextmapStatic
  L5_2 = L5_2.GetText
  L6_2 = "GachaShareRewardText"
  L7_2 = L4_2.ShareRewardNum
  L5_2 = L5_2(L6_2, L7_2)
  L3_2._textstr = L5_2
  L5_2 = L0_1.ShareCurFrame
  L6_2 = L4_2.ShareID
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = L3_2
  L11_2 = CS
  L11_2 = L11_2.RPG
  L11_2 = L11_2.Client
  L11_2 = L11_2.ShareSource
  L11_2 = L11_2.Gacha
  L12_2 = false
  L13_2 = 39
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
L0_1.ShareGacha = L1_1
return L0_1
