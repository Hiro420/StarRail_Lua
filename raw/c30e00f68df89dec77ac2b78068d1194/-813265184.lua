local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyPackSpecialOrderTargetInfoRowPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._target_data = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A1_2.Row
  A0_2._target_data = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_desc
  L5_2 = L2_2.SpecialOrderFinishDesc
  L6_2 = L2_2.Param1
  L7_2 = L2_2.Param2
  L8_2 = L2_2.Param3
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_type_icon
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L5_2 = ...
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_desc = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._target_data
  L1_2 = L1_2.FinishType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.SpecialOrderFinishTypeEnum
  L2_2 = L2_2.SpecifiedTypeGoodsNumGreater
  L1_2 = L1_2 == L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_type_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._target_data
    L2_2 = L2_2.Row
    L2_2 = L2_2.Param2
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_type_icon
    L7_2 = A0_2
    L6_2 = A0_2._get_type_icon_path
    L8_2 = L2_2
    L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
end
L0_1._setup_type_icon = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AlleyPackGoodsTypeEnum
  L2_2 = L2_2.Small
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L2_2 = "SpriteOutput/Quest/Alley/AlleyCargoTypeIcon/AlleyCargoTypeIconS.png"
    return L2_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AlleyPackGoodsTypeEnum
  L2_2 = L2_2.Medium
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L2_2 = "SpriteOutput/Quest/Alley/AlleyCargoTypeIcon/AlleyCargoTypeIconM.png"
    return L2_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AlleyPackGoodsTypeEnum
  L2_2 = L2_2.Large
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L2_2 = "SpriteOutput/Quest/Alley/AlleyCargoTypeIcon/AlleyCargoTypeIconL.png"
    return L2_2
  end
end
L0_1._get_type_icon_path = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if not A1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_root
    L4_2 = L3_2
    L3_2 = L3_2.Play
    L5_2 = "SpecialOrderTargetInfoRow_Unmatch"
    L3_2(L4_2, L5_2)
  else
    if A2_2 then
      L3_2 = A0_2._finish_last_refresh
      A2_2 = not L3_2
    end
    if A2_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.anim_root
      L4_2 = L3_2
      L3_2 = L3_2.Play
      L5_2 = "SpecialOrderTargetInfoRow_ToMatch"
      L3_2(L4_2, L5_2)
    else
      L3_2 = A0_2._binder
      L3_2 = L3_2.anim_root
      L4_2 = L3_2
      L3_2 = L3_2.Play
      L5_2 = "SpecialOrderTargetInfoRow_Match"
      L3_2(L4_2, L5_2)
    end
  end
  A0_2._finish_last_refresh = A1_2
end
L0_1.setup_status = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._target_data
  L2_2 = L2_2.FinishType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.SpecialOrderFinishTypeEnum
  L3_2 = L3_2.GoodsNumGreater
  L2_2 = L2_2 == L3_2
  if L2_2 then
    if A1_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.text_cur_progress
      L4_2 = L3_2
      L3_2 = L3_2.SetCustomizedText
      L5_2 = A0_2._target_data
      L5_2 = L5_2.TotalProgress
      L3_2(L4_2, L5_2)
    else
      L3_2 = A0_2._binder
      L3_2 = L3_2.text_cur_progress
      L4_2 = L3_2
      L3_2 = L3_2.SetCustomizedText
      L5_2 = A0_2._target_data
      L5_2 = L5_2.CurProgress
      L3_2(L4_2, L5_2)
    end
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_total_progress
    L4_2 = L3_2
    L3_2 = L3_2.SetCustomizedText
    L5_2 = A0_2._target_data
    L5_2 = L5_2.TotalProgress
    L3_2(L4_2, L5_2)
  else
    if A1_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.text_cur_progress
      L4_2 = L3_2
      L3_2 = L3_2.SetCustomizedText
      L5_2 = 1
      L3_2(L4_2, L5_2)
    else
      L3_2 = A0_2._binder
      L3_2 = L3_2.text_cur_progress
      L4_2 = L3_2
      L3_2 = L3_2.SetCustomizedText
      L5_2 = 0
      L3_2(L4_2, L5_2)
    end
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_total_progress
    L4_2 = L3_2
    L3_2 = L3_2.SetCustomizedText
    L5_2 = 1
    L3_2(L4_2, L5_2)
  end
end
L0_1.refresh_progress = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_progress
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_show_progress = L1_1
return L0_1
