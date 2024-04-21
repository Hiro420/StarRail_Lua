local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.CommonIntroduceDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CommonIntroduceDialog"
L2_1 = "Ui.UIController"
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.CommonIntroduceDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.set_data
  L1_2(L2_2)
  A0_2._pause_game = true
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2.intro_id = nil
end
L0_1.set_data = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2.intro_id = A1_2
  A0_2._custom_title = A2_2
  A0_2._custom_content = A3_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.close_btn
  L4_2 = A0_2.on_close_btn
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.bg_btn
  L4_2 = A0_2.on_close_btn
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L1_2.verticalNormalizedPosition = 1
  L2_2 = A0_2
  L1_2 = A0_2.show_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_custom_data
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_short_cut_hint_panel
    L2_3 = 33
    L3_3 = A0_2._binder
    L3_3 = L3_3.scroll_rect
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1.on_close_btn = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.title_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_title = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.content_sdf_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_content = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.title_text
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_title_with_text = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.content_sdf_text
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_content_with_text = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.intro_id
  if L1_2 == nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.IntroDataExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2.intro_id
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.setup_title
  L4_2 = L1_2.Title
  L2_2(L3_2, L4_2)
  L2_2 = OVERSEA_BUILD
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_content
    L4_2 = L1_2.Desc_Os
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.setup_content
    L4_2 = L1_2.Desc
    L2_2(L3_2, L4_2)
  end
end
L0_1.show_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._custom_title
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.title_text
    L2_2 = L1_2
    L1_2 = L1_2.SetCustomizedText
    L3_2 = A0_2._custom_title
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._custom_content
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.content_sdf_text
    L2_2 = L1_2
    L1_2 = L1_2.SetCustomizedText
    L3_2 = A0_2._custom_content
    L1_2(L2_2, L3_2)
  end
end
L0_1._show_custom_data = L1_1
return L0_1
