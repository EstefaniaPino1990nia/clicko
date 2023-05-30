

<label for="Nombre">Nombre</label>
<input type="text" name="Nombre" value="{{ isset($empleado->Nombre)?$empleado->Nombre:'' }}" id="Nombre">
<br>

<label for="PrimerApellido">Primer apellido</label>
<input type="text" name="PrimerApellido" value="{{ isset($empleado->PrimerApellido)?$empleado->ApellidoPaterno:'' }}" id="PrimerApellido">
<br>

<label for="SegundoApellido">Segundo apellido</label>
<input type="text" name="SegundoApellido" value="{{ isset($empleado->SegundoApellido)?$empleado->SegundoApellido:'' }}" id="SegundoApellido">
<br>

<label for="Correo">Correo</label>
<input type="text" name="Correo" value="{{ isset($empleado->Correo)?$empleado->Correo:'' }}" id="Correo">
<br>

<label for="Foto">Foto</label>
@if(isset($empleado->Foto))
<img src="{{asset('storage').'/'.$empleado->Foto}}" width="100px" height="100px" alt="">
@endif
<input type="file" name="Foto" value="" id="Foto">
<br>

<input type="submit" value="Guardar datos">

<a href="{{url('empleado/')}}">Volver</a>
<br>


