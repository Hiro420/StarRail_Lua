local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = "BtnMiniGameSpace_Unlock"
L1_1 = "BtnMiniGameSpace_FadeIn"
L2_1 = "BtnMiniGameSpace_FadeOut"
L3_1 = "BtnMiniGameSpace_Checked"
L4_1 = "BtnMiniGameSpace_Unchecked"
L5_1 = G
L5_1 = L5_1.Class
L6_1 = "RaidCollectionEntranceContentPanel"
L7_1 = G
L7_1 = L7_1.BasePanel
L5_1 = L5_1(L6_1, L7_1)
function L6_1(A0_2)
  local L1_2
  A0_2._is_checked = false
end
L5_1.ctor = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
end
L5_1._on_load = L6_1
function L6_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_handler = A2_2
end
L5_1.register_click_callback = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._is_checked = A1_2
  if A1_2 then
    L3_2 = L3_1
    if L3_2 then
      goto lbl_8
    end
  end
  L3_2 = L4_1
  ::lbl_8::
  if A2_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.UIAnimationUtils
    L4_2 = L4_2.PlayFromBegin
    L5_2 = A0_2._binder
    L5_2 = L5_2.animation_root
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  else
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.UIAnimationUtils
    L4_2 = L4_2.PlayToEnd
    L5_2 = A0_2._binder
    L5_2 = L5_2.animation_root
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L5_1.set_checked = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._data
  L1_2 = L1_2.Row
  L1_2 = L1_2.UnlockGroupID
  if L1_2 == 0 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ActivityRaidCollectionGroupExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.RaidCollectionList
  L3_2 = L2_2.Length
  L3_2 = L3_2 - 1
  L3_2 = L2_2[L3_2]
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.Prefs
  L4_2 = L4_2.User
  L5_2 = L4_2.RaidCollectionNewFinishedIDs
  L6_2 = L5_2
  L5_2 = L5_2.Contains
  L7_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.UIAnimationUtils
    L5_2 = L5_2.PlayToBegin
    L6_2 = A0_2._binder
    L6_2 = L6_2.animation_unlock
    L7_2 = L0_1
    L5_2(L6_2, L7_2)
  end
end
L5_1.prepare_play_unlock = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._data
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._data
  L2_2 = L2_2.Row
  L2_2 = L2_2.UnlockGroupID
  if L2_2 ~= 0 then
    L3_2 = A0_2._data
    L3_2 = L3_2.IsUnlocked
    if L3_2 then
      goto lbl_15
    end
  end
  do return end
  ::lbl_15::
  if A1_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIAnimationUtils
    L3_2 = L3_2.PlayFromBegin
    L4_2 = A0_2._binder
    L4_2 = L4_2.animation_unlock
    L5_2 = L0_1
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ActivityRaidCollectionGroupExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.RaidCollectionList
  L4_2 = L3_2.Length
  L4_2 = L4_2 - 1
  L4_2 = L3_2[L4_2]
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.Prefs
  L5_2 = L5_2.User
  L6_2 = L5_2.RaidCollectionNewFinishedIDs
  L7_2 = L6_2
  L6_2 = L6_2.Contains
  L8_2 = L4_2
  L6_2 = L6_2(L7_2, L8_2)
  if L6_2 then
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.UIAnimationUtils
    L6_2 = L6_2.PlayFromBegin
    L7_2 = A0_2._binder
    L7_2 = L7_2.animation_unlock
    L8_2 = L0_1
    L6_2(L7_2, L8_2)
    L6_2 = L5_2.RaidCollectionNewFinishedIDs
    L7_2 = L6_2
    L6_2 = L6_2.Remove
    L8_2 = L4_2
    L6_2(L7_2, L8_2)
  else
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.UIAnimationUtils
    L6_2 = L6_2.PlayToEnd
    L7_2 = A0_2._binder
    L7_2 = L7_2.animation_unlock
    L8_2 = L0_1
    L6_2(L7_2, L8_2)
  end
end
L5_1.try_play_unlock = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsUnlocked
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayToEnd
    L2_2 = A0_2._binder
    L2_2 = L2_2.animation_unlock
    L3_2 = L0_1
    L1_2(L2_2, L3_2)
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayToBegin
    L2_2 = A0_2._binder
    L2_2 = L2_2.animation_unlock
    L3_2 = L0_1
    L1_2(L2_2, L3_2)
  end
end
L5_1.reset_unlock = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation_root
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
end
L5_1.play_fade_out = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation_root
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L5_1.play_fade_in = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayToBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation_root
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L5_1.prepare_fade_in = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_checked
  L3_2 = A0_2._is_checked
  L1_2(L2_2, L3_2)
end
L5_1.reset_check = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayToEnd
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation_root
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L5_1.reset_fade = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A1_2 then
    if A2_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.animator
      L4_2 = L3_2
      L3_2 = L3_2.ResetTrigger
      L5_2 = "ShowOut"
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.animator
      L4_2 = L3_2
      L3_2 = L3_2.ResetTrigger
      L5_2 = "ShowIn"
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.animator
      L4_2 = L3_2
      L3_2 = L3_2.SetTrigger
      L5_2 = "ShowToDialog"
      L3_2(L4_2, L5_2)
    else
      L3_2 = A0_2._binder
      L3_2 = L3_2.animator
      L4_2 = L3_2
      L3_2 = L3_2.ResetTrigger
      L5_2 = "ShowOut"
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.animator
      L4_2 = L3_2
      L3_2 = L3_2.ResetTrigger
      L5_2 = "ShowToDialog"
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.animator
      L4_2 = L3_2
      L3_2 = L3_2.SetTrigger
      L5_2 = "ShowIn"
      L3_2(L4_2, L5_2)
    end
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.animator
    L4_2 = L3_2
    L3_2 = L3_2.ResetTrigger
    L5_2 = "ShowIn"
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.animator
    L4_2 = L3_2
    L3_2 = L3_2.ResetTrigger
    L5_2 = "ShowToDialog"
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.animator
    L4_2 = L3_2
    L3_2 = L3_2.SetTrigger
    L5_2 = "ShowOut"
    L3_2(L4_2, L5_2)
  end
end
L5_1.set_visible = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  A0_2._data = A1_2
  A0_2._index = A2_2
  L3_2 = ipairs
  L4_2 = A0_2._binder
  L4_2 = L4_2.txts_name
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.SafeSetTextID
    L10_2 = A0_2._data
    L10_2 = L10_2.Name
    L8_2(L9_2, L10_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.animator
  L4_2 = L3_2
  L3_2 = L3_2.SetBool
  L5_2 = "IsLock"
  L6_2 = A0_2._data
  L6_2 = L6_2.IsUnlocked
  L6_2 = not L6_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = ipairs
  L4_2 = A0_2._binder
  L4_2 = L4_2.nodes_finished
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.SafeSetActive
    L10_2 = A0_2._data
    L10_2 = L10_2.IsFinished
    L8_2(L9_2, L10_2)
  end
  L3_2 = ipairs
  L4_2 = A0_2._binder
  L4_2 = L4_2.nodes_not_finished
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.SafeSetActive
    L10_2 = A0_2._data
    L10_2 = L10_2.IsFinished
    L10_2 = not L10_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = A0_2._data
  L4_2 = L3_2
  L3_2 = L3_2.GetFinishedCollectionCount
  L3_2 = L3_2(L4_2)
  L4_2 = ipairs
  L5_2 = A0_2._binder
  L5_2 = L5_2.txts_progress
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L10_2 = L8_2
    L9_2 = L8_2.SafeSetTextID
    L11_2 = "UIText_ActivityPunkLord_Main_SearchLeftNum_Label"
    L12_2 = L3_2
    L13_2 = A0_2._data
    L13_2 = L13_2.AllCollectionIDs
    L13_2 = L13_2.Count
    L9_2(L10_2, L11_2, L12_2, L13_2)
  end
  L4_2 = G
  L4_2 = L4_2.RedDotModule
  L4_2 = L4_2.Instance
  L5_2 = L4_2
  L4_2 = L4_2.bind_reddot
  L6_2 = "RaidCollectionGroupNew"
  L7_2 = A0_2._data
  L7_2 = L7_2.ID
  L8_2 = A0_2
  L9_2 = A0_2._binder
  L9_2 = L9_2.node_reddot
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L5_1.setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._click_callback
  L3_2 = A0_2._click_handler
  L4_2 = A0_2._data
  L1_2(L2_2, L3_2, L4_2)
end
L5_1._on_btn_click = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L5_1.get_first_selected_object = L6_1
return L5_1
