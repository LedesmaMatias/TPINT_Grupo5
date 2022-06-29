<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clientes ABM</title>

</head>

<%@include file="Decoraciones/librerias.jsp" %>
<%@include file="Decoraciones/header.jsp" %>




  
  <div class="row justify-content-center   ">
 
   <div class="col-10 mt-2 rounded border bg-light ">
 
	 <div class="row">
	 
	 
	     <div class="col-12 mt-2">
	     
	    <% 
	    String titulo = "Editar";
	    String Action = "Clientes_Alta.html";
	    if(request.getParameter("btnAgregar")!=null) 
	    {
	    	titulo= "Alta";
	    	Action ="Clientes_Alta.html";
	    }
	    %>
	     	<h2 class="font-weight-bold text-center text-info"> Clientes <%=titulo %> </h2>
	     	
	     	
	     </div>
	 
	     <div class="col-12 mt-2">
	     
	      <div class="col-12 mt-2">
     	<label class="font-weight-bold text-center text-danger  "> 
     	${ErroMsj}    
     	</label>
     </div>
	     
<form action="<%=Action %>" method="get" >
  <div class="form-row justify-content-center">
    <div class="form-group col-md-4">
      <label for="txtNombre">Nombre</label>
      <input type="text" class="form-control" name="txtNombre" placeholder="Nombre" value="${cliente.nombre}">
    </div>
    <div class="form-group col-md-4">
      <label for="txtApellido">Apellido</label>
      <input type="text" class="form-control" name="txtApellido" placeholder="Apellido" value="${cliente.apellido}">
    </div>
   </div>
   
    <div class="form-row justify-content-center">
 
      <div class="form-group col-md-4">
      <label for="txtDNI">DNI</label>
      <input type="text" class="form-control" name="txtDNI" placeholder="DNI">
    </div>
    <div class="form-group col-md-4">
      <label for="cboNacio">Nacionalidad</label>
      <select name="cboNacio" class="form-control">
        <option selected value=1>Argentina</option>
        <option>...</option>
      </select>
    </div>
 
    </div>
  
    <div class="form-row justify-content-center">

   
  
  <div class="form-group col-md-4">
    <label for="txtDireccion">Direccion</label>
    <input type="text" class="form-control" name="txtDireccion" placeholder="Direccion">
  </div>
  
   <div class="form-group col-md-4">
    <label for="txtLocalidad">Localidad</label>
    <input type="text" class="form-control" name="txtLocalidad" placeholder="Localidad">
  </div>
   </div>

  
    <div class="form-row justify-content-center">

     <div class="form-group col-md-4">
    <label for="txtTelefono">Telefono</label>
    <input type="text" class="form-control" name="txtTelefono" placeholder="Telefono">
  </div>
  
  <div class="form-group col-md-4">
    <label for="txteMail">Email</label>
    <input type="text" class="form-control" name="txteMail" placeholder="email@emil.com">
  </div>
   
   </div>
   
      <div class="form-row justify-content-center">

    
   <div class="form-group col-md-4">
    <label for="txtNac">Fecha de nacimiento</label>
    <input type="text" class="form-control" name="txtNac" placeholder="Fecha. Nac.">
  </div>
<div class="form-group col-md-4">
    </div>

   </div>
   
    <div class="form-row justify-content-center">

     <div class="form-group col-md-4">
     <button type="submit" class="btn btn-danger ">Cancelar</button>
  </div>
   <div class="form-group col-md-4">
   
      
    <button type="submit" class="btn btn-primary">Aceptar</button>
    
    
  </div>

   </div>
   
 
  
</form>

         
	     
	     </div>
	     
		 </div>
	</div>

 </div>
 
 

<%@include file="Decoraciones/Footer.jsp" %>


</body>
</html>
