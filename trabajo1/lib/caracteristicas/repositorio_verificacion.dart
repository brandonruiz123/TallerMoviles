import 'package:trabajo1/dominio/nick_formado.dart';
import 'package:fpdart/fpdart.dart';
import 'package:xml/xml.dart';
import 'package:trabajo1/dominio/problemas.dart';
import '../dominio/registro_usuario.dart';

abstract class RepositorioVerificacion{
  Either<Problema,RegistroUsuario> obtenerRegistroUsuario(NickFormado nick);
  //RegistroUsuario obtenerRegistroUsuario(NickFormado nick);
}

class RepositorioPruebasVerificacion extends RepositorioVerificacion{
  final String benthor = """<?xml version="1.0" encoding="utf-8"?>
                    <user id="1212123" name="Benthor" termsofuse="https://boardgamegeek.com/xmlapi/termsofuse">
										<firstname value="Benthor" />
                    <lastname value="" />			
                    <avatarlink value="N/A" />			
                    <yearregistered value="2012" />			
                    <lastlogin value="" />			
                    <stateorprovince value="" />			
                    <country value="" />			
                    <webaddress value="" />			
                    <xboxaccount value="" />			
                    <wiiaccount value="" />			
                    <psnaccount value="" />			
                    <battlenetaccount value="" />			
                    <steamaccount value="" />			
                    <traderating value="362" />	
				</user>
 """;
  @override
  Either<Problema,RegistroUsuario> obtenerRegistroUsuario(NickFormado nick){
    final documento = XmlDocument.parse(benthor);
    final nodo  = documento.findAllElements('yearregistered');
    final String valor = nodo.first.getAttribute('value') ?? "";
    if (valor.isEmpty){
      return Left(UsuarioNoRegistrado());
    }
    String nombre = documento.findAllElements('firstname').first.getAttribute('value') ?? '';
    String pais = documento.findAllElements('country').first.getAttribute('value') ?? '';
    String estado = documento.findAllElements('stateorprovince').first.getAttribute('value') ?? '';
    String apellidos = documento.findAllElements('lastname').first.getAttribute('value') ?? '';
    return Right(RegistroUsuario.constructor(propuestaAnio: valor, propuestaNombre: nombre, propuestaApellidos: apellidos, propuestaPais: pais, propuestaEstado: estado));

    throw UnimplementedError();
  }
}