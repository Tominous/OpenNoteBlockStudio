// nbt_tag_float(file, name, val)
//  file        GMBinaryFile file handle
//  name        Name of the tag
//  val         Value to write

// Writes a floating point tag to the file.
// Used when saving schematic files, which are in the NBT (Named Binary Tag) format by Notch.

// By David "Davve" Norgren for GMschematic - www.stuffbydavid.com

var file, name, val;
file = argument0;
name = argument1;
val = argument2;

external_call(global.dll_WriteByte, file, 5);
nbt_string_write(file, name);
external_call(global.dll_WriteFloat, file, val);