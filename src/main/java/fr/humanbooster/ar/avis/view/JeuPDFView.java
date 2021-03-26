package fr.humanbooster.ar.avis.view;

import java.text.SimpleDateFormat;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.view.document.AbstractPdfView;

import com.lowagie.text.Cell;
import com.lowagie.text.Document;
import com.lowagie.text.Image;
import com.lowagie.text.PageSize;
import com.lowagie.text.Paragraph;
import com.lowagie.text.Table;
import com.lowagie.text.pdf.PdfWriter;

import fr.humanbooster.ar.avis.business.Jeu;
import fr.humanbooster.ar.avis.business.Plateforme;

public class JeuPDFView extends AbstractPdfView  {
	
	@Override
	protected void buildPdfDocument(Map<String, Object> model, Document document,
			PdfWriter writer, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		Jeu jeu = (Jeu) model.get("jeu");
		if (jeu.getFichier() != null) {
			Image image = Image.getInstance("src/main/webapp/" + jeu.getFichier().getUriImg());
			float scaler = ((document.getPageSize().getWidth() - document.leftMargin()
		               - document.rightMargin()) / image.getWidth()) * 100;
			image.scalePercent(scaler);
			float x = (PageSize.A4.getWidth() - image.getScaledWidth()) / 2;
			float y = (PageSize.A4.getHeight() - image.getScaledHeight()) / 2;
			image.setAbsolutePosition(x, y);
			document.add(image);
			document.newPage();
		}
		Table table = new Table(2);
		table.setBorder(0);
		table.setAlignment(1);
		table.setWidth(100f);
		table.setWidths(new int[] {1, 3});
		table.setSpacing(10f);
		table.addCell(cell("Nom"));
		table.addCell(cell(jeu.getNom()));
		table.addCell(cell("Description"));
		table.addCell(cell(jeu.getDescription()));
		table.addCell(cell("Date de sorite"));
		table.addCell(cell(new SimpleDateFormat("dd-MM-yyyy").format(jeu.getDateSortie())));
		table.addCell(cell("Modele économique"));
		table.addCell(cell(jeu.getModeleEconomique().getNom()));
		table.addCell(cell("Genre"));
		table.addCell(cell(jeu.getGenre().getNom()));
		table.addCell(cell("Editeur"));
		table.addCell(cell(jeu.getEditeur().getNom()));
		table.addCell(cell("Classification"));
		table.addCell(cell(jeu.getClassification().getNom()));
		table.addCell(cell("Plateformes"));
		String plat = null;
		for (Plateforme plateforme : jeu.getPlateformes()) {
			if (plat == null) {
				plat = plateforme.getNom();
			} else {
				plat += ", " + plateforme.getNom();
			}
		}
		table.addCell(cell(plat));
		document.add(table);
	}
	
	private Cell cell(String str) {
		Cell cell = new Cell();
		cell.setBorder(0);
		Paragraph paragraphe = new Paragraph(str);
		cell.add(paragraphe);
		return cell;
	}

}
