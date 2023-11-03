import 'package:flutter/material.dart';
import 'package:diacritic/diacritic.dart';
import 'package:les_randonneurs_draceniens_client_administratif/model/adherent.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/tailorMadeWidgets/englobe_widgets.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/containerWidgets/responsive_view.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_text.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/date_picker.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_container_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_buttom_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_text_form_field.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_form_field_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_form_field_validator.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_dropdown_button.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_dropdown_button_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_buttom_event.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles_factory.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_form_field_event.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_dropdown_button_content.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_dropdown_button_event.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/tailorMadeWidgets/custom_separator.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/containerWidgets/percentage_double_container.dart';
import 'package:les_randonneurs_draceniens_client_administratif/model/date.dart';




class PageGestionsAdhesionsEnCours extends StatefulWidget {
  const PageGestionsAdhesionsEnCours({super.key});
  @override
  State<PageGestionsAdhesionsEnCours> createState() => _PageGestionsAdhesionsEnCours();
}

class _PageGestionsAdhesionsEnCours extends State<PageGestionsAdhesionsEnCours> {

  //Déclaration des arguments customTextFormField
  final CustomTextFormFieldStyle customTextFormFieldStyle1 = StyleFactory.createCustomTextFormFieldStyleBasic();
  final CustomTextFormFieldEvent customTextFormFieldEvent1 = CustomTextFormFieldEvent();
  final CustomTextFormFieldValidator customTextFormFieldValidator1 = CustomTextFormFieldValidator();
  final controller1 = TextEditingController();

  final CustomTextFormFieldStyle customTextFormFieldStyle2 = StyleFactory.createCustomTextFormFieldStyleBasic();
  final CustomTextFormFieldEvent customTextFormFieldEvent2 = CustomTextFormFieldEvent();
  final CustomTextFormFieldValidator customTextFormFieldValidator2 = CustomTextFormFieldValidator();
  final controller2 = TextEditingController();

  
  final _formKey = GlobalKey<FormState>();

  //Déclaration des arguments customContainer
  final CustomContainerStyle customContainerStyle = CustomContainerStyle();
  final CustomContainerStyle customContainerStyle2 = StyleFactory.createCustomContainerStyleSpace();

  //Déclaration des arguments customText
  final CustomTextStyle titleStyle = StyleFactory.createCustomTextStyleTitle();
  final CustomTextStyle subTitle1Style = StyleFactory.createCustomTextStyleSubTitle();
  final CustomTextStyle subTitle2Style = StyleFactory.createCustomTextStyleSubTitle();
  final CustomTextStyle subTitle3Style = StyleFactory.createCustomTextStyleSubTitle();
  final CustomTextStyle subTitle4Style = StyleFactory.createCustomTextStyleSubTitle();
  final CustomTextStyle subTitle5Style = StyleFactory.createCustomTextStyleSubTitle();
  final CustomTextStyle buttonValidator = CustomTextStyle();

  //Déclaration des arguments customTextButtom
  final CustomTextButtomStyle textButtomValidatorStyle = StyleFactory.createCustomTextButtomStyleBasic();
  final CustomTextButtomEvent textButtomValidatorEvent = CustomTextButtomEvent();
  final CustomTextButtomEvent customButtomHeadEvent = CustomTextButtomEvent();

  //Déclaration des arguments customTextFormField
  final CustomTextFormFieldStyle textFormNameStyle = StyleFactory.createCustomTextFormFieldStyleBasic();
  final CustomTextFormFieldEvent textFormNameEvent = CustomTextFormFieldEvent();
  final CustomTextFormFieldValidator textFormNameValidator = CustomTextFormFieldValidator();
  final textFormNameController = TextEditingController();

  final CustomTextFormFieldStyle textFormFirstNameStyle = StyleFactory.createCustomTextFormFieldStyleBasic();
  final CustomTextFormFieldValidator textFormFirstNameValidator = CustomTextFormFieldValidator();
  final CustomTextFormFieldEvent textFormFirstNameEvent = CustomTextFormFieldEvent();
  final textFormFirstNameController = TextEditingController();

  final CustomTextFormFieldStyle textFormCityStyle = StyleFactory.createCustomTextFormFieldStyleBasic();
  final CustomTextFormFieldValidator textFormCityValidator = CustomTextFormFieldValidator();
  final CustomTextFormFieldEvent textFormCityEvent = CustomTextFormFieldEvent();
  final textFormCityController = TextEditingController();

  final CustomTextFormFieldStyle textFormRegionStyle = StyleFactory.createCustomTextFormFieldStyleBasic();
  final CustomTextFormFieldValidator textFormRegionValidator = CustomTextFormFieldValidator();
  final CustomTextFormFieldEvent textFormRegionEvent = CustomTextFormFieldEvent();
  final textFormRegionController = TextEditingController();

  final CustomTextFormFieldStyle textFormNameGuestStyle = StyleFactory.createCustomTextFormFieldStyleBasic();
  final CustomTextFormFieldEvent textFormNameGuestEvent = CustomTextFormFieldEvent();
  final CustomTextFormFieldValidator textFormNameGuestValidator = CustomTextFormFieldValidator();
  final textFormNameGuestController = TextEditingController();

  final CustomTextFormFieldStyle textFormFirstNameGuestStyle = StyleFactory.createCustomTextFormFieldStyleBasic();
  final CustomTextFormFieldValidator textFormFirstNameGuestValidator = CustomTextFormFieldValidator();
  final CustomTextFormFieldEvent textFormFirstNameGuestEvent = CustomTextFormFieldEvent();
  final textFormFirstNameGuestController = TextEditingController();

  final CustomTextFormFieldStyle textFormNumVoieStyle = StyleFactory.createCustomTextFormFieldStyleBasic();
  final CustomTextFormFieldEvent textFormNumVoieEvent = CustomTextFormFieldEvent();
  final CustomTextFormFieldValidator textFormNumVoieValidator = CustomTextFormFieldValidator();
  final textFormNumVoieController = TextEditingController();

  final CustomTextFormFieldStyle textFormNumCommuneStyle = StyleFactory.createCustomTextFormFieldStyleBasic();
  final CustomTextFormFieldValidator textFormNumCommuneValidator = CustomTextFormFieldValidator();
  final CustomTextFormFieldEvent textFormNumCommuneEvent = CustomTextFormFieldEvent();
  final textFormNumCommuneController = TextEditingController();

  final CustomTextFormFieldStyle textFormCodeNatureVoieStyle = StyleFactory.createCustomTextFormFieldStyleBasic();
  final CustomTextFormFieldEvent textFormCodeNatureVoieEvent = CustomTextFormFieldEvent();
  final CustomTextFormFieldValidator textFormCodeNatureVoieValidator = CustomTextFormFieldValidator();
  final textFormCodeNatureVoieController = TextEditingController();

  final CustomTextFormFieldStyle textFormLibelleVoieStyle = StyleFactory.createCustomTextFormFieldStyleBasic();
  final CustomTextFormFieldValidator textFormLibelleVoieValidator = CustomTextFormFieldValidator();
  final CustomTextFormFieldEvent textFormLibelleVoieEvent = CustomTextFormFieldEvent();
  final textFormLibelleVoieController = TextEditingController();

  final CustomTextFormFieldStyle textFormTelStyle = StyleFactory.createCustomTextFormFieldStyleBasic();
  final CustomTextFormFieldValidator textFormTelValidator = CustomTextFormFieldValidator();
  final CustomTextFormFieldEvent textFormTelEvent = CustomTextFormFieldEvent();
  final textFormTelController = TextEditingController();

  final CustomTextFormFieldStyle textFormMailStyle = StyleFactory.createCustomTextFormFieldStyleBasic();
  final CustomTextFormFieldValidator textFormMailValidator = CustomTextFormFieldValidator();
  final CustomTextFormFieldEvent textFormMailEvent = CustomTextFormFieldEvent();
  final textFormMailController = TextEditingController();

  final CustomTextFormFieldStyle textFormTypeLicenceStyle = StyleFactory.createCustomTextFormFieldStyleBasic();
  final CustomTextFormFieldValidator textFormTypeLicenceValidator = CustomTextFormFieldValidator();
  final CustomTextFormFieldEvent textFormTypeLicenceEvent = CustomTextFormFieldEvent();
  final textFormTypeLicenceController = TextEditingController();

  final CustomTextFormFieldStyle textFormNomLicenceStyle = StyleFactory.createCustomTextFormFieldStyleBasic();
  final CustomTextFormFieldValidator textFormNomLicenceValidator = CustomTextFormFieldValidator();
  final CustomTextFormFieldEvent textFormNomLicenceEvent = CustomTextFormFieldEvent();
  final textFormNomLicenceController = TextEditingController();

  final CustomTextFormFieldStyle textFormPrixLicenceStyle = StyleFactory.createCustomTextFormFieldStyleBasic();
  final CustomTextFormFieldValidator textFormPrixLicenceValidator = CustomTextFormFieldValidator();
  final CustomTextFormFieldEvent textFormPrixLicenceEvent = CustomTextFormFieldEvent();
  final textFormPrixLicenceController = TextEditingController();

  final CustomTextFormFieldStyle textFormPartFFRPLicenceStyle = StyleFactory.createCustomTextFormFieldStyleBasic();
  final CustomTextFormFieldValidator textFormPartFFRPLicenceValidator = CustomTextFormFieldValidator();
  final CustomTextFormFieldEvent textFormPartFFRPLicenceEvent = CustomTextFormFieldEvent();
  final textFormPartFFRPLicenceController = TextEditingController();

  final CustomTextFormFieldStyle textFormMontantChequeStyle = StyleFactory.createCustomTextFormFieldStyleBasic();
  final CustomTextFormFieldValidator textFormMontantChequeValidator = CustomTextFormFieldValidator();
  final CustomTextFormFieldEvent textFormMontantChequeEvent = CustomTextFormFieldEvent();
  final textFormMontantChequeController = TextEditingController();

  final CustomTextFormFieldStyle textFormMontantLiquideStyle = StyleFactory.createCustomTextFormFieldStyleBasic();
  final CustomTextFormFieldValidator textFormMontantLiquideValidator = CustomTextFormFieldValidator();
  final CustomTextFormFieldEvent textFormMontantLiquideEvent = CustomTextFormFieldEvent();
  final textFormMontantLiquideController = TextEditingController();

  final CustomTextFormFieldStyle textFormBoutiqueEtRevueStyle = StyleFactory.createCustomTextFormFieldStyleBasic();
  final CustomTextFormFieldValidator textFormBoutiqueEtRevueValidator = CustomTextFormFieldValidator();
  final CustomTextFormFieldEvent textFormBoutiqueEtRevueEvent = CustomTextFormFieldEvent();
  final textFormBoutiqueEtRevueController = TextEditingController();

   final CustomTextFormFieldStyle textFormNumberGuestStyle = StyleFactory.createCustomTextFormFieldStyleBasic();
  final CustomTextFormFieldValidator textFormNumberGuestValidator = CustomTextFormFieldValidator();
  final CustomTextFormFieldEvent textFormNumberGuestEvent = CustomTextFormFieldEvent();
  final textFormNumberGuestController = TextEditingController();

  //Déclaration des arguments customDropdownButtom
  final CustomDropdownButtonStyle dropdownButtonCiviliteStyle = CustomDropdownButtonStyle();
  final CustomDropdownButtonContent dropdownButtonCiviliteContent = CustomDropdownButtonContent();
  final CustomDropdownButtonEvent dropdownButtonCiviliteEvent = CustomDropdownButtonEvent();

  final Date date1 = Date(jours: 1, mois: 1, annee: 1900);
  final Date date2 = Date(jours: 1, mois: 1, annee: 1900);
  final Date date3 = Date(jours: 1, mois: 1, annee: 1900);


  List<Adherent> adherents = [];
  //final _formKey = GlobalKey<FormState>();
  List<Adherent> baseDonnees = [
      Adherent(id: 0,nom: "Martin", prenom: "Gabriel", civilite: "xxx"),
      Adherent(id: 1,nom: "Bernard", prenom: "Léo", civilite: "yyy"),
      Adherent(id: 2,nom: "Thomas", prenom: "Raphael", civilite: "zzz"),
      Adherent(id: 3,nom: "Petit", prenom: "Louis", civilite: "xxx"),
      Adherent(id: 4,nom: "Robert", prenom: "Mael", civilite: "yyy"),
      Adherent(id: 5,nom: "Richard", prenom: "Arthur", civilite: "zzz"),
      Adherent(id: 6,nom: "Durand", prenom: "Jules", civilite: "xxx"),
      Adherent(id: 7,nom: "Dubois", prenom: "Noah", civilite: "yyy"),
      Adherent(id: 8,nom: "Moreau", prenom: "Adam", civilite: "zzz"),
      Adherent(id: 9,nom: "Laurent", prenom: "Lucas", civilite: "zzz"),
    ];

   void validator()  {
    if (_formKey.currentState!.validate()){
    }
  }
  

  @override
  void initState() {
    super.initState();

    adherents=get();

    trie();

      customTextFormFieldStyle1
        .setLabelText("Nom de famille")
        .setHintText('Entrez un nom de famille'); 
      customTextFormFieldStyle2
        .setLabelText("Prénom")
        .setHintText('Entrez un prénom'); 

      customTextFormFieldEvent1
        .setOnChanged(() {trie();setState(() {});});
      customTextFormFieldEvent2
        .setOnChanged(() {trie();setState(() {});});


       //Setting des arguments customText
    titleStyle
      .setContent("Ajouter adhérents");
    subTitle1Style
      .setContent("Identité de l'adhérent");
    subTitle2Style
      .setContent("Personne à contacter en cas d'urgences");
    subTitle3Style
      .setContent("Coordonnées");
    subTitle4Style
      .setContent("Contacts");
    subTitle5Style
      .setContent("Informations licence");
    buttonValidator
      .setContent("Valider");

    //Setting des arguments customTextButtom
    textButtomValidatorStyle
      .setCustomTextStyle(buttonValidator);
    textButtomValidatorEvent
      .setOnPressed((){validator();});
    customButtomHeadEvent
      .setOnPressed((){Navigator.pop(context);});

    //Setting des arguments customTextFormField
    textFormNameStyle
      .setLabelText("Nom de famille")
      .setHintText('Entrez le nom de famille du nouveau adhèrent');  
    textFormFirstNameStyle
      .setLabelText("Prénom")
      .setHintText('Entrez le prénom du nouveau adhèrent');
    textFormCityStyle
    .setLabelText("Nom ville")
    .setHintText("Entrez le nom de la ville");
    textFormRegionStyle
    .setLabelText("Numéro département")
    .setHintText("Entrez le numéro de département");
    textFormNameGuestStyle
      .setLabelText("Nom de famille")
      .setHintText('Entrez le nom de famille du contact');  
    textFormFirstNameGuestStyle
      .setLabelText("Prénom")
      .setHintText('Entrez le prénom du contact');
    textFormNumCommuneStyle
      .setLabelText("Numéro de commune")
      .setHintText('Entrez le numéro de commune');
    textFormNumVoieStyle
      .setLabelText("Numéro de voie")
      .setHintText('Entrez le numéro de voie');
    textFormLibelleVoieStyle
      .setLabelText("Nom de la voie")
      .setHintText('Entrez le nom de la voie');
    textFormCodeNatureVoieStyle
      .setLabelText("Type de voie")
      .setHintText('Entrez le type de voie');
    textFormTelStyle
      .setLabelText("Numéro de téléphone")
      .setHintText('Entrez un numéro de téléphone');
    textFormMailStyle
      .setLabelText("Mail")
      .setHintText('Entrez un mail');
    textFormNumberGuestStyle
      .setLabelText("Numéro de téléphone");

    textFormTypeLicenceStyle
      .setLabelText("Type de licence")
      .setHintText('');
    textFormNomLicenceStyle
      .setLabelText("Nom de la licence")
      .setHintText('');
    textFormPrixLicenceStyle
      .setLabelText("Prix de la licence")
      .setHintText('');
    textFormPartFFRPLicenceStyle
      .setLabelText("Part FFRP Licence")
      .setHintText('');
    textFormMontantChequeStyle
      .setLabelText("Montant cheque")
      .setHintText('');
    textFormMontantLiquideStyle
      .setLabelText("Montant liquide")
      .setHintText('');
    textFormBoutiqueEtRevueStyle
      .setLabelText("Boutique te revue")
      .setHintText('');

    textFormNameValidator;
    textFormFirstNameValidator;
    textFormNameGuestValidator;
    textFormFirstNameGuestValidator;

    //Setting des arguments customDropdownButton  
    dropdownButtonCiviliteContent
      .setItems(["Madame","Monsieur"])
      .setDropdownValue("Monsieur");
    dropdownButtonCiviliteEvent
      .setOnChanged((p0) {
        dropdownButtonCiviliteContent.setDropdownValue(p0.toString());
        setState(() {});
      });

  }
  
  List<Adherent> get(){
    return  List.from(baseDonnees);
  }
  void upgrade(List<Adherent> x){
    baseDonnees=List.from(x);
  }

  void trie(){
    
    RegExp regExp1 = RegExp(r"^"+removeDiacritics(controller1.value.text.toLowerCase())+r"(.*)");
    RegExp regExp2 = RegExp(r"^"+removeDiacritics(controller2.value.text.toLowerCase())+r"(.*)");
      
    adherents.clear();

    for (Adherent i in baseDonnees){
      if(regExp1.hasMatch(removeDiacritics(i.nom.toLowerCase())) && regExp2.hasMatch(removeDiacritics(i.prenom.toLowerCase()))){
        adherents.add(i);
      }
      
    }

  }

  List<Widget> makeElt(){
    List<Widget> list = [];
    
    list.add(
      Column(children: [
          const Text("Outil de recherche"),
          
             Row(
            children: [
              Flexible(
                child: 
              CustomTextFormField(
                customTextFormFieldStyle: customTextFormFieldStyle1,
                customTextFormFieldValidator: customTextFormFieldValidator1,
                customTextFormFieldEvent: customTextFormFieldEvent1,
                controller: controller1)),
              Flexible(
                child: CustomTextFormField(
                customTextFormFieldStyle: customTextFormFieldStyle2,
                customTextFormFieldValidator: customTextFormFieldValidator2,
                customTextFormFieldEvent: customTextFormFieldEvent2,
                controller: controller2))            ],
          
          ),
          IconButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
            ),
            icon: const Icon(Icons.add),
            onPressed: (){showDataAlert();},
          ),
        ],
        )
      
    );

    for(int i=0 ; i<adherents.length;i++){
      list.add(
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 203, 202, 202),
            border: Border.all(
              width: 1
            ),
          ),
          margin: const EdgeInsets.all(2),
          child: Row(
            children: [
              Expanded(child:Text(adherents[i].nom)),
              Expanded(child:Text(adherents[i].prenom)),
                Row(
                  children: [
                    IconButton(
                      onPressed: (){showDataAlert(adherent: adherents[i]);},
                      icon: const Icon(Icons.edit)),
                    IconButton(
                      onPressed: (){deleteElt(i);}, 
                      icon: const  Icon(Icons.delete)),
                  ],
                )
            ],
          ),
        )
      );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EnglobeWidgets(
        child: Form(
          key: _formKey,
          child: ResponsiveView(
            children: makeElt()
          )
        )
      )
    );
  }


void deleteElt(int i){
  for (Adherent ii in adherents){
    if(ii.id == adherents[i].id){
      adherents.remove(ii);
      upgrade(adherents);
      setState(() {});
      break;
    }
  }
}

  showDataAlert({Adherent? adherent}) {
  showDialog(
    context: context,
    builder: (context) {
      
    if(adherent!=null){
      textFormNameController.text = adherent.prenom;
      textFormFirstNameController.text = adherent.nom;
    }
    else{
      textFormNameController.text="";
      textFormFirstNameController.text="";
    }


      return AlertDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0,),),),
        contentPadding: const EdgeInsets.only(top: 10.0,),
        title: const Text(
          "ID",
          style: TextStyle(fontSize: 24.0),),
        actions: [TextButton(onPressed: (){Navigator.pop(context);}, child: const Text("Quiter"))],
        content: SizedBox(
          height: 800,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  child:SingleChildScrollView(child: Column(
                    children: [
                      const CustomSeparator(),
                      Center(
                        child: CustomText(
                        customTextStyle:subTitle1Style)),
                      PercentageDoubleContainer(
                        child1: CustomTextFormField(
                          customTextFormFieldStyle: textFormNameStyle,
                          customTextFormFieldValidator: textFormNameValidator,
                          customTextFormFieldEvent: textFormNameEvent,
                          controller: textFormNameController),
                        child2: CustomTextFormField(
                          customTextFormFieldStyle: textFormFirstNameStyle,
                          customTextFormFieldValidator: textFormFirstNameValidator,
                          customTextFormFieldEvent: textFormFirstNameEvent,
                          controller: textFormFirstNameController),),
                      CustomDropdownButton(
                        customDropdownButtonStyle: dropdownButtonCiviliteStyle,
                        customDropdownButtonContent:dropdownButtonCiviliteContent,
                        customDropdownButtonEvent: dropdownButtonCiviliteEvent,),
                      DatePicker(
                        title: "Date de naissance",
                        date: date1,
                      ),
                      const CustomSeparator(),
                      Center(
                        child: CustomText(
                        customTextStyle:subTitle3Style)),
                      CustomTextFormField(
                        customTextFormFieldStyle: textFormNumVoieStyle,
                        customTextFormFieldValidator: textFormNumVoieValidator,
                        customTextFormFieldEvent: textFormNumVoieEvent,
                        controller: textFormNumVoieController),
                      CustomTextFormField(
                        customTextFormFieldStyle: textFormLibelleVoieStyle,
                        customTextFormFieldValidator: textFormLibelleVoieValidator,
                        customTextFormFieldEvent: textFormLibelleVoieEvent,
                        controller: textFormLibelleVoieController),
                      CustomTextFormField(
                        customTextFormFieldStyle: textFormCodeNatureVoieStyle,
                        customTextFormFieldValidator: textFormCodeNatureVoieValidator,
                        customTextFormFieldEvent: textFormCodeNatureVoieEvent,
                        controller: textFormCodeNatureVoieController),
                      CustomTextFormField(
                        customTextFormFieldStyle: textFormCityStyle,
                        customTextFormFieldValidator: textFormCityValidator,
                        customTextFormFieldEvent: textFormCityEvent,
                        controller: textFormCityController),
                      CustomTextFormField(
                        customTextFormFieldStyle: textFormNumCommuneStyle,
                        customTextFormFieldValidator: textFormNumCommuneValidator,
                        customTextFormFieldEvent: textFormNumCommuneEvent,
                        controller: textFormNumCommuneController),
                      CustomTextFormField(
                        customTextFormFieldStyle: textFormRegionStyle,
                        customTextFormFieldValidator: textFormRegionValidator,
                        customTextFormFieldEvent: textFormRegionEvent,
                        controller: textFormRegionController),
                      const CustomSeparator(),
                      
                      Center(
                        child: CustomText(
                        customTextStyle:subTitle4Style)),
                      PercentageDoubleContainer(
                        child1: CustomTextFormField(
                          customTextFormFieldStyle: textFormTelStyle,
                          customTextFormFieldValidator: textFormTelValidator,
                          customTextFormFieldEvent: textFormTelEvent,
                          controller: textFormTelController),
                        child2: CustomTextFormField(
                          customTextFormFieldStyle: textFormMailStyle,
                          customTextFormFieldValidator: textFormMailValidator,
                          customTextFormFieldEvent: textFormMailEvent,
                          controller: textFormMailController),),
                      const CustomSeparator(),
                      Center(
                        child: CustomText(
                        customTextStyle:subTitle5Style)),
                      CustomTextFormField(
                        customTextFormFieldStyle: textFormTypeLicenceStyle,
                        customTextFormFieldValidator: textFormTypeLicenceValidator,
                        customTextFormFieldEvent: textFormTypeLicenceEvent,
                        controller: textFormTypeLicenceController),
                      CustomTextFormField(
                        customTextFormFieldStyle: textFormNomLicenceStyle,
                        customTextFormFieldValidator: textFormNomLicenceValidator,
                        customTextFormFieldEvent: textFormNomLicenceEvent,
                        controller: textFormNomLicenceController),
                      CustomTextFormField(
                        customTextFormFieldStyle: textFormPrixLicenceStyle,
                        customTextFormFieldValidator: textFormPrixLicenceValidator,
                        customTextFormFieldEvent: textFormPrixLicenceEvent,
                        controller: textFormPrixLicenceController),
                      CustomTextFormField(
                        customTextFormFieldStyle: textFormPartFFRPLicenceStyle,
                        customTextFormFieldValidator: textFormPartFFRPLicenceValidator,
                        customTextFormFieldEvent: textFormPartFFRPLicenceEvent,
                        controller: textFormPartFFRPLicenceController),
                      CustomTextFormField(
                        customTextFormFieldStyle: textFormMontantChequeStyle,
                        customTextFormFieldValidator: textFormMontantChequeValidator,
                        customTextFormFieldEvent: textFormMontantChequeEvent,
                        controller: textFormMontantChequeController),
                      CustomTextFormField(
                        customTextFormFieldStyle: textFormMontantLiquideStyle,
                        customTextFormFieldValidator: textFormMontantLiquideValidator,
                        customTextFormFieldEvent: textFormMontantLiquideEvent,
                        controller: textFormMontantLiquideController),
                      CustomTextFormField(
                        customTextFormFieldStyle: textFormBoutiqueEtRevueStyle,
                        customTextFormFieldValidator: textFormBoutiqueEtRevueValidator,
                        customTextFormFieldEvent: textFormBoutiqueEtRevueEvent,
                        controller: textFormBoutiqueEtRevueController),
                      const CustomSeparator(),
                      DatePicker(
                        title: "Date de première adhérence",
                        date: date2,
                      ),
                      const CustomSeparator(),
                      DatePicker(
                        title: "Date du dernier certificat médical",
                        date: date3,
                      ),
                      const CustomSeparator(),
                      Center(
                        child: CustomText(
                        customTextStyle:subTitle2Style)),
                      PercentageDoubleContainer(
                        child1: CustomTextFormField(
                          customTextFormFieldStyle: textFormNameGuestStyle,
                          customTextFormFieldValidator: textFormNameGuestValidator,
                          customTextFormFieldEvent: textFormNameGuestEvent,
                          controller: textFormNameGuestController),
                        child2: CustomTextFormField(
                          customTextFormFieldStyle: textFormFirstNameGuestStyle,
                          customTextFormFieldValidator: textFormFirstNameGuestValidator,
                          customTextFormFieldEvent: textFormFirstNameGuestEvent,
                          controller: textFormFirstNameGuestController),),
                      CustomTextFormField(
                        customTextFormFieldStyle: textFormNumberGuestStyle,
                        customTextFormFieldValidator: textFormNumberGuestValidator,
                        customTextFormFieldEvent: textFormNumberGuestEvent,
                        controller: textFormNumberGuestController),
                      ],),),),
                    Container(
                      width: double.infinity,
                      height: 60,
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          if(adherent!=null){ // si l'adherent est entrain d'etre modifier
                            adherent.nom = textFormNameController.text;
                            adherent.prenom = textFormFirstNameController.text;
                            setState((){});
                          }
                          else{ // si l'adherent est entrain d'etre crée
                            adherents.add(Adherent(nom: textFormNameController.text, prenom: textFormFirstNameController.text, civilite: "x"));
                            upgrade(adherents);
                            setState(() {});
                          }
                          Navigator.of(context).pop();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        // fixedSize: Size(250, 50),
                        ),
                        child: const Text(
                          "Confirmer",
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child:  const Text('Note'),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt'
                        ' ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud'
                        ' exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
                        ' Duis aute irure dolor in reprehenderit in voluptate velit esse cillum '
                        'dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,'
                        ' sunt in culpa qui officia deserunt mollit anim id est laborum.',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );});}






}