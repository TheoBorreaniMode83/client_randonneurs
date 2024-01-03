import 'dart:convert';
import 'dart:html' as html;

class GstDownloadFiles{

  static String makeCSV(List<List<dynamic>> matrice){
    String result="";
    for(int i = 0 ; i<matrice.length ; i++){
      for(int ii = 0 ; ii<matrice[0].length ; ii++){
        if(matrice[i][ii] is String){
          result=result+'"'+matrice[i][ii]+'"';
        }
        else{
          result=result+matrice[i][ii].toString();
        }
       

        if(ii!=matrice[0].length-1){
          result=result+',';
        }
        else{
          result=result+"\n";
        }
      }
    }
    return result;
  }

  /// Cette fonction télécharge chez l'utilisateurs un fichier du nom de [fileName] avec pour contenu [fileContent]
  static void downloadFile({required String fileName,required fileContent}) {
    // Création d'un objet Blob avec le contenu du fichier
    final blob = html.Blob([fileContent]);
    // Création d'un objet URL à partir du Blob
    final url = html.Url.createObjectUrlFromBlob(blob);
    // Création d'un élément d'ancrage (a) pour déclencher le téléchargement
    final anchor = html.AnchorElement(href: url)
      ..target = 'blank' // Ouvre le lien dans une nouvelle fenêtre/onglet
      ..download = fileName; // Nom du fichier lors du téléchargement
    // Ajout de l'élément d'ancrage à la page
    html.document.body?.children.add(anchor);
    // Simulation du clic sur l'élément d'ancrage pour déclencher le téléchargement
    anchor.click();
    //Suppression de l'élément d'ancrage après le téléchargement
    html.document.body?.children.remove(anchor);
    // Libération de l'URL créé à partir du Blob
    html.Url.revokeObjectUrl(url);
  }

}






