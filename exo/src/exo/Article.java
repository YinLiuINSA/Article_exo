package exo;

import java.util.ArrayList;
import java.util.Vector;

public class Article {
	public Article(String titre, int ID, String contenu, String auteur) {
		this.titre = titre;
		this.ID = ID;
		this.auteur = auteur;
		this.commentaires = new ArrayList<>();
		this.contenu = contenu;
	}
	public String getAuteur() {
		return auteur;
	}
	public void setAuteur(String auteur) {
		this.auteur = auteur;
	}
	public String getContenu() {
		return contenu;
	}
	public void setContenu(String contenu) {
		this.contenu = contenu;
	}
	public ArrayList<Commentaire> getCommentaires() {
		return commentaires;
	}
	public void setCommentaires(ArrayList<Commentaire> commentaires) {
		this.commentaires = commentaires;
	}
	private String titre;
	public String getTitre() {
		return titre;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
	public int getID() {
		return ID;
	}
	private int ID;
	private String auteur;
	private String contenu;
	private ArrayList<Commentaire> commentaires;
}
