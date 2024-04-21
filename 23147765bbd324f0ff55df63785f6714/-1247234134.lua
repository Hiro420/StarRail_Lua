local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MiniGamePage.ActivityMonopolyMiniGameGuessResultPageBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MonopolyModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityMonopolyMiniGameGuessResultPage"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyMiniGameGuessResultPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
end
L1_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L0_1.GameInfo
  L3_2 = L2_2
  L2_2 = L2_2.GetGuessData
  L4_2 = A1_2.GuessID
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._guess_data = L2_2
  L2_2 = A1_2.WinnerID
  A0_2._winner_id = L2_2
  L2_2 = A0_2._guess_data
  L3_2 = L2_2
  L2_2 = L2_2.GetPlayerBetCount
  L4_2 = A0_2._winner_id
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2 == 0
  A0_2._is_lose = L2_2
  A0_2._item_count = 0
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A1_2.ItemDisplayDatas
  L2_2 = L2_2(L3_2)
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2._item_count
    L9_2 = L7_2.Count
    L8_2 = L8_2 + L9_2
    A0_2._item_count = L8_2
  end
end
L1_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_btn_bg
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_record
  L4_2 = A0_2._on_btn_record
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._guess_data
  L2_2 = L1_2
  L1_2 = L1_2.ClearBetCount
  L1_2(L2_2)
end
L1_1._on_unload = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._is_lose
  if L1_2 then
    L1_2 = "MonopolyMiniGameGuessAShowLose"
    if L1_2 then
      goto lbl_8
    end
  end
  L1_2 = "MonopolyMiniGameGuessAShow"
  ::lbl_8::
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayFromBegin
  L3_2 = A0_2._binder
  L3_2 = L3_2.anim
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MonopolyGuessPlayerConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._winner_id
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2.async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img
  L6_2 = L2_2.IconPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.Name
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_count
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A0_2._guess_data
  L6_2 = L5_2
  L5_2 = L5_2.GetPlayerBetCount
  L7_2 = A0_2._winner_id
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_result
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A0_2._item_count
  L3_2(L4_2, L5_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ActivityMonopoly.MiniGamePage.ActivityMonopolyMiniGameGuessRecordDialog"
  L3_2 = A0_2._guess_data
  L1_2(L2_2, L3_2)
end
L1_1._on_btn_record = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._on_btn_bg = L2_1
return L1_1
