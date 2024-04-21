local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonSNSUserIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonSNSUserIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusSNSMainAccountInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HeliobusModule
L1_1 = L1_1.HeliobusSNSData
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusCommonSNSUserIconPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusCommonSNSUserIconPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._user_icon_panel = L1_2
  L1_2 = A0_2._user_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_user_icon
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.HeliobusUserExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._user_row = L2_2
  L2_2 = A0_2._user_row
  if L2_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "HeliobusSNSMainAccountInfoPanel : \228\184\141\229\173\152\229\156\168UserId\228\184\186("
    L4_2 = A1_2
    L5_2 = ")\231\154\132SNS\231\148\168\230\136\183"
    L3_2 = L3_2 .. L4_2 .. L5_2
    L2_2(L3_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_user_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_account_info
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._user_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._user_row
  L3_2 = L3_2.HeliobusUserID
  L1_2(L2_2, L3_2)
end
L0_1._setup_user_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.HeliobusPhaseExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L1_1.PopPhase
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "HeliobusSNSMainAccountInfoPanel : \228\184\141\229\173\152\229\156\168\231\172\172("
    L4_2 = L1_1.PopPhase
    L5_2 = ")\233\152\182\230\174\181\228\186\186\230\176\148\231\173\137\231\186\167"
    L3_2 = L3_2 .. L4_2 .. L5_2
    L2_2(L3_2)
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.HeliobusPhaseExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_1.PopPhase
  L3_2 = L3_2 + 1
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_phase
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L1_2.HeliobusPhaseID
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_next_phase
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2 ~= nil
  L3_2(L4_2, L5_2)
  if L2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_next_phase
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = L2_2.HeliobusPhaseID
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_need_fans
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_Heliobus_NextPhase_NeedFans"
    L6_2 = L2_2.PhaseFans
    L7_2 = L1_1.Fans
    L6_2 = L6_2 - L7_2
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_need_fans
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_Heliobus_NextPhase_NeedFansFinish"
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.bar_progress
  L4_2 = G
  L4_2 = L4_2.HeliobusSNSUtils
  L4_2 = L4_2.get_pop_phase_fan_percent
  L5_2 = L1_1.PopPhase
  L6_2 = L1_1.Fans
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.value = L4_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_cur_fans
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = G
  L5_2 = L5_2.HeliobusSNSUtils
  L5_2 = L5_2.get_abbreviation_num_text
  L6_2 = L1_1.Fans
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_cur_posts
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = G
  L5_2 = L5_2.HeliobusSNSUtils
  L5_2 = L5_2.get_all_post_count_by_user_id
  L5_2, L6_2, L7_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._setup_account_info = L2_1
return L0_1
