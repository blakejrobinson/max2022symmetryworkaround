function customMirror x: false y: false z: false =
(
	undo "Slice workaround" on
	(
		modPanel.addModToSelection (SliceModifier ()) ui:on
		modSlice = modPanel.getCurrentObject() 
		modPanel.addModToSelection (symmetry ()) ui:on
		modSymm  = modPanel.getCurrentObject() 
			
		modSlice.name = "Mirror Slice"
		modSymm.name = "Mirror Symmetry"
		modSlice.PlanarX = x
		modSlice.PlanarY = y
		modSlice.Planarz = z
		modSlice.Slice_Type = 2
		modSymm.PlanarX = x
		modSymm.PlanarY = y
		modSymm.PlanarZ = z			
		modSymm.slice = 0
	)
)

macroScript customMirrorX
category:"Unrobotic Tools"
tooltip:"Manual Symmetry along the X axis"
buttontext:"Manual Symmetry along the X axis"
(
	customMirror x:true y:false z:false
)
macroScript customMirrorY
category:"Unrobotic Tools"
tooltip:"Manual Symmetry along the Y axis"
buttontext:"Manual Symmetry along the Y axis"
(
	customMirror x:false y:true z:false
)
macroScript customMirrorZ
category:"Unrobotic Tools"
tooltip:"Manual Symmetry along the Z axis"
buttontext:"Manual Symmetry along the Z axis"
(
	customMirror x:false y:false z:true
)
