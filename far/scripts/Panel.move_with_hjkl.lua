--Move the cursor around the active panel with hjkl, like in vim, on the condition that the Command Line is empty.
--Press i to insert something on the command line that begins with hjkl
--If the Panels are invisible these keys work like normal.

Macro {
	description="Move Left";
	area="Shell"; key="h";
	condition=function() return CmdLine.Empty and APanel.Visible end;
	action=function() Keys('Left') end;
}

Macro {
	description="Move Down";
	area="Shell"; key="j";
	condition=function() return CmdLine.Empty and APanel.Visible end;
	action=function() Keys('Down') end;
}

Macro {
	description="Move Up";
	area="Shell"; key="k";
	condition=function() return CmdLine.Empty and APanel.Visible end;
	action=function() Keys('Up') end;
}

Macro {
	description="Move Right";
	area="Shell"; key="l";
	condition=function() return CmdLine.Empty and APanel.Visible end;
	action=function() Keys('Right') end;
}

Macro {
	description="Input on Command Line";
	area="Shell"; key="i";
	condition=function() return CmdLine.Empty and APanel.Visible end;
	action=function() Keys("i ShiftLeft") end;
	--Presses i, then selects it. The next text that is typed replaces the i.
}
