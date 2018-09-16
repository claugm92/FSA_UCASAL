using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de noticias
/// </summary>
public class noticias
{
    public int          id;
    public string nombre;
    public string extension;
    public string titulo;
    public string cuerpo;
    public noticias(int id, string nombre, string extension, string titulo, string cuerpo)
    {
        this.id = id;
        this.nombre = nombre;
        this.extension = extension;
        this.titulo = titulo;
        this.cuerpo = cuerpo;
    }
}