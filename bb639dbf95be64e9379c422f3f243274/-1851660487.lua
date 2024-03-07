local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.PerformanceRecallModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "PerformanceRecallItemPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
  A0_2._recall_row = nil
  A0_2._is_unlocked = false
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.PerformanceRecallExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._recall_row = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ConditionCheckerUtil
  L2_2 = L2_2.DoCheckConditions
  L3_2 = A0_2._recall_row
  L3_2 = L3_2.UnlockCondition
  L2_2 = L2_2(L3_2)
  A0_2._is_unlocked = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_view
  L2_2(L3_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._is_unlocked
  if L3_2 then
    L3_2 = A0_2._recall_row
    L3_2 = L3_2.Name
    if L3_2 then
      goto lbl_12
    end
  end
  L3_2 = "UIText_Rogue_HandBook_UnKownTitle"
  ::lbl_12::
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.PlayerModule
  L1_2 = L1_2.PlayerData
  L1_2 = L1_2.HeroAvatarInfoData
  L3_2 = L1_2
  L2_2 = L1_2.GetCurrentHeroGender
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GenderType
  L3_2 = L3_2.GENDER_WOMAN
  if L2_2 == L3_2 then
    L3_2 = A0_2._recall_row
    L3_2 = L3_2.ImgPath_F
    if L3_2 then
      goto lbl_36
    end
  end
  L3_2 = A0_2._recall_row
  L3_2 = L3_2.ImgPath
  ::lbl_36::
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetInteractable
  L6_2 = A0_2._is_unlocked
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_unlocked
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A0_2._is_unlocked
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_locked
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A0_2._is_unlocked
  L6_2 = not L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_is_video
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A0_2._is_unlocked
  if L6_2 then
    L6_2 = A0_2._recall_row
    L6_2 = L6_2.isVideo
  end
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.RedDotModule
  L4_2 = L4_2.Instance
  L5_2 = L4_2
  L4_2 = L4_2.bind_reddot
  L6_2 = "PerformanceRecallItem"
  L7_2 = A0_2._recall_row
  L7_2 = L7_2.ID
  L8_2 = A0_2
  L9_2 = A0_2._binder
  L9_2 = L9_2.reddot
  L9_2 = L9_2.transform
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_unlocked
  if not L1_2 then
    return
  end
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.StartPerformanceRecall
  L3_2 = A0_2._recall_row
  L3_2 = L3_2.ID
  L1_2(L2_2, L3_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.UpdateSeen
  L3_2 = A0_2._recall_row
  L3_2 = L3_2.ID
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_btn_click = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  L1_2 = L1_2.gameObject
  return L1_2
end
L1_1.get_first_selected_object = L2_1
return L1_1
