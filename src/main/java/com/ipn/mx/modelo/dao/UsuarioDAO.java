/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ipn.mx.modelo.dao;

/**
 *
 * @author Iikt
 */
public class UsuarioDAO {

    private static final String SQL_INSERT = "{ call spInsertarUsuario(?, ?, ?, ?, ?, ?, ?) }";
    private static final String SQL_UPDATE = "{ call spActualizarUsuario(?, ?, ?, ?, ?, ?, ?, ?) }";
    private static final String SQL_DELETE = "{ call spBorrarUsuario(?) }";
    private static final String SQL_SELECT = "{ call spVerUsuario(?) }";
    private static final String SQL_SELECT_ALL = "{ call spMostrarUsuarios() }";
    
    
}
