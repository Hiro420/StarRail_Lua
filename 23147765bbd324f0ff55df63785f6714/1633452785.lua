local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Adventure.NewSystemHintDialogBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.FuncUnlockPromptType
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "NewSystemHintDialog"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.NewSystemHintDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
end
L1_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._func_entrance_data = A1_2
  L2_2 = A1_2.FuncName
  A0_2._name = L2_2
  L2_2 = A1_2.UnlockDesc
  A0_2._desc = L2_2
  L2_2 = A1_2.Row
  L2_2 = L2_2.UnLockIconPath
  A0_2._icon_path = L2_2
  L2_2 = A1_2.Row
  L2_2 = L2_2.UnlockPrompt
  L3_2 = L0_1.Entrance
  if L2_2 == L3_2 then
    A0_2._type = 1
  else
    L2_2 = A1_2.Row
    L2_2 = L2_2.UnlockPrompt
    L3_2 = L0_1.Equipment
    if L2_2 == L3_2 then
      A0_2._type = 2
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.FuncEntranceConfigExcelTable
      L2_2 = L2_2.GetData
      L3_2 = A1_2.Row
      L3_2 = L3_2.ParentSystem
      L2_2 = L2_2(L3_2)
      L2_2 = L2_2.FuncName
      A0_2._parent_title_textid = L2_2
    else
      L2_2 = A1_2.Row
      L2_2 = L2_2.UnlockPrompt
      L3_2 = L0_1.Cocoon
      if L2_2 == L3_2 then
        A0_2._type = 3
      else
        L2_2 = A1_2.Row
        L2_2 = L2_2.UnlockPrompt
        L3_2 = L0_1.None
        if L2_2 == L3_2 then
          A0_2._type = 1
        end
      end
    end
  end
end
L1_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.system_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._type
  L3_2 = L3_2 == 1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.sub_system_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._type
  L3_2 = L3_2 == 2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.feature_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._type
  L3_2 = L3_2 == 3
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._type
  if L1_2 == 1 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_name
    A0_2._title_text = L1_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_desc
    A0_2._desc_text = L1_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.icon
    A0_2._icon_cmpt = L1_2
  else
    L1_2 = A0_2._type
    if L1_2 == 2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.sub_system_text_name
      A0_2._title_text = L1_2
      L1_2 = A0_2._binder
      L1_2 = L1_2.sub_system_text_desc
      A0_2._desc_text = L1_2
      L1_2 = A0_2._binder
      L1_2 = L1_2.sub_system_icon
      A0_2._icon_cmpt = L1_2
      L1_2 = A0_2._binder
      L1_2 = L1_2.sub_system_parent_title
      A0_2._parent_title = L1_2
    else
      L1_2 = A0_2._type
      if L1_2 == 3 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.feature_text_name
        A0_2._title_text = L1_2
        L1_2 = A0_2._binder
        L1_2 = L1_2.feature_text_desc
        A0_2._desc_text = L1_2
        L1_2 = A0_2._binder
        L1_2 = L1_2.feature_pic
        A0_2._icon_cmpt = L1_2
      end
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_btn_bg_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._icon_cmpt
  L4_2 = A0_2._icon_path
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.TextExtensions
  L1_2 = L1_2.SafeSetTextID
  L2_2 = A0_2._title_text
  L3_2 = A0_2._name
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.TextExtensions
  L1_2 = L1_2.SafeSetTextID
  L2_2 = A0_2._desc_text
  L3_2 = A0_2._desc
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._parent_title
  if L1_2 then
    L1_2 = A0_2._parent_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._parent_title_textid
    L1_2(L2_2, L3_2)
  end
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UINewSystemHintBegin
  L3_2 = A0_2._func_entrance_data
  L1_2(L2_2, L3_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._icon_path = nil
  A0_2._desc = nil
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UINewSystemHintEnd
  L3_2 = A0_2._func_entrance_data
  L1_2(L2_2, L3_2)
end
L1_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._on_btn_bg_click = L2_1
return L1_1
