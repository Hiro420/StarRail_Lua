local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.Museum.MuseumUpgradeToastDialogBinder"
L0_1(L1_1)
L0_1 = "MuseumBusinessCycleToast"
L1_1 = "UIText_Activity_Museum_Upgrade_Success"
L2_1 = "UIText_Activity_Museum_Upgrade_RenewPoint"
L3_1 = "UIText_Activity_Museum_Upgrade_StatsA"
L4_1 = "UIText_Activity_Museum_Upgrade_StatsB"
L5_1 = "UIText_Activity_Museum_Upgrade_StatsC"
L6_1 = G
L6_1 = L6_1.Class
L7_1 = "MuseumUpgradeToastDialog"
L8_1 = G
L8_1 = L8_1.UIController
L6_1 = L6_1(L7_1, L8_1)
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MuseumUpgradeToastDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L6_1.ctor = L7_1
function L7_1(A0_2, A1_2)
  A0_2._stat_type = A1_2
end
L6_1.init = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.TextmapStatic
  L1_2 = L1_2.GetText
  L2_2 = L6_1._get_stat_textid
  L3_2 = A0_2._stat_type
  L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_toast
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_1
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L2_2
  L2_2 = L2_2.GetClip
  L4_2 = L0_1
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2.length
  L4_2 = A0_2
  L3_2 = A0_2._add_count_down_timer
  L5_2 = A0_2._on_anim_time_out
  L6_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2._exit_timer = L3_2
  L3_2 = A0_2._exit_timer
  L4_2 = L3_2
  L3_2 = L3_2.reset
  L3_2(L4_2)
  L3_2 = A0_2._exit_timer
  L4_2 = L3_2
  L3_2 = L3_2.start
  L3_2(L4_2)
end
L6_1._setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L6_1._on_anim_time_out = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.StuffStats
  L1_2 = L1_2.Unknown
  if A0_2 == L1_2 then
    L1_2 = L2_1
    return L1_2
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.StuffStats
    L1_2 = L1_2.StatsA
    if A0_2 == L1_2 then
      L1_2 = L3_1
      return L1_2
    else
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.GameCore
      L1_2 = L1_2.StuffStats
      L1_2 = L1_2.StatsB
      if A0_2 == L1_2 then
        L1_2 = L4_1
        return L1_2
      else
        L1_2 = CS
        L1_2 = L1_2.RPG
        L1_2 = L1_2.GameCore
        L1_2 = L1_2.StuffStats
        L1_2 = L1_2.StatsC
        if A0_2 == L1_2 then
          L1_2 = L5_1
          return L1_2
        end
      end
    end
  end
  L1_2 = nil
  return L1_2
end
L6_1._get_stat_textid = L7_1
return L6_1
