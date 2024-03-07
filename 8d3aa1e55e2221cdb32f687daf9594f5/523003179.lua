local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GotoGachaMainPageCommand"
L2_1 = "Logic.Goto.BaseCommand"
L0_1 = L0_1(L1_1, L2_1)
L0_1._text_already_open = "UIText_Goto_Error_01"
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.OOGONDGGKMI
  L3_2 = L2_2
  L2_2 = L2_2.BKHKEICCKNP
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.GachaModule
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_get_gacha_info
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L2_2.GetGachaInfoRspCallback = L3_2
end
L0_1.execute = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_async_show
    L3_2 = "Ui.Gacha.GachaMainPage"
    L2_2(L3_2)
  else
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = "GachaNoData"
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_get_gacha_info = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.GotoType
  L3_2 = GotoType2Page
  L3_2 = L3_2[L2_2]
  if L3_2 ~= nil then
    L3_2 = GotoType2Page
    L3_2 = L3_2[L2_2]
    if L3_2 ~= "" then
      goto lbl_19
    end
  end
  L3_2 = G
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.LogErrorFormat
  L4_2 = "The Page associated with type %d does not exist!"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = false
  L4_2 = ""
  do return L3_2, L4_2 end
  ::lbl_19::
  L3_2 = true
  L4_2 = ""
  return L3_2, L4_2
end
L0_1._check_goto_condition = L1_1
return L0_1
