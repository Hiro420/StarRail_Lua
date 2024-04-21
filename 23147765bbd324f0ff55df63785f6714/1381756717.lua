local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MiniGamePage.ActivityMonopolyMiniGameGuessPageBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.ConstValueClientExcelTable
L0_1 = L0_1.GetData
L1_1 = "Monopoly_Activity_Game_Guess_MoreInfo_CostValue"
L0_1 = L0_1(L1_1)
L0_1 = L0_1.Value
L0_1 = L0_1.UintValue
L1_1 = "MonopolyMiniGameBetCamMove"
L2_1 = "MonopolyMiniGameBetCamBack"
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.MonopolyModule
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "ActivityMonopolyMiniGameGuessPage"
L6_1 = G
L6_1 = L6_1.UIController
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyMiniGameGuessPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
  A0_2._chosen_player_id = 0
end
L4_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._game_data = A1_2
  L2_2 = L3_1.GameInfo
  L2_2 = L2_2.CurGuessData
  A0_2._guess_data = L2_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A0_2._guess_data
  L3_2 = L3_2.PlayerIDs
  L2_2 = L2_2(L3_2)
  A0_2._player_ids = L2_2
end
L4_1.init = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_listen
  L4_2 = A0_2._on_btn_listen
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = A0_2._on_btn_back
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_items
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.register_click_callback
    L8_2 = A0_2._on_click_item
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyGameGuessBought
  L4_2 = A0_2._on_monopoly_guess_bought
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyGameGuessChosen
  L4_2 = A0_2._on_monopoly_guess_chosen
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_top_bar
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = "ActivityMonopolyMainPage"
  L1_2(L2_2, L3_2)
end
L4_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_items_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_desc_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_chosen_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_confirm_btn
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_bought_view
  L1_2(L2_2)
end
L4_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_items
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._player_ids
    L6_2 = L6_2[L4_2]
    L7_2 = A0_2._guess_data
    L8_2 = L7_2
    L7_2 = L7_2.GetPlayerBetCount
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L9_2 = L5_2
    L8_2 = L5_2.setup_view
    L10_2 = L6_2
    L11_2 = L7_2
    L8_2(L9_2, L10_2, L11_2)
    L9_2 = L5_2
    L8_2 = L5_2.set_add_count
    L10_2 = 1
    L8_2(L9_2, L10_2)
  end
end
L4_1._setup_items_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_cost_count
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = L0_1
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.MonopolyUtils
  L1_2 = L1_2.GetMonopolyCurrencyID
  L1_2 = L1_2()
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2.async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_cost_icon
  L6_2 = L2_2.ItemIconPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = ipairs
  L4_2 = A0_2._binder
  L4_2 = L4_2.txts_desc
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2._player_ids
    L8_2 = L8_2[L6_2]
    L9_2 = L8_2 ~= nil
    L11_2 = L7_2
    L10_2 = L7_2.SafeSetActive
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
    if L9_2 then
      L10_2 = CS
      L10_2 = L10_2.RPG
      L10_2 = L10_2.GameCore
      L10_2 = L10_2.MonopolyGuessPlayerConfigExcelTable
      L10_2 = L10_2.GetData
      L11_2 = L8_2
      L10_2 = L10_2(L11_2)
      L12_2 = L7_2
      L11_2 = L7_2.SafeSetTextID
      L13_2 = L10_2.Desc
      L11_2(L12_2, L13_2)
    end
  end
end
L4_1._setup_desc_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_items
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._guess_data
    L6_2 = L6_2.PlayerIDs
    L7_2 = L4_2 - 1
    L6_2 = L6_2[L7_2]
    L8_2 = L5_2
    L7_2 = L5_2.set_to_add
    L9_2 = A0_2._chosen_player_id
    L9_2 = L6_2 == L9_2
    L7_2(L8_2, L9_2)
  end
end
L4_1._refresh_chosen_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L2_2 = A0_2._chosen_player_id
  L2_2 = L2_2 ~= 0
  L1_2.interactable = L2_2
end
L4_1._refresh_confirm_btn = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_cost
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._guess_data
  L3_2 = L3_2.HasBought
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L4_1._refresh_bought_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._chosen_player_id = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_chosen_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_confirm_btn
  L2_2(L3_2)
end
L4_1._on_click_item = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.SendGameGuessChoose
  L3_2 = A0_2._chosen_player_id
  L1_2(L2_2, L3_2)
end
L4_1._on_btn_confirm = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._guess_data
  L1_2 = L1_2.HasBought
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._show_desc
    L3_2 = true
    L1_2(L2_2, L3_2)
  else
    L1_2 = L3_1
    L2_2 = L1_2
    L1_2 = L1_2.SendGameGuessBuy
    L1_2(L2_2)
  end
end
L4_1._on_btn_listen = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_listen
    L2_2.interactable = false
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayFromBegin
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim
    L4_2 = L1_1
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_listen
    L2_2.interactable = true
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayFromBegin
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim
    L4_2 = L2_1
    L2_2(L3_2, L4_2)
  end
end
L4_1._show_desc = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._show_desc
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L4_1._on_btn_back = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_bought_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_desc
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L4_1._on_monopoly_guess_bought = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L4_1._on_monopoly_guess_chosen = L5_1
return L4_1
