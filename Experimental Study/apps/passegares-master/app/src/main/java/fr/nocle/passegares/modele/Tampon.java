package fr.nocle.passegares.modele;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import fr.nocle.passegares.outils.StringOutils;

/**
 * Created by jonathanmm on 02/09/16.
 */
public class Tampon {
    private long id;
    private long idGare;
    private Gare gare;
    private Date date;

    public Tampon(long id, long idGare, Date date)
    {
        super();
        initObj(id, idGare, date);
        this.gare = null;
    }

    public Tampon(long id, Gare gare, Date date)
    {
        super();
        initObj(id, gare.getId(), date);
        this.gare = gare;
    }

    public Tampon(long id, long idGare, String date)
    {
        super();
        SimpleDateFormat formatDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        try {
            initObj(id, idGare, formatDate.parse(date));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        this.gare = null;
    }

    public Tampon(long id, Gare gare, String date)
    {
        super();
        SimpleDateFormat formatDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        try {
            initObj(id, gare.getId(), formatDate.parse(date));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        this.gare = gare;
    }

    private void initObj(long id, long idGare, Date date)
    {
        this.id = id;
        this.idGare = idGare;
        this.date = date;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getIdGare() {
        return idGare;
    }

    public void setIdGare(long idGare) {
        this.idGare = idGare;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Gare getGare() {
        return gare;
    }

    public void setGare(Gare gare) {
        this.gare = gare;
    }
}
