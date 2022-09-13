import 'package:bloc2/Dominio/nick_formado.dart';
import 'package:bloc2/Dominio/registro_usuario.dart';

abstract class RepositorioVerificacion{
  RegistroUsario obtenerRegistroUsuario(NickFormado nick);
}

class RepositorioPruebasVerificacion extends RepositorioVerificacion{
  final String benthor  = """<?xml version="1.0" encoding="utf-8"?><user id="" name="" termsofuse="https://boardgamegeek.com/xmlapi/termsofuse">
				<firstname value="" />			<lastname value="" />			<avatarlink value="N/A" />			<yearregistered value="" />			<lastlogin value="" />			<stateorprovince value="" />			<country value="" />			<webaddress value="" />			<xboxaccount value="" />			<wiiaccount value="" />			<psnaccount value="" />			<battlenetaccount value="" />			<steamaccount value="" />			<traderating value="362" />	
				</user>""";
  @override
  RegistroUsario obtenerRegistroUsuario(NickFormado nick){
    throw UnimplementedError();
  }
}