//
//  MockInformation.swift
//  OnBoardingBiBanking
//
//  Created by Danilo Hernandez on 25/09/23.
//

import Foundation
import SwiftUI

public struct MockInformation {
    public static var arrayView: [OnboardingView] = [
    
        OnboardingView(modelView: OnBoardingModel(backgroundColor: Color("color1"),colorActiveControl: .white, centerImage: [ImageInformation(image: "fondo1", width: 1, height: 0.80) , ImageInformation(image: "fondo1-2", width: 0.15, height: 0.13) ], downText: [OnboardingText(text: "Qué gusto que estés aquí.", font: .bold(Font.system(size: 24))(), foregroundColor: Color.yellow, alignText: .center), OnboardingText(text: "Mantener tu negocio funcionando nunca \nhabía sido tan sencillo con Banca en Línea Empresarial.",font: .system(size: 14), foregroundColor: Color.white, alignText: .center)], actionsButtons: [
            ButtonsOnBoarding(icon: Image("right"), position: .second, location: .tabView, buttonType: .nextPage),
            
            ButtonsOnBoarding(text: OnboardingText(text: "OMITIR", font: .bold(Font.system(size: 16))(), foregroundColor: .white, alignText: .center), position: .second, location: .top, buttonType: .skip)]), tag: 0)
    ,
        OnboardingView(modelView: OnBoardingModel(backgroundColor: .white, centerImage: [ImageInformation(image: "fondo2", width: 1, height: 0.90)], downText: [OnboardingText(text: "Envía fondos a socios comerciales, \n proveedores y colaboradores a cualquier \n banco del sistema con solo unos clics en tu \n dispositivo.", font: .system(size: 16), foregroundColor: Color("color1"), alignText: .center)], actionsButtons: [
            ButtonsOnBoarding( icon: Image("left"), iconTint: Color.white, position: .first, location:  .tabView, buttonType: .previousPage ),
            ButtonsOnBoarding(icon: Image("right"), position: .second, location: .tabView, buttonType: .nextPage),
            ButtonsOnBoarding(text: OnboardingText(text: "OMITIR", font: .bold(Font.system(size: 16))(), foregroundColor: Color("color1"), alignText: .center), position: .second, location: .top, buttonType: .skip)
        ]), tag: 1),
    
        OnboardingView(modelView: OnBoardingModel(backgroundColor: .white, centerImage: [ImageInformation(image: "fondo3", width: 1, height: 0.90)], downText: [OnboardingText(text: "Realiza tus pagos de servicios directamente \n desde Bi Banking App fácilmente.", font: .system(size: 16), foregroundColor: Color("color1"), alignText: .center)], actionsButtons: [
            ButtonsOnBoarding( icon: Image("left"), iconTint: Color.white, position: .first, location: .tabView, buttonType: .previousPage),
            ButtonsOnBoarding(icon: Image("right"), position: .second, location: .tabView,buttonType: .nextPage),
            ButtonsOnBoarding(text: OnboardingText(text: "OMITIR", font: .bold(Font.system(size: 16))(), foregroundColor: Color("color1"), alignText: .center), position: .second, location: .top, buttonType: .skip)]), tag: 2),
        OnboardingView(modelView: OnBoardingModel(backgroundColor: .white, centerImage: [ImageInformation(image: "fondo4", width: 1, height: 0.90)], downText: [OnboardingText(text: "Simplifica tus finanzas, consulta tus cuentas y \n autoriza operaciones. Lo mejor de nuestros \n servicios, integrado para ti.", font: .system(size: 16), foregroundColor: Color("color1"), alignText: .center)], actionsButtons: [
            ButtonsOnBoarding( icon: Image("left"), iconTint: Color.white, position: .first, location: .tabView, buttonType: .previousPage),
            ButtonsOnBoarding(icon: Image("right"), position: .second, location: .tabView, buttonType: .nextPage) ,
            ButtonsOnBoarding(text: OnboardingText(text: "OMITIR", font: .bold(Font.system(size: 16))(), foregroundColor: Color("color1"), alignText: .center), position: .second, location: .top, buttonType: .skip)
        ]), tag: 3),
        OnboardingView(modelView: OnBoardingModel(backgroundColor: .white, centerImage: [ImageInformation(image: "fondo5", width: 1, height: 0.90)], downText: [OnboardingText(text: "Desde transferencias ágiles hasta pagos de \n servicios sin complicaciones, Bi Banking App,\n tu aliado en agilidad y control financiero.", font: .system(size: 16), foregroundColor: Color("color1"), alignText: .center)], actionsButtons: [
            ButtonsOnBoarding( icon: Image("left"), iconTint: Color.white, position: .first, location: .tabView, buttonType: .previousPage),
            ButtonsOnBoarding(text: OnboardingText(text: "¡Comencemos!", font: .bold(Font.system(size: 16))(), foregroundColor: .black, alignText: .center), backgroundColor: .blue, cornerRadius: 16, position: .center, location: .inferior,  action: StartModule.start)
        ]), tag: 4),
]
}
struct StartModule {
   static func start() {
        print("COMENZAMOS!")
    }
}
