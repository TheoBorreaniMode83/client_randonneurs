import 'package:flutter/material.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_text.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_text_button.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_container_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_buttom_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_text_form_field.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_text_form_field_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_form_field_validator.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/standardWidgets/custom_dropdown_button.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles/standardWidgetsStyles/custom_dropdown_button_style.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_buttom_event.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/containerWidgets/responsive_view.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgetsStyles/styles_factory.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_text_form_field_event.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_dropdown_button_content.dart';
import 'package:les_randonneurs_draceniens_client_administratif/controller/customWidgetsControllers/custom_dropdown_button_event.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/tailorMadeWidgets/custom_text_form_date.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/tailorMadeWidgets/custom_separator.dart';
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/tailorMadeWidgets/custom_head.dart';
import 'package:les_randonneurs_draceniens_client_administratif/model/adherent.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:les_randonneurs_draceniens_client_administratif/view/customWidgets/containerWidgets/percentage_double_container.dart';





class PageAjouterAdherent extends StatefulWidget {
  const PageAjouterAdherent({super.key});
  @override
  State<PageAjouterAdherent> createState() => _PageAjouterAdherent();
}

class _PageAjouterAdherent extends State<PageAjouterAdherent> {
  

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

  @override
  void initState() {
    super.initState();

    //Setting des arguments customText
    titleStyle
      .setContent("Ajouter adhérents");
    subTitle1Style
      .setContent("Informations du nouvel adhérent");
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child:ResponsiveView(
          children:[

            CustomHead(
              customTextStyle: titleStyle, 
              customTextButtomEvent:customButtomHeadEvent,),
            const CustomSeparator(),
            Center(
              child: CustomText(
                customTextStyle:subTitle1Style)),
            CustomTextFormField(
              customTextFormFieldStyle: textFormNameStyle,
              customTextFormFieldValidator: textFormNameValidator,
              customTextFormFieldEvent: textFormNameEvent,
              controller: textFormNameController),
            CustomTextFormField(
              customTextFormFieldStyle: textFormFirstNameStyle,
              customTextFormFieldValidator: textFormFirstNameValidator,
              customTextFormFieldEvent: textFormFirstNameEvent,
              controller: textFormFirstNameController),
            CustomDropdownButton(
              customDropdownButtonStyle: dropdownButtonCiviliteStyle,
              customDropdownButtonContent:dropdownButtonCiviliteContent,
              customDropdownButtonEvent: dropdownButtonCiviliteEvent,),
            const CustomTextFormDate(title: "Date de naissance"),
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
                controller: textFormMailController),
            ),
            
            
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
            const CustomTextFormDate(title: "Date adhésion",),
            const CustomSeparator(),
            const CustomTextFormDate(title: "Sate certificat médical"),
            const CustomSeparator(),
            Center(
              child: CustomText(
              customTextStyle:subTitle2Style)),
            CustomTextFormField(
              customTextFormFieldStyle: textFormNameGuestStyle,
              customTextFormFieldValidator: textFormNameGuestValidator,
              customTextFormFieldEvent: textFormNameGuestEvent,
              controller: textFormNameGuestController),
            CustomTextFormField(
              customTextFormFieldStyle: textFormFirstNameGuestStyle,
              customTextFormFieldValidator: textFormFirstNameGuestValidator,
              customTextFormFieldEvent: textFormFirstNameGuestEvent,
              controller: textFormFirstNameGuestController),
            CustomTextFormField(
              customTextFormFieldStyle: textFormNumberGuestStyle,
              customTextFormFieldValidator: textFormNumberGuestValidator,
              customTextFormFieldEvent: textFormNumberGuestEvent,
              controller: textFormNumberGuestController),
            
            const CustomSeparator(),
            CustomTextButton(
              customTextButtomStyle: textButtomValidatorStyle,
              customTextButtomEvent: textButtomValidatorEvent),
          ],
        ),
      ),
    );
  }
  void validator()  {
    if (_formKey.currentState!.validate()){
      postRequest();
    }
  }


 Future<void> postRequest() async{
  String url = 'http://127.0.0.1:8000/create_adherent';

  Adherent adherent = Adherent(
    id: 878,
    nom: "Borréani",
    prenom: "Théo", 
    civilite: "Homme",
    joursNaissance:30,
    moisNaissance:07,
    anneeNaissance:2000,

    nomVille:"Draguignan",
    codeDepartement:"83",
    codeCommune:"300",
    codeNatureVoie:"av",
    numeroVoie:"2946",
    libeletVoie:"Des soldats",
    telephonePortable:"06XXXXXXXX",
    adresseMail:"XXXXXX@gmail.com",
    typeLicence:"154",
    nomLicence:"licence D",
    prixLicence:45.0,
    partFFRPLicence:78.0,
    montantCheque:45.0,
    montantLiquide:77.0,
    montantBoutiqueEtRevue:54,
    joursPremiereAdhesion:45,
    moisPremiereAdhesion:45,
    anneePremiereAdhesion:75,
    numeroLicence:"yhjgsdfeq",
    joursDernierCertificatMedical:54,
    moisDernierCertificatMedical:75,
    anneeDernierCertificatMedical:2009,
    statut:"en cours",
    nomContactUrgence:"Bertrant",
    prenomContactUrgence:"Arnaux",
    telephoneContactUrgence:"06XXXXXXXX"
  );

  Map map = {'name': 'eric','age':'20'};
  try{ 
    http.Response response = await http.post(Uri.parse(url), body: utf8.encode(jsonEncode(adherent.getJson())));
    print(response.body);
    }
  catch(e){
      print("ERREUR: $e");
  }
 }
      

}

  
 
